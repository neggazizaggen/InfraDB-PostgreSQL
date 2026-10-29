# InfraDB-PostgreSQL

**Author:** Sobhy NEGGAZI  
**Project:** IT Infrastructure Inventory and Incident Management  
**Database:** PostgreSQL

## 1. Project Overview

InfraDB-PostgreSQL is a demonstration project designed to organize IT infrastructure assets and track technical incidents using PostgreSQL.

It models a simple IT environment containing multiple sites, network equipment, servers, and incidents.

## 2. Objectives

- Centralize IT equipment inventory.
- Associate equipment with physical sites.
- Track incidents and their priorities.
- Practice SQL queries, relational modeling, and database documentation.

## 3. Database Structure

The database contains three tables:

- **sites:** stores site names and cities.
- **equipements:** stores servers, switches, routers, IP addresses, and equipment status.
- **incidents:** stores incident descriptions, priorities, status, and related equipment.

## 4. Project Files

- `sql/01_schema.sql` — database table definitions.
- `sql/02_donnees_demo.sql` — fictional demonstration data.
- `sql/03_requetes.sql` — inventory and incident reporting queries.

## 5. Example Use Cases

- List all equipment by site.
- Identify open incidents.
- Count equipment by operational status.
- Summarize incidents by priority.

## 6. Testing

The SQL scripts are stored on GitHub. They must be executed in a PostgreSQL environment to validate the database structure, sample data, and queries.

## 7. Disclaimer

All equipment names, IP addresses, and incidents are fictional and intended for educational demonstration only.

## 8. Author

**Sobhy NEGGAZI**  
IT Infrastructure Data center Manager | Systems & Networks | PostgreSQL.
