CREATE DATABASE waste_tracking_activity;
USE waste_tracking_activity; 


CREATE TABLE state (
 state_id int PRIMARY KEY AUTO_INCREMENT,
 state_code VARCHAR(5) NOT NULL
);

CREATE TABLE category (
 category_id int PRIMARY KEY AUTO_INCREMENT,
 category_code VARCHAR(5) NOT NULL
);


CREATE TABLE fate (
 fate_id int PRIMARY KEY AUTO_INCREMENT,
 fate_code VARCHAR(5) NOT NULL
);


CREATE TABLE Normal_Sale(
	year INT ,
	state_id INT ,
    category_id INT ,
    fate_id INT ,
    tonnes INT NOT NULL,
    contamination_rate FLOAT(5) NOT NULL,
    PRIMARY KEY(year),
    FOREIGN KEY (state_id) REFERENCES state(state_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (fate_id) REFERENCES fate(fate_id)
);
