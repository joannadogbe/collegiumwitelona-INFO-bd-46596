CREATE TABLE categories (
	-- column name, automatic incrementing, unique identifier for every row
	id SERIAL PRIMARY KEY,
	-- column name, data type: text (lenght), field is required
	name VARCHAR(50) NOT NULL,
	-- column name, text entries with no limit (this field is optional)
	description TEXT
);


CREATE TABLE movies (
	id SERIAL PRIMARY KEY,
	title VARCHAR(150) NOT NULL,
	-- foreign key, 
	category_id INTEGER REFERENCES categories(id),
	-- whole number
	release_year INTEGER,
	-- decimal number
	rental_price NUMERIC (6,2),
	-- if no date given, today's date is set automatically
	added_date DATE DEFAULT CURRENT_DATE,
	is_available BOOLEAN DEFAULT TRUE
);

INSERT INTO categories (name, description) VALUES 
	('Sci-Fi', 'Science fiction and futuristic themes'),
    ('Action', 'High energy, chases, and stunts'),
    ('Drama', 'In-depth realistic character stories'),
    ('Comedy', 'Lighthearted humor and entertainment'),
    ('Horror', 'Scary and thrilling stories'),
    ('Animation', 'Animated films for all ages'),
    ('Adventure', 'Exciting journeys and quests'),
    ('Crime', 'Detective and criminal investigation stories'),
    ('Fantasy', 'Magical worlds and mythical creatures'),
    ('Documentary', 'Real-world non-fiction content');

INSERT INTO movies (title, category_id, release_year, rental_price, added_date, is_available) 
VALUES 
('Inception', 1, 2010, 14.99, '2024-01-10', TRUE),
    ('The Matrix', 1, 1999, 12.50, '2024-01-11', TRUE),
    ('The Dark Knight', 2, 2008, 14.99, '2024-01-12', FALSE),
    ('The Shawshank Redemption', 3, 1994, 9.99, '2024-01-15', TRUE),
    ('The Intouchables', 4, 2011, 11.00, '2024-01-18', TRUE),
    ('The Shining', 5, 1980, 8.50, '2024-01-20', FALSE),
    ('The Lion King', 6, 1994, 10.00, '2024-01-22', TRUE),
    ('The Lord of the Rings', 9, 2001, 15.99, '2024-01-25', TRUE),
    ('Pulp Fiction', 8, 1994, 11.50, '2024-01-28', TRUE),
    ('Interstellar', 1, 2014, 14.99, '2024-02-01', TRUE);
