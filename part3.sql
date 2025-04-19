CREATE TABLE Task (
    id SERIAL PRIMARY KEY,
    ToDoList_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50) NOT NULL,
    due_date DATE,
    priority VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO Task (ToDoList_id, title, description, status, due_date, priority)
VALUES (1, 'play football', '5v5 teams football', 'pending', '2025-05-25', 'high');

SELECT * FROM Task
WHERE status = 'pending';


