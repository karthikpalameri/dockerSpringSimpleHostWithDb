CREATE TABLE IF NOT EXISTS public.student (
    rollno SERIAL PRIMARY KEY,  -- Add UNIQUE constraint to rollno
    marks INT,
    name VARCHAR(255)
);
