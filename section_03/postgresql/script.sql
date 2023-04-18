-- Create the database
CREATE DATABASE mydatabase;

-- Connect to the newly created database
\c mydatabase;

-- Create a sample table
CREATE TABLE sample_table (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  city VARCHAR(50)
);

-- Insert sample data into the table
INSERT INTO sample_table (name, age, city) VALUES
('John Doe', 25, 'New York'),
('Jane Smith', 30, 'Los Angeles'),
('Mark Johnson', 35, 'Chicago');

-- Create a new username and password for authentication
CREATE USER myuser WITH PASSWORD 'mypassword';

-- Grant privileges to the user on the sample table
GRANT ALL PRIVILEGES ON TABLE sample_table TO myuser;

-- Grant privileges to the user on sequences used by the table
GRANT USAGE ON ALL SEQUENCES IN SCHEMA public TO myuser;

-- Grant privileges to the user on the sample database
GRANT ALL PRIVILEGES ON DATABASE mydatabase TO myuser;

-- Optionally, you can restrict the user's access to only the sample database
ALTER USER myuser IN DATABASE mydatabase SET search_path = mydatabase, public;