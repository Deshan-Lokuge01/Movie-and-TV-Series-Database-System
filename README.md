# 🎬 Movie & TV Series Database Management System

A comprehensive MySQL database solution for managing entertainment media assets, from movies and TV shows to cast, crew, and streaming platforms.

<div align="center">
  <img src="https://img.shields.io/badge/MySQL-8.0+-blue?logo=mysql" alt="MySQL Version">
  <img src="https://img.shields.io/badge/License-MIT-green" alt="License">
</div>

---

## 🌟 Key Features
- **Complete Media Catalog** - Movies, TV series, episodes, and associated metadata
- **Talent Management** - Directors, actors, and their award histories
- **Streaming Integration** - Studio and website associations
- **Multimedia Tracking** - Songs featured in productions
- **User Engagement** - Review and rating system

---

## 🛠️ System Architecture

<div align="center">
  
### Entity-Relationship Diagram
<img src="https://github.com/Deshan-Lokuge01/Movie-and-TV-Series-Database-System/raw/main/ER_Diagram.png" width="600" alt="ER Diagram showing database structure">

### UML Class Diagram
<img src="https://github.com/Deshan-Lokuge01/Movie-and-TV-Series-Database-System/raw/main/UML_Diagram.png" width="600" alt="UML Diagram of system classes">

</div>

---

## 📋 Functional Requirements

| Category               | Capabilities |
|------------------------|-------------|
| **Media Management**   | Add/update/delete movies & TV series |
| **Director Tracking**  | Associate directors with productions, track bios/awards |
| **Streaming Links**    | Connect studios & websites to TV series |
| **Episode Control**    | Manage episode details (ratings, length, cost) |
| **Actor Profiles**     | Store actor bios, nationalities, and awards |
| **Music Catalog**      | Track songs with singer/writer credits |
| **Review System**      | User reviews with ratings and comments |

---

## 🗃️ Data Model Specifications

### Core Entities
```sql
MOVIES (movie_id, name, release_year, genre, duration, language, budget)
TV_SERIES (series_id, name, release_year, genre, language, seasons, origin_country)
DIRECTORS (license_no, name, age, nationality, awards)
ACTORS (license_no, name, nationality, dob, awards)
