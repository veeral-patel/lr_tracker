# Live Response Analysis Tracker

After graduating from college, I worked as an incident response consultant at Mandiant.

My job was to do live response analyses of different servers and workstations from our clients' environments that we suspected an attacker had accessed.

(Think of a live response analysis as doing a forensic analysis of a hard disk, except that in order
to avoid imaging and uploading an entire hard disk, we extract several key artifacts from the endpoint.)

I built this basic CRUD web app to help me track my live response analyses, instead of using
a spreadsheet or Word doc.

[Video demo (26 seconds)](https://www.youtube.com/watch?v=AoT-8jU3dzM)

## Screenshots

### List engagements

![Engagements](screenshots/engagements.png)

### List systems to analyze

![Systems](screenshots/systems.png)

### Create a live response analysis

![Edit LR](screenshots/new_system.png)

## Tech Stack

- Ruby on Rails
- Turbolinks
- UIKit

## To Run

LR Tracker requires Ruby, and Rails 2.6.3.

```
rails db:create db:migrate
rails s
```

Open `http://localhost:3000`

## Deployment

I intentionally built LR Tracker to _not be deployed_, to run locally, because my coworkers at Mandiant
emphasized that I shouldn't store any client data in the cloud.

All the data is stored in a local sqlite3 database. This tool won't work for you if data loss is a concern for you. It wasn't for me, because I submitted my live response analyses via a separate application.

Also, for the same reason, there's no authentication built in. It has the threat model of a spreadsheet sitting on your hard disk.
