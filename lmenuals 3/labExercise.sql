-- (Optional) drop & recreate for a clean run
DROP DATABASE IF EXISTS uni_lab;
CREATE DATABASE uni_lab
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_0900_ai_ci;
USE uni_lab;

-- Ensure we are on MySQL 8.0.16+ (CHECK constraints are enforced in 8.0.16+)
-- SELECT VERSION();
CREATE TABLE students (
  student_id   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  full_name    VARCHAR(100)        NOT NULL,
  email        VARCHAR(120)        NOT NULL,
  phone        VARCHAR(20)         NULL,
  date_of_birth DATE               NOT NULL,
  age          TINYINT UNSIGNED    NOT NULL,
  created_at   TIMESTAMP           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  -- Constraints
  CONSTRAINT uq_students_email UNIQUE (email),
  CONSTRAINT chk_students_age CHECK (age BETWEEN 16 AND 100),
  CONSTRAINT chk_students_phone CHECK (phone IS NULL OR phone REGEXP '^[0-9+\\-() ]{7,20}$')
) ENGINE=InnoDB;


CREATE TABLE courses (
  course_id     INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_code   VARCHAR(16)      NOT NULL,
  course_title  VARCHAR(120)     NOT NULL,
  credits       TINYINT UNSIGNED NOT NULL,
  active        BOOLEAN          NOT NULL DEFAULT TRUE,
  created_at    TIMESTAMP        NOT NULL DEFAULT CURRENT_TIMESTAMP,
  -- Constraints
  CONSTRAINT uq_courses_code UNIQUE (course_code),
  CONSTRAINT chk_courses_credits CHECK (credits BETWEEN 1 AND 6)
) ENGINE=InnoDB;
CREATE TABLE enrollments (
  enrollment_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  student_id    INT UNSIGNED NOT NULL,
  course_id     INT UNSIGNED NOT NULL,
  term          VARCHAR(8)   NOT NULL,  -- e.g., 2025S1, 2025F
  grade         CHAR(2)      NULL,      -- e.g., A, B, C, D, F, I, W
  enrolled_at   TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
  -- Constraints & Indexing
  CONSTRAINT fk_enr_student
    FOREIGN KEY (student_id) REFERENCES students(student_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_enr_course
    FOREIGN KEY (course_id)  REFERENCES courses(course_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT uq_enr_student_course_term UNIQUE (student_id, course_id, term),
  CONSTRAINT chk_enr_grade CHECK (grade IN ('A','B','C','D','F','I','W') OR grade IS NULL),
  CONSTRAINT chk_enr_term CHECK (term REGEXP '^[0-9]{4}(S1|S2|F|SP)$')
) ENGINE=InnoDB;

CREATE TABLE enrollments (
  enrollment_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  student_id    INT UNSIGNED NOT NULL,
  course_id     INT UNSIGNED NOT NULL,
  term          VARCHAR(8)   NOT NULL,  -- e.g., 2025S1, 2025F
  grade         CHAR(2)      NULL,      -- e.g., A, B, C, D, F, I, W
  enrolled_at   TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
  -- Constraints & Indexing
  CONSTRAINT fk_enr_student
    FOREIGN KEY (student_id) REFERENCES students(student_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_enr_course
    FOREIGN KEY (course_id)  REFERENCES courses(course_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT uq_enr_student_course_term UNIQUE (student_id, course_id, term),
  CONSTRAINT chk_enr_grade CHECK (grade IN ('A','B','C','D','F','I','W') OR grade IS NULL),
  CONSTRAINT chk_enr_term CHECK (term REGEXP '^[0-9]{4}(S1|S2|F|SP)$')
) ENGINE=InnoDB;


INSERT INTO students (full_name, email, phone, date_of_birth, age)
VALUES
  ('Ayesha Rahman',  'ayesha.rahman@example.com',  '+8801712345678', '2003-05-12', 22),
  ('Rafiul B. Angan','rafiul.angan@example.com',   '+8801811122233', '2001-11-03', 23),
  ('Sajjad Akif',    'sajjad.akif@example.com',    NULL,             '2002-02-19', 23);


INSERT INTO courses (course_code, course_title, credits, active)
VALUES
  ('CSE101', 'Introduction to Programming', 3, TRUE),
  ('EEE210', 'Circuit Analysis',            4, TRUE),
  ('MTH120', 'Discrete Mathematics',        3, TRUE);


-- Assume current term is 2025S2
INSERT INTO enrollments (student_id, course_id, term, grade)
VALUES
  (1, 1, '2025S2', NULL),    -- Ayesha in CSE101, not graded yet
  (1, 3, '2025S2', 'A'),     -- Ayesha in MTH120, graded
  (2, 2, '2025S2', 'B'),     -- Rafiul in EEE210
  (3, 1, '2025S2', 'I');     -- Sajjad in CSE101, Incomplete

-- This would fail (duplicate enrollment same term):
-- INSERT INTO enrollments (student_id, course_id, term) VALUES (1, 1, '2025S2');


SELECT
  e.enrollment_id,
  s.full_name,
  s.email,
  c.course_code,
  c.course_title,
  e.term,
  e.grade,
  e.enrolled_at
FROM enrollments e
JOIN students s ON s.student_id = e.student_id
JOIN courses  c ON c.course_id  = e.course_id
ORDER BY e.enrollment_id;

-- Clean up
DROP TABLE IF EXISTS enrollments;   
DROP TABLE IF EXISTS courses;     
DROP TABLE IF EXISTS students;
DROP DATABASE IF EXISTS uni_lab;    
-- End of lab exercise
-- End of lab exercise  
-- End of lab exercise
-- End of lab exercise

-- End of lab exercise
-- End of lab exercise


-- End of lab exercise-- End of lab exercise
-- End of lab exercise                  

-- End of lab exercise
-- End of lab exercise  