CREATE TABLE buildings (name VARCHAR(80) NOT NULL, shortname VARCHAR(10) UNIQUE, id INTEGER PRIMARY KEY AUTOINCREMENT)

CREATE TABLE rooms (number INTEGER, buildingid INTEGER, seating INTEGER, FOREIGN KEY(buildingid) REFERENCES buildings(id));

INSERT INTO rooms VALUES (400, (SELECT id FROM buildings WHERE name="Mary Gates Hall"), 40);