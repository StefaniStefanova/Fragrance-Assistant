<?php
header('Content-Type: application/json');
ini_set('display_errors', 0);
error_reporting(E_ALL);

$host = 'localhost';
$dbname = 'perfume_quiz';
$user = 'root';
$pass = '';

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $data = json_decode(file_get_contents('php://input'), true);

    if (!$data) {
        echo json_encode(['error' => 'Не са получени данни от клиента.']);
        exit;
    }

    if (!isset($data['gender'], $data['occasion'], $data['intensity'], $data['scent'], $data['notes'])) {
        echo json_encode(['error' => 'Някои от параметрите липсват.']);
        exit;
    }

    $gender = $data['gender'];
    $occasion = $data['occasion'];
    $intensity = $data['intensity'];
    $scent_family = $data['scent'];
    $notes = $data['notes'];

    // Взимаме парфюми по основните критерии
    $sql = "SELECT p.id, p.name, p.description, p.image_url
            FROM perfumes p
            WHERE p.gender = :gender 
              AND p.occasion = :occasion 
              AND p.intensity = :intensity";

    $stmt = $conn->prepare($sql);
    $stmt->execute([
        ':gender' => $gender,
        ':occasion' => $occasion,
        ':intensity' => $intensity
    ]);

    $perfumes = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if (count($perfumes) === 0) {
        echo json_encode(['success' => false, 'message' => 'Няма парфюми по основните критерии.']);
        exit;
    }

    $bestPerfume = null;
    $maxMatches = 0;

    foreach ($perfumes as $perfume) {
        $perfumeId = $perfume['id'];

        $noteSql = "SELECT n.name, n.category
                    FROM perfume_notes pn
                    JOIN notes n ON pn.note_id = n.id
                    WHERE pn.perfume_id = ?";
        $noteStmt = $conn->prepare($noteSql);
        $noteStmt->execute([$perfumeId]);
        $perfumeNotes = $noteStmt->fetchAll(PDO::FETCH_ASSOC);

        $categories = array_column($perfumeNotes, 'category');

        if (in_array($scent_family, $categories)) {
            $noteNames = array_column($perfumeNotes, 'name');
            $commonNotes = array_intersect($notes, $noteNames);

            $matchCount = count($commonNotes);
            if ($matchCount > $maxMatches) {
                $maxMatches = $matchCount;
                $bestPerfume = $perfume;
                $bestPerfume['matched_notes'] = array_values($commonNotes);
            }
        }
    }

    if ($bestPerfume) {
        echo json_encode(['success' => true, 'perfume' => $bestPerfume]);
    } else {
        echo json_encode(['success' => false, 'message' => 'Няма парфюми с такава ноткова и ароматна съвместимост.']);
    }

} catch (PDOException $e) {
    echo json_encode(['success' => false, 'error' => $e->getMessage()]);
}
