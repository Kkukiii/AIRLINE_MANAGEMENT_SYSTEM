create database Flight;
use Flight;

CREATE TABLE Aircraft (
    AircraftID VARCHAR(10) PRIMARY KEY,
    Model VARCHAR(50),
    Capacity INT,
    ManufactureYear INT
);

INSERT INTO Aircraft VALUE ('A001', 'Airbus A320', 180, 2018);
INSERT INTO Aircraft VALUE ('A002', 'Boeing 737', 200, 2020);
INSERT INTO Aircraft VALUE ('A003', 'Airbus A321', 190, 2019);
INSERT INTO Aircraft VALUE ('A004', 'Boeing 787', 250, 2021);
INSERT INTO Aircraft VALUE ('A005', 'Embraer 190', 100, 2017);
INSERT INTO Aircraft VALUE ('A006', 'ATR 72', 70, 2016);
INSERT INTO Aircraft VALUE ('A007', 'CRJ 900', 90, 2015);
INSERT INTO Aircraft VALUE ('A008', 'Airbus A330', 260, 2022);
INSERT INTO Aircraft VALUE ('A009', 'Boeing 777', 300, 2023);
INSERT INTO Aircraft VALUE ('A010', 'Bombardier Q400', 78, 2014);
INSERT INTO Aircraft VALUE ('A011', 'Airbus A350', 280, 2023);
INSERT INTO Aircraft VALUE ('A012', 'Boeing 767', 240, 2021);
INSERT INTO Aircraft VALUE ('A013', 'McDonnell Douglas MD-80', 155, 2013);
INSERT INTO Aircraft VALUE ('A014', 'Airbus A310', 270, 2012);
INSERT INTO Aircraft VALUE ('A015', 'Boeing 720', 140, 2011);

Select * From Aircraft;

CREATE TABLE Flights (
    FlightID VARCHAR(10) PRIMARY KEY,
    Airline VARCHAR(50),
    Source VARCHAR(50),
    Destination VARCHAR(50),
    DepartureTime TIME,
    ArrivalTime TIME,
    Status VARCHAR(20),
    AircraftID VARCHAR(10),
    FOREIGN KEY (AircraftID) REFERENCES Aircraft(AircraftID)
);

INSERT INTO Flights VALUE ('F101', 'Air India', 'Delhi', 'Mumbai', '10:00:00', '12:00:00', 'On Time', 'A001');
INSERT INTO Flights VALUE ('F102', 'IndiGo', 'Mumbai', 'Kolkata', '14:00:00', '17:00:00', 'Delayed', 'A002');
INSERT INTO Flights VALUE ('F103', 'SpiceJet', 'Chennai', 'Delhi', '09:30:00', '12:15:00', 'On Time', 'A003');
INSERT INTO Flights VALUE ('F104', 'Vistara', 'Bangalore', 'Hyderabad', '16:45:00', '17:45:00', 'Cancelled', 'A004');
INSERT INTO Flights VALUE ('F105', 'GoAir', 'Pune', 'Ahmedabad', '11:15:00', '13:00:00', 'On Time', 'A005');
INSERT INTO Flights VALUE ('F106', 'AirAsia', 'Lucknow', 'Delhi', '08:00:00', '09:30:00', 'On Time', 'A006');
INSERT INTO Flights VALUE ('F107', 'Akasa Air', 'Jaipur', 'Bhopal', '07:15:00', '08:45:00', 'On Time', 'A007');
INSERT INTO Flights VALUE ('F108', 'Air India', 'Delhi', 'Chandigarh', '06:30:00', '07:20:00', 'Delayed', 'A008');
INSERT INTO Flights VALUE ('F109', 'IndiGo', 'Mumbai', 'Nagpur', '15:00:00', '16:30:00', 'On Time', 'A009');
INSERT INTO Flights VALUE ('F110', 'SpiceJet', 'Chennai', 'Bangalore', '17:00:00', '18:00:00', 'On Time', 'A010');
INSERT INTO Flights VALUE ('F111', 'Vistara', 'Bangalore', 'Goa', '13:00:00', '14:00:00', 'On Time', 'A011');
INSERT INTO Flights VALUE ('F112', 'GoAir', 'Pune', 'Delhi', '12:30:00', '14:45:00', 'Cancelled', 'A012');
INSERT INTO Flights VALUE ('F113', 'AirAsia', 'Hyderabad', 'Mumbai', '10:45:00', '12:15:00', 'On Time', 'A013');
INSERT INTO Flights VALUE ('F114', 'Akasa Air', 'Ahmedabad', 'Indore', '19:00:00', '20:00:00', 'On Time', 'A014');
INSERT INTO Flights VALUE ('F115', 'Air India', 'Kolkata', 'Patna', '18:30:00', '19:45:00', 'Delayed', 'A015');

Select * From Flights;

CREATE TABLE Pilots (
    PilotID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    LicenseNumber VARCHAR(20),
    ExperienceYears INT
);

INSERT INTO Pilots VALUE ('P001', 'Capt. Rajesh Kumar', 'IN12345', 10);
INSERT INTO Pilots VALUE ('P002', 'Capt. Nidhi Verma', 'IN23456', 7);
INSERT INTO Pilots VALUE ('P003', 'Capt. Aman Gill', 'IN34567', 15);
INSERT INTO Pilots VALUE ('P004', 'Capt. Sneha Rao', 'IN45678', 12);
INSERT INTO Pilots VALUE ('P005', 'Capt. Arjun Mehta', 'IN56789', 5);
INSERT INTO Pilots VALUE ('P006', 'Capt. Riya Sen', 'IN67890', 6);
INSERT INTO Pilots VALUE ('P007', 'Capt. Karan Thakur', 'IN78901', 8);
INSERT INTO Pilots VALUE ('P008', 'Capt. Neha Dubey', 'IN89012', 11);
INSERT INTO Pilots VALUE ('P009', 'Capt. Suresh Iyer', 'IN90123', 14);
INSERT INTO Pilots VALUE ('P010', 'Capt. Alok Taneja', 'IN01234', 9);
INSERT INTO Pilots VALUE ('P011', 'Capt. Manish Patil', 'IN11234', 13);
INSERT INTO Pilots VALUE ('P012', 'Capt. Deepa Rani', 'IN12234', 6);
INSERT INTO Pilots VALUE ('P013', 'Capt. Ashok Menon', 'IN13234', 10);
INSERT INTO Pilots VALUE ('P014', 'Capt. Shweta Joshi', 'IN14234', 4);
INSERT INTO Pilots VALUE ('P015', 'Capt. Vishal Deshmukh', 'IN15234', 7);

Select * From Pilots;

CREATE TABLE Passengers (
    PassengerID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender CHAR(1),
    PassportNumber VARCHAR(20)
);

INSERT INTO Passengers VALUE ('PA001', 'Jyoti Singh', 22, 'F', 'N1234567');
INSERT INTO Passengers VALUE ('PA002', 'Vishnu Thakur', 20, 'M', 'N2345678');
INSERT INTO Passengers VALUE ('PA003', 'Rohan Das', 40, 'M', 'N3456789');
INSERT INTO Passengers VALUE ('PA004', 'Simran Kaur', 26, 'F', 'N4567890');
INSERT INTO Passengers VALUE ('PA005', 'Naveen Rao', 35, 'M', 'N5678901');
INSERT INTO Passengers VALUE ('PA006', 'Shreya Gupta', 22, 'F', 'N6789012');
INSERT INTO Passengers VALUE ('PA007', 'Kunal Singh', 31, 'M', 'N7890123');
INSERT INTO Passengers VALUE ('PA008', 'Isha Aggarwal', 29, 'F', 'N8901234');
INSERT INTO Passengers VALUE ('PA009', 'Amitabh Joshi', 36, 'M', 'N9012345');
INSERT INTO Passengers VALUE ('PA010', 'Neelam Reddy', 45, 'F', 'N0123456');
INSERT INTO Passengers VALUE ('PA011', 'Tarun Bhatia', 33, 'M', 'N1123456');
INSERT INTO Passengers VALUE ('PA012', 'Rekha Sharma', 39, 'F', 'N1223456');
INSERT INTO Passengers VALUE ('PA013', 'Vikram Chauhan', 30, 'M', 'N1323456');
INSERT INTO Passengers VALUE ('PA014', 'Preeti Nair', 27, 'F', 'N1423456');
INSERT INTO Passengers VALUE ('PA015', 'Aditya Kapoor', 38, 'M', 'N1523456');

Select * From Passengers;

CREATE TABLE Bookings (
    BookingID VARCHAR(10) PRIMARY KEY,
    PassengerID VARCHAR(10),
    FlightID VARCHAR(10),
    SeatNumber VARCHAR(5),
    BookingDate DATE,
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);


INSERT INTO Bookings VALUE ('B001', 'PA001', 'F101', '12A', '2025-04-08');
INSERT INTO Bookings VALUE ('B002', 'PA002', 'F102', '14B', '2025-04-09');
INSERT INTO Bookings VALUE ('B003', 'PA003', 'F103', '10C', '2025-04-09');
INSERT INTO Bookings VALUE ('B004', 'PA004', 'F104', '16D', '2025-04-10');
INSERT INTO Bookings VALUE ('B005', 'PA005', 'F105', '18E', '2025-04-10');
INSERT INTO Bookings VALUE ('B006', 'PA006', 'F106', '2A', '2025-04-11');
INSERT INTO Bookings VALUE ('B007', 'PA007', 'F107', '3B', '2025-04-11');
INSERT INTO Bookings VALUE ('B008', 'PA008', 'F108', '4C', '2025-04-11');
INSERT INTO Bookings VALUE ('B009', 'PA009', 'F109', '5D', '2025-04-12');
INSERT INTO Bookings VALUE ('B010', 'PA010', 'F110', '6E', '2025-04-12');
INSERT INTO Bookings VALUE ('B011', 'PA011', 'F111', '7F', '2025-04-12');
INSERT INTO Bookings VALUE ('B012', 'PA012', 'F112', '8G', '2025-04-13');
INSERT INTO Bookings VALUE ('B013', 'PA013', 'F113', '9H', '2025-04-13');
INSERT INTO Bookings VALUE ('B014', 'PA014', 'F114', '10I', '2025-04-13');
INSERT INTO Bookings VALUE ('B015', 'PA015', 'F115', '11J', '2025-04-14');

Select * From Bookings;

Show tables;

drop database flight;

SELECT * FROM Flights
WHERE Source = 'Delhi' AND Destination = 'Mumbai';

SELECT * FROM Bookings
WHERE PassengerID = "PA001";

SELECT FlightID, COUNT(PassengerID) AS Total_Passengers
FROM Bookings
GROUP BY FlightID;

SELECT B.BookingID, B.PassengerID, F.Airline
FROM Bookings B
JOIN Flights F ON B.FlightID = F.FlightID
WHERE F.Airline = 'Air India';

SELECT * FROM Passengers
WHERE Gender = 'F';

SELECT AVG(Capacity) AS AvgCapacity
FROM Aircraft;

SELECT FlightID, Airline, Source, Destination
FROM Flights
WHERE Status = 'Delayed';

SELECT B.BookingID, P.Name AS PassengerName, F.Airline, F.Source, F.Destination
FROM Bookings B
JOIN Passengers P ON B.PassengerID = P.PassengerID
JOIN Flights F ON B.FlightID = F.FlightID;

SELECT * FROM Aircraft
WHERE ManufactureYear > 2020;

SELECT FlightID, Airline, Status
FROM Flights
WHERE Status IN ('Cancelled', 'Delayed');

SELECT P.Name AS PassengerName, F.Destination
FROM Bookings B
JOIN Passengers P ON B.PassengerID = P.PassengerID
JOIN Flights F ON B.FlightID = F.FlightID;

SELECT FlightID, Airline, DepartureTime
FROM Flights
WHERE DepartureTime < '10:00:00';

SELECT Airline, COUNT(*) AS NumberOfFlights
FROM Flights
GROUP BY Airline;

SELECT Name, ExperienceYears
FROM Pilots
ORDER BY ExperienceYears DESC
LIMIT 1;

SELECT BookingDate, COUNT(*) AS BookingsPerDay
FROM Bookings
GROUP BY BookingDate
ORDER BY BookingDate;

SELECT A.Model, COUNT(F.FlightID) AS NumberOfFlights
FROM Aircraft A
JOIN Flights F ON A.AircraftID = F.AircraftID
GROUP BY A.Model;

SELECT P.Name, F.Airline, F.FlightID, B.SeatNumber
FROM Passengers P
JOIN Bookings B ON P.PassengerID = B.PassengerID
JOIN Flights F ON B.FlightID = F.FlightID
WHERE F.Airline = 'Air India';

SELECT * FROM Bookings
WHERE BookingDate BETWEEN '2025-04-10' AND '2025-04-13';

SELECT * FROM Flights
ORDER BY ArrivalTime ASC
LIMIT 1;

SELECT DISTINCT Source
FROM Flights;


