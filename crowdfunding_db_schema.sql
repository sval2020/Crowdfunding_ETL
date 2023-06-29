-- Drop tables if they exist
DROP TABLE IF EXISTS Campaign;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS SubCategory;
DROP TABLE IF EXISTS Contacts;

-- Create Contacts table
CREATE TABLE Contacts (
    contact_id INT NOT NULL,
    email VARCHAR NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    PRIMARY KEY (contact_id)
);

-- Create Category table
CREATE TABLE Category (
    category_id VARCHAR NOT NULL,
    category_name VARCHAR NOT NULL,
    PRIMARY KEY (category_id)
);

-- Create SubCategory table
CREATE TABLE SubCategory (
    subcategory_id VARCHAR NOT NULL,
    subcategory_name VARCHAR NOT NULL,
    PRIMARY KEY (subcategory_id)
);

-- Create Campaign table
CREATE TABLE Campaign (
    cd_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal INT NOT NULL,
    pledged INT NOT NULL,
    outcome VARCHAR NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    Category_ID VARCHAR NOT NULL,
    Subcategory_ID VARCHAR NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    FOREIGN KEY (Category_ID) REFERENCES Category(category_id),
    FOREIGN KEY (Subcategory_ID) REFERENCES SubCategory(subcategory_id)
);