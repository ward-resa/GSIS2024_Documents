-- school definition

CREATE TABLE school (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);


-- school_year definition

CREATE TABLE school_year (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    short_name VARCHAR(10) NOT NULL,
    first_day DATE NOT NULL,
    last_day DATE NOT NULL
);


-- student definition

CREATE TABLE student (
    id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    last_name VARCHAR(50) NOT NULL,
    state_id BIGINT NOT NULL,
    gender VARCHAR(10) NOT NULL
);


-- student_school_year definition

CREATE TABLE student_school_year (
    id INT PRIMARY KEY,
    student_id INT NOT NULL,
    school_year_id INT NOT NULL,
    school_id INT NOT NULL,
    grade_level INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (school_id) REFERENCES school(id),
    FOREIGN KEY (school_year_id) REFERENCES school_year(id)
);