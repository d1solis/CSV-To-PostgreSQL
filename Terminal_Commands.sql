-- Start by writing this out in the terminal
C:\Users\dalil> & "C:\Program Files\PostgreSQL\17\bin\psql.exe" -U postgres 

-- Will then prompt you to input a password for the user postgres (dalila25)

-- Now create the server by creating a database, we called it adoptme_stats
CREATE DATABASE adoptme_stats;

-- We need to grant all privileges to this server, so write out the following commands
GRANT ALL PRIVILEGES ON DATABASE "adoptme_stats" TO dalila;
GRANT ALL PRIVILEGES ON DATABASE "adoptme_stats" TO postgres;

-- Now create a table for your server to store the data. Be extra careful in this step!
CREATE TABLE pet_statistic (
    pet_name VARCHAR(100),
    pet_origin VARCHAR(100),
    rarity VARCHAR(50),
    chance FLOAT,
    age VARCHAR(50),
    currency VARCHAR(100),
    amount INTEGER,
    pet_ride VARCHAR(50),
    pet_fly VARCHAR(50),
    pet_neon VARCHAR(50),
    pet_mega VARCHAR(50)
);

-- Confirm the table was created with empty data
SELECT * FROM pet_statistic;

-- Copy the csv file over to postgres
\COPY pet_statistic FROM 'C:\Users\dalil\Downloads\Adopt Me! Pet Tracker Dataset - Sheet1.csv' DELIMITER ',' CSV HEADER;

-- Confirm the table was populated with your data
SELECT * FROM pet_statistic;
