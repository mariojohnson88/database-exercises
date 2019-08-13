USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(50),
    record_name VARCHAR(50) NOT NULL,
    release_date INT,
    sales FLOAT,
    genre CHAR(50),
    PRIMARY KEY (id)
);
