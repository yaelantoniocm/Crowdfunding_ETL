-- Delete duplicate tables to not commit everytime we want to create another table
drop table if exists Contacts, Category, Subcategory, Campaign;

-- Create Contacts table
CREATE TABLE Contacts (
	Contact_id INT NOT NULL,
	First_name VARCHAR(50) NOT NULL,
	Last_name VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL,
		PRIMARY KEY(Contact_id)
);

-- Create Category table
CREATE TABLE Category (
	Category_id VARCHAR(10) NOT NULL,
	Category VARCHAR(50) NOT NULL,
		PRIMARY KEY(Category_id)
);

--Create Subcategory table
CREATE TABLE Subcategory (
	Subcategory_id VARCHAR(10) NOT NULL,
	Subcategory VARCHAR(50) NOT NULL,
		PRIMARY KEY(Subcategory_id)
);

--Create Campaign table
CREATE TABLE Campaign (
	Cf_id INT NOT NULL,
	Contact_id INT NOT NULL,
	Company_name VARCHAR(100) NOT NULL,
	Description VARCHAR(100) NOT NULL,
	Goal NUMERIC(10, 4) NOT NULL,
	Pledged NUMERIC(10, 4) NOT NULL,
	Outcome VARCHAR(50) NOT NULL,
	Backers_count INT NOT NULL,
	Country VARCHAR(50) NOT NULL,
	Currency VARCHAR(50) NOT NULL,
	Launched_date DATE NOT NULL,
	End_Data DATE NOT NULL,
	Category_id VARCHAR(10) NOT NULL,
	Subcategory_id VARCHAR(10) NOT NULL,
		PRIMARY KEY(Cf_id),
		FOREIGN KEY(Contact_id) REFERENCES Contacts(Contact_id),
		FOREIGN KEY(Category_id) REFERENCES Category(Category_id),
		FOREIGN KEY(Subcategory_id) REFERENCES Subcategory(Subcategory_id)
);