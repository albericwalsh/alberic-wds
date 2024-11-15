-- Create table for Users
drop table if exists Users;
CREATE TABLE IF NOT EXISTS Users
(
    UID      INT PRIMARY KEY AUTO_INCREMENT,
    UserName VARCHAR(255)   NOT NULL,
    Password VARBINARY(255) NOT NULL, -- Storing password as hash
    Name     VARCHAR(255),
    Services TEXT                     -- Optional field if you need to store additional service info
);

-- Create table for Services
drop table if exists Services;
CREATE TABLE IF NOT EXISTS Services
(
    SID  INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Link VARCHAR(255),
    Description TEXT
);

-- Create table for Services_List
drop table if exists Services_List;
CREATE TABLE IF NOT EXISTS Services_List
(
    ID  INT PRIMARY KEY AUTO_INCREMENT,
    UID INT NOT NULL,
    SID INT NOT NULL,
    FOREIGN KEY (UID) REFERENCES Users (UID) ON DELETE CASCADE,
    FOREIGN KEY (SID) REFERENCES Services (SID) ON DELETE CASCADE
);
