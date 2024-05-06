CREATE TABLE Company (
  id INT,
  company_name VARCHAR(255),
  headquarters_location VARCHAR(255),
  founding_year INT,
  website_url VARCHAR(255),
  PRIMARY KEY(id)
);

CREATE TABLE Watch (
  watch_id INT,
  company_id INT,
  watch_name VARCHAR(255),
  price DECIMAL(10, 2),
  movement_type VARCHAR(255),
  case_material VARCHAR(255),
  PRIMARY KEY(watch_id),
  FOREIGN KEY (company_id) REFERENCES Company(id)
);

CREATE TABLE Collection (
  collection_id INT,
  company_id INT,
  collection_name VARCHAR(255),
  release_year INT,
  description TEXT,
  PRIMARY KEY(collection_id),
  FOREIGN KEY (company_id) REFERENCES Company(id)
);

CREATE TABLE Customer (
  customer_id INT,
  customer_name VARCHAR(255),
  email VARCHAR(255),
  address VARCHAR(255),
  phone_number VARCHAR(255),
  PRIMARY KEY (customer_id)
);

CREATE TABLE Purchase (
  purchase_id INT,
  customer_id INT,
  watch_id INT,
  order_date DATE,
  quantity INT,
  PRIMARY KEY(purchase_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (watch_id) REFERENCES Watch(watch_id)
);

-- Insert data into Company
INSERT INTO Company (id, company_name, headquarters_location, founding_year, website_url) VALUES
(1, 'ABC Watches', 'New York', 1990, 'www.abcwatches.com'),
(2, 'XYZ Timepieces', 'London', 1985, 'www.xyztimes.com'),
(3, 'WatchCo', 'Los Angeles', 2005, 'www.watchco.com'),
(4, 'Time Keepers', 'Paris', 1978, 'www.timekeepers.com'),
(5, 'Precision Watch', 'Tokyo', 2002, 'www.precisionwatch.jp'),
(6, 'Timezone', 'Berlin', 1995, 'www.timezone.de');

-- Insert data into Watch
INSERT INTO Watch (watch_id, company_id, watch_name, price, movement_type, case_material) VALUES
(1, 1, 'Classic Model', 200, 'Automatic', 'Stainless Steel'),
(2, 2, 'Sports Watch', 300, 'Quartz', 'Titanium'),
(3, 3, 'Elegant Time', 250, 'Automatic', 'Gold-plated'),
(4, 4, 'Adventure Series', 150, 'Quartz', 'Stainless Steel'),
(5, 5, 'Diver\'s Delight', 400, 'Automatic', 'Titanium'),
(6, 6, 'Vintage Collection', 180, 'Quartz', 'Brass');

-- Insert data into Collection
INSERT INTO Collection (collection_id, company_id, collection_name, release_year, description) VALUES
(1, 1, 'Heritage', 2020, 'Classic and timeless designs'),
(2, 2, 'Adventure', 2021, 'Durable watches for outdoor enthusiasts'),
(3, 3, 'Vintage', 2019, 'Retro-inspired timepieces'),
(4, 4, 'Sports Series', 2022, 'Dynamic and athletic designs'),
(5, 5, 'Limited Edition', 2020, 'Exclusive and rare timepieces'),
(6, 6, 'Diver\'s Choice', 2021, 'Professional diving watches'),
(7, 7, 'Pilot\'s Collection', 2018, 'Aviation-inspired timepieces');

-- Insert data into Customer
INSERT INTO Customer (customer_id, customer_name, email, address, phone_number) VALUES
(1, 'John Smith', 'john@example.com', '123 Main St Anytown', '555-123-4567'),
(2, 'Jane Doe', 'jane@example.com', '456 Elm St Otherville', '555-987-6543'),
(3, 'Michael Brown', 'michael@example.com', '789 Oak Ave Cityville', '555-456-7890'),
(4, 'Emily Johnson', 'emily@example.com', '321 Pine Rd Villageton', '555-789-1234'),
(5, 'David Davis', 'david@example.com', '987 Cedar Dr Suburbia', '555-234-5678'),
(6, 'Olivia Wilson', 'olivia@example.com', '654 Willow Ln Townsville', '555-876-5432');

-- Insert data into Purchase
INSERT INTO Purchase (purchase_id, customer_id, watch_id, order_date, quantity) VALUES
(1, 1, 1, '2023
