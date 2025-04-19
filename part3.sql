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


SELECT * FROM Task
WHERE ToDoList_id = 1;  


UPDATE Task
SET status = 'done'
WHERE id = 1;  


DELETE FROM Task
WHERE id = 1;  



SELECT * FROM Task
WHERE due_date < '2025-05-01';


SELECT COUNT(*) AS done_task_count
FROM Task t
JOIN "To Do List" td ON t.ToDoList_id = td.id
WHERE t.status = 'done' AND td.user_id = 1;  
