DROP TABLE IF EXISTS tasks CASCADE;

CREATE TABLE tasks (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) NOT NULL DEFAULT 1,
  status_id INTEGER REFERENCES statuses(id) NOT NULL DEFAULT 1
  task_title VARCHAR(255) NOT NULL,
  task_description TEXT,
  start_date DATE NOT NULL DEFAULT CURRENT_DATE,
  end_date DATE,
  archived boolean NOT NULL DEFAULT FALSE
);
