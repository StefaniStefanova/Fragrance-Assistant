# Fragrance Assistant

A web-based perfume recommendation system that helps users explore fragrances based on their preferences.

## Overview

Fragrance Assistant is a web application developed using HTML, CSS, PHP, and MySQL. The project focuses on perfume discovery and personalized recommendations through a questionnaire-based interface.

## Features

- Interactive web interface for exploring perfumes.
- Perfume recommendation logic implemented in PHP.
- MySQL database for storing perfume information and fragrance notes.
- Perfume data organized by characteristics such as gender, occasion, intensity, and fragrance notes.
- Visual elements and imagery to support the perfume discovery experience.

## Technologies Used

- **HTML5** — page structure
- **CSS3** — styling and layout
- **PHP** — server-side logic and recommendations
- **MySQL** — relational database
- **Git & GitHub** — version control and project hosting

## Project Structure

```text
Fragrance-Assistant/
├── images/                # Images and visual assets
├── index.html             # Main page
├── your-parfume.html      # Perfume-related page
├── get_recommendation.php # Recommendation logic
├── style.css              # Main stylesheet
├── style1.css             # Additional styles
├── style2.css             # Additional styles
├── database-export.sql    # Database export
├── Documentаtion.pdf      # Project documentation
└── мрежа.drawio           # Network/system diagram
```

## Getting Started

### Prerequisites

- A local PHP development environment, such as [WampServer](https://www.wampserver.com/).
- MySQL or MariaDB.
- A web browser.

### Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/StefaniStefanova/Fragrance-Assistant.git
   ```

2. Place the project folder inside your local web server's web directory.

3. Create a MySQL database named `perfume_quiz`.

4. Import `database-export.sql` into the database using phpMyAdmin or another MySQL client.

5. Check the database connection settings in `get_recommendation.php` and update them if necessary for your local environment.

6. Start your local web server and MySQL service.

7. Open the project through your local server in a browser.

## Database

The database contains information about perfumes, fragrance notes, and the relationships between perfumes and their notes.

The SQL export is included in the repository to help recreate the database locally.

## Purpose

This project was developed as a web development project to practice front-end development, PHP, database integration, and recommendation logic.

## Future Improvements

- Improve the user experience and responsive design.
- Refine the recommendation algorithm.
- Add more perfume data and filtering options.
- Improve setup documentation and application configuration.

## Author

**Stefani Stefanova**
