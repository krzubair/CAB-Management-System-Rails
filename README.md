# README

# ABOUT CAB Management System

The CAB Management System is a web application that allows users to book cab journeys, manage drivers, and provide feedback on their experiences.

## Features

- User authentication: Users can sign up, log in, and log out.
- Journey booking: Users can book cab journeys by providing start and end locations, date, and time.
- Driver management: Admin users can add, edit, and delete drivers.
- Feedback system: Users can provide feedback on their cab journeys.
- Bill generation: Admin users can generate bills for completed journeys.

# Dependencies

- Ruby version - 2.7.3p183
- Rails version - 6.0.6.1

- Uses Bcrypt for authentication v3.1.7

- Database Used - sqlite3 version 1.4

- Bootstrap Version - 5.2.3

# Deployment instructions

- git clone git_link
- bundle_install
- rails db:migrate
- rails db:seed
- rails s
