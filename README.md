# Live Response Analysis Tracker

As an incident response consultant, I built this Rails-based application to help me organize my live response analyses.

[Video demo (26 seconds)](https://www.youtube.com/watch?v=AoT-8jU3dzM)

## Screenshots

List engagements:
![Engagements](screenshots/engagements.png)

List systems to analyze:
![Systems](screenshots/systems.png)

Create a live response analysis:
![Edit LR](screenshots/new_system.png)

## To Run

```
rails db:create db:migrate
rails s
```

Open `http://localhost:3000`

## Warning

LR Tracker saves data in a sqlite3 database (development.db) locally. This is intentional, to avoid storing customer data in the cloud.

However, this means there is a risk of data loss. If you'd like to store your data in Postgres/MySQL/etc, please open an issue or create a pull request.
