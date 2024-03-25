INSERT INTO users (name, email, role) VALUES
    ('John Doe', 'john@example.com', 'Admin'),
    ('Alice Smith', 'alice@example.com', 'User'),
    ('Bob Johnson', 'bob@example.com', 'User'),
    ('Emily Brown', 'emily@example.com', 'User');

INSERT INTO tasks (title, description, due_date, assigned_to, status, created_by)
VALUES
    ('Task 1', 'Description for Task 1', '2024-04-01', (SELECT id FROM users ORDER BY random() LIMIT 1), 'To Do', (SELECT id FROM users ORDER BY random() LIMIT 1)),
    ('Task 2', 'Description for Task 2', '2024-04-03', (SELECT id FROM users ORDER BY random() LIMIT 1), 'In Progress', (SELECT id FROM users ORDER BY random() LIMIT 1)),
    ('Task 3', 'Description for Task 3', '2024-04-05', (SELECT id FROM users ORDER BY random() LIMIT 1), 'Done', (SELECT id FROM users ORDER BY random() LIMIT 1)),
    ('Task 4', 'Description for Task 4', '2024-04-07', (SELECT id FROM users ORDER BY random() LIMIT 1), 'Pending', (SELECT id FROM users ORDER BY random() LIMIT 1)),
    ('Task 5', 'Description for Task 5', '2024-04-07', (SELECT id FROM users ORDER BY random() LIMIT 1), 'To Do', (SELECT id FROM users ORDER BY random() LIMIT 1)),
    ('Task 6', 'Description for Task 6', '2024-04-07', (SELECT id FROM users ORDER BY random() LIMIT 1), 'In Progress', (SELECT id FROM users ORDER BY random() LIMIT 1)),
    ('Task 7', 'Description for Task 7', '2024-04-07', (SELECT id FROM users ORDER BY random() LIMIT 1), 'Done', (SELECT id FROM users ORDER BY random() LIMIT 1)),
    ('Task 8', 'Description for Task 8', '2024-04-07', (SELECT id FROM users ORDER BY random() LIMIT 1), 'Pending', (SELECT id FROM users ORDER BY random() LIMIT 1)),
    ('Task 9', 'Description for Task 9', '2024-04-07', (SELECT id FROM users ORDER BY random() LIMIT 1), 'To Do', (SELECT id FROM users ORDER BY random() LIMIT 1)),
    ('Task 10', 'Description for Task 10', '2024-04-07', (SELECT id FROM users ORDER BY random() LIMIT 1), 'Done', (SELECT id FROM users ORDER BY random() LIMIT 1));
