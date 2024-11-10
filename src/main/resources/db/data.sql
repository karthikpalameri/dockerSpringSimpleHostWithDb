-- Insert record only if the rollno doesn't already exist
INSERT INTO public.student (rollno, marks, name, id)
VALUES (2, 60, 'AutoInsertedAtStartup1', 1)
ON CONFLICT (rollno) DO NOTHING;

-- Insert record only if the rollno doesn't already exist
INSERT INTO public.student (rollno, marks, name, id)
VALUES (3, 99, 'AutoInsertedAtStartup2', 2)
ON CONFLICT (rollno) DO NOTHING;
