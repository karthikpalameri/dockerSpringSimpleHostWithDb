-- Insert record with only name and marks (rollno is auto-generated)
INSERT INTO public.student (marks, name)
VALUES (60, 'AutoInsertedAtStartup1')
ON CONFLICT (rollno) DO NOTHING;

-- Insert record with only name and marks (rollno is auto-generated)
INSERT INTO public.student (marks, name)
VALUES (99, 'AutoInsertedAtStartup2')
ON CONFLICT (rollno) DO NOTHING;
