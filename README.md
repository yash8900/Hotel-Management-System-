
# Hotel Management System

The **Hotel Management System** is a desktop application built using **Core Java (Swing/AWT)**, **JDBC**, and **MySQL** to digitize and streamline daily hotel front-desk and administrative workflows. Designed to replace manual logbooks and disconnected spreadsheets, the application centralizes guest check-ins, real-time room inventory tracking, billing management, and staff administration into a single, responsive interface.

## System Architecture
The application follows a modular, event-driven desktop architecture powered by a relational MySQL database (`hotelmanagementsystem`). Every operational task—from staff authentication to room allocation—executes real-time SQL queries through JDBC (`mysql-connector-java`) and displays live records dynamically using `rs2xml`.

## Key Features
* **Role-Based Authentication:** Validates Admin and Receptionist credentials against the database before granting access to management dashboards.
* **Guest Check-In & Automated Room Allocation:** Filters and displays only vacant rooms (`Available` status) during guest registration. Upon check-in, the system records guest identification details, timestamps arrival, and automatically updates the room status to `Occupied`—preventing double-booking conflicts.
* **Check-Out & Billing Updates:** Tracks active guest stays, calculates deposit adjustments and pending balances, and resets room status to `Available` upon checkout.
* **Room, Staff & Fleet Operations:** Includes dedicated modules to configure room pricing, bed types, and housekeeping status, alongside employee onboarding, department budget tracking, and driver dispatch.

## Tech Stack & Setup
* **Language & GUI:** Core Java (JDK 8+), Java Swing, and AWT
* **Database & Connectivity:** MySQL, JDBC (`mysql-connector-java`), and `rs2xml`
* **Workspace:** Structured for Visual Studio Code with explicit classpath configuration (`lib/*.jar`) and `.gitignore` rules to exclude compiled binaries (`out/`, `*.class`).
