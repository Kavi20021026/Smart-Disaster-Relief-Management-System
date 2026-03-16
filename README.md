# Smart Disaster Relief Management System

##  Project Overview
The Smart Disaster Relief Management System is a database-driven solution designed to help manage disaster and epidemic relief operations efficiently.  

This system organizes information about affected areas, families, relief centers, volunteers, donations, and government assistance programs. It allows authorities and organizations to track relief resources and ensure that aid is distributed properly.

The project was developed as part of a database system project to demonstrate relational database design, normalization, and real-world disaster management use cases.

---

## Objectives
- Manage disaster and epidemic related information
- Track affected areas and families
- Monitor relief centers and available capacity
- Manage volunteers and their assigned areas
- Track donations and relief resources
- Record government assistance programs and distributions
- Improve transparency and efficiency of relief distribution

---

## Database Structure

The system includes several interconnected tables:

### Main Tables
- **epidemics** – Stores information about disasters and epidemics
- **affected_areas** – Areas affected by disasters
- **affected_families** – Families impacted by disasters
- **relief_centers** – Temporary shelters and relief locations
- **resources** – Available relief supplies (food, medicine, etc.)
- **donations** – Records of donated resources
- **distribution_logs** – Logs of resource distributions
- **government_programs** – Government relief programs
- **government_assistance** – Assistance provided to families
- **volunteers** – Volunteer details and assigned areas
- **admin_users** – System administrative users

---

## 🔗 Relationships
The database uses foreign keys to maintain relationships between tables:

- Epidemics → Affected Areas
- Affected Areas → Affected Families
- Affected Areas → Relief Centers
- Resources → Donations
- Resources → Distribution Logs
- Families → Government Assistance
- Programs → Government Assistance
- Volunteers → Assigned Areas

These relationships ensure data integrity and proper tracking of disaster relief operations.

---

## ⚙️ Technologies Used
- MySQL / MariaDB
- SQL
- phpMyAdmin (for database management)

---

## 📊 Features
- Disaster and epidemic tracking
- Resource and donation management
- Relief center capacity monitoring
- Volunteer assignment management
- Government assistance tracking
- Distribution log tracking

---

## Project Files
