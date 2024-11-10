CREATE TABLE IF NOT EXISTS public.student (
    id SERIAL PRIMARY KEY,
    rollno INT NOT NULL UNIQUE,  -- Add UNIQUE constraint to rollno
    marks INT,
    name VARCHAR(255)
);
