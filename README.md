# AIRLINE_MANAGEMENT_SYSTEM

A simple Airline Management System built using SQL for managing aircrafts, flights, passengers, pilots, and bookings efficiently. This project demonstrates database design and query handling for an airline booking and management platform.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Project Overview:- The Airline Management System is designed to manage core airline operations:

Managing flight details

Assigning pilots to flights

Handling aircraft information

Booking system for passengers

Managing passenger records
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
This system provides a structured way to store, retrieve, and manipulate data related to airline operations.

Features:- Add, update, and delete flight records

Store aircraft and pilot details

Maintain passenger database

Booking system with foreign key relations

Simple and clear relational database design
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Technologies Used:- Database: MySQL / PostgreSQL / SQLite (choose one)

Query Language: SQL (Structured Query Language)

Tools: MySQL Workbench / DBeaver / phpMyAdmin (optional)
Database Tables:- The system includes the following tables:

Aircraft - Stores aircraft details

Flights - Contains flight information

Pilots - Holds pilot records

Passengers - Passenger data

Bookings - Stores booking information (relationships with Flights and Passengers)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Example Table Relationships Flights references Aircraft and Pilots

Bookings references Flights and Passengers
