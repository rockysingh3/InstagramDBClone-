-- INSTAGRAM TABLES 

CREATE TABLE users (
    id INTEGER AUTO_INCRMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    user_name VARCHAR(100) UNIQUE NOT NULL,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photos (
    id INT AUTO_INCRMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id);
);

