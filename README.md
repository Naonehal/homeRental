# Homefront Rentals

<p align="center">
  <img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="200" alt="Laravel Logo">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Vue.js_Logo_2.svg/1200px-Vue.js_Logo_2.svg.png" width="150" alt="Vue.js Logo">
</p>

<p align="center">
  <a href="https://github.com/your-username/homeRental/actions">
    <img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status">
  </a>
  <!-- Add more badges here like license, last commit date if needed -->
</p>

## Project Description

"Homefront Rentals" is a dynamic web application designed to streamline the process of finding rental properties in the user's vicinity. Leveraging a robust tech stack including **Laravel** for the backend, **Vue.js** for the interactive frontend, **Tailwind CSS** for styling, and **MySQL** for the database, this platform offers an intuitive and user-friendly experience for both renters and property owners.

## Key Features

-   **Intuitive Property Search**: Allows users to easily search for rental properties based on various criteria (location, price, amenities, etc.).
-   **Detailed Property Listings**: Displays comprehensive information about each property, including photos, descriptions, and contact details.
-   **User Authentication**: Secure registration and login functionality for both renters and property owners.
-   **Responsive Design**: Provides a consistent and optimal user experience across all devices.
-   **Image Upload and Management**: Supports uploading property images using compressorjs, as seen in your `package.json`
-   **Interactive Carousels**: Showcases property images using `swiper` and `vue-slick-carousel`.

## Tech Stack

-   **Backend**: [Laravel](https://laravel.com/) (PHP Framework)
-   **Frontend**: [Vue.js](https://vuejs.org/) (JavaScript Framework)
-   **Styling**: [Tailwind CSS](https://tailwindcss.com/) (CSS Framework)
-   **Database**: [MySQL](https://www.mysql.com/)
-   **Image Compression:** `compressorjs`
-   **Carousel:** `swiper`, `vue-slick-carousel`
-   **Build Tool:** `vite`

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

-   [PHP](https://www.php.net/downloads.php) (>= 8.1)
-   [Composer](https://getcomposer.org/download/)
-   [Node.js](https://nodejs.org/en/download/) (>= 18.0)
-   [npm](https://www.npmjs.com/get-npm) or [yarn](https://yarnpkg.com/getting-started)
-   [MySQL](https://www.mysql.com/downloads/) or any other database supported by Laravel.

### Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/homeRental.git
    cd homeRental
    ```
2.  **Install PHP dependencies:**
    ```bash
    composer install
    ```
3.  **Create a copy of the `.env` file:**
    ```bash
    cp .env.example .env
    ```
4.  **Generate an application key:**
    ```bash
    php artisan key:generate
    ```
5.  **Set up the database:**
    -   Configure your database credentials in the `.env` file.
    -   Run database migrations:
    ```bash
    php artisan migrate
    ```
    -   (Optional) Seed the database with dummy data (if available):
    ```bash
    php artisan db:seed
    ```
6.  **Install JavaScript dependencies:**
    ```bash
     npm install
    ```
7.  **Compile assets:**
    ```bash
    npm run dev
    ```
8.  **Start the development server:**
    ```bash
    php artisan serve
    ```

    Now you can access the application in your browser at `http://localhost:8000`.

## Configuration

-   The primary configuration is within the `.env` file. Review and update this file with database credentials, API keys, and other settings specific to your environment.
-   You can find details on Laravel configuration in the [official documentation](https://laravel.com/docs/configuration).

## Code Structure

-   `app`: Contains the core logic of the application using Laravel.
-   `bootstrap`: Used for loading the Laravel Framework and running initialization scripts
-   `config`: Contains configuration files for all Laravel services
-   `database`: Contains database migration and seed files.
-   `public`: Contains compiled assets and the main entry point (`index.php`).
-   `resources`: Contains your frontend code including javascript files in `js/` directory, css in `css/`, and the layouts.
-   `routes`: Defines the application's routes (web and API).
-   `storage`: Contains storage for various logs and data.
-   `tests`: Contains test files.
-   `vite.config.js`: Configuration for the vite bundler.
-   `tailwind.config.js`: Contains the Tailwind CSS configuration.
-   `postcss.config.js`:  Contains the PostCSS configuration.

## Contributing

We welcome contributions! If you'd like to contribute to the project, please follow these steps:

1.  Fork the repository.
2.  Create a new branch for your changes.
3.  Make your changes and commit them with clear messages.
4.  Push your branch to your forked repository.
5.  Submit a pull request with a clear description of your changes.


## License

This project is licensed under the [MIT license](https://opensource.org/licenses/MIT).

## Special Thanks
- [Laravel](https://laravel.com/)
- [Vue.js](https://vuejs.org/)
- [Tailwind CSS](https://tailwindcss.com/)
-  All the awesome open source developers that have contributed to the tools we use everyday.
