-- BEGIN CREATE TABLES --

CREATE TABLE projects (
  id INTEGER PRIMARY KEY,
  title TEXT,
  category TEXT,
  goal INTEGER,
  start TEXT,
  end TEXT,
  user_id INTEGER
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER
);

CREATE TABLE pledges (
  id INTEGER PRIMARY KEY,
  amount INTEGER,
  user_id INTEGER,
  project_id INTEGER
);

-- END CREATE TABLES --

-- BEGIN INSERT DATA --

INSERT INTO users (name, age) VALUES
  ("Josh", 20), ("Tiffany", 26),
  ("Stephanie", 26), ("Manuel", 28),
  ("Rosie", 28), ("Kyle", 23),
  ("David", 26), ("Matt", 25),
  ("Emily", 23), ("Adam", 28),
  ("Vinney", 26), ("Logan", 24),
  ("Charlotte", 27), ("Kelly", 27),
  ("Katie", 25), ("Saron", 25),
  ("Scott", 26), ("Spencer", 27),
  ("John", 27), ("Mike", 26);

INSERT INTO projects (title, category, goal, start, end, user_id) VALUES
  ("3Doodler", "Music", 100000, "10/25/13", "12/18/13", 1),
  ("Rainbow Pencils", "Books", 12500, "08/15/13", "12/22/13", 5),
  ("Tinder", "Charity", 15000, "07/10/13", "01/18/14", 4),
  ("Smart Garden", "Charity", 1000, "11/07/13", "02/06/14", 10),
  ("DropShades", "Music", 275, "12/06/13", "01/18/14", 11),
  ("Shadow", "Books", 1896, "05/01/13", "01/04/14", 12),
  ("Reservoir", "Books", 2000, "04/18/13", "03/18/14", 12),
  ("Storm the Gate", "Charity", 2250, "04/16/13", "05/03/14", 17),
  ("Duo", "Music", 375000, "10/29/13", "01/01s/14", 3),
  ("Dark Sky", "Books", 500000, "09/30/13", "12/31/13", 19);

INSERT INTO pledges (amount, user_id, project_id) VALUES
  (5, 1, 1), (10, 2, 1), (22, 3, 2), (56, 4, 3), (75, 5, 4),
  (100, 4, 7), (30, 4, 3), (15, 2, 4), (2000, 6, 6), (28, 7, 2),
  (127, 8, 10), (30, 11, 9), (85, 18, 4), (26, 7, 7), (500, 19, 2),
  (1000, 9, 9), (25, 12, 8), (90, 20, 4), (28, 12, 7), (750, 18, 6),
  (45, 10, 5), (25, 15, 7), (99, 16, 5), (9, 14, 9), (425, 20, 8),
  (30, 9, 6), (20, 16, 7), (105, 15, 6), (19, 15, 9), (70, 16, 5);

-- END INSERT DATA --

-- BEGIN SELECT STATEMENTS --

-- 1. Select the titles of all projects and their pledge amounts.

SELECT projects.title, SUM(pledges.amount) AS 'total_pledges'
FROM
  projects
JOIN
  pledges ON projects.id = pledges.project_id
GROUP BY
  projects.title;

-- 2. Select the user name, age, and pledge amount for all pledges.

SELECT pledges.id, users.name, users.age, pledges.amount
FROM
  users
JOIN
  pledges ON users.id = pledges.user_id
GROUP BY
  pledges.id;

-- 3. Select the titles of all projects that have met their funding goal.

SELECT projects.title, SUM(pledges.amount) AS 'total_pledges'
FROM
  projects
JOIN
  pledges ON projects.id = pledges.project_id
GROUP BY
  projects.title
HAVING
  SUM(pledges.amount) >= projects.goal;

-- 4. Select user names and amounts of all pledges. Order them by the amount.

SELECT users.name, pledges.amount
FROM
  users
JOIN
  pledges ON users.id = pledges.user_id
ORDER BY
  pledges.amount DESC;

-- 5. Select the project names, and pledge amounts of all pledges
--    in the music category.

SELECT projects.title, pledges.amount
FROM
  pledges
JOIN
  projects ON projects.id = pledges.project_id
WHERE
  projects.category = "Music"
ORDER BY
  pledges.amount DESC;

-- 6. Select the category names and the sum total of the pledge amounts
--    of all the pledges in the book category.

SELECT projects.title, projects.category, SUM(pledges.amount) AS 'total pledges'
FROM
  pledges
JOIN
  projects ON projects.id = pledges.project_id
WHERE
  projects.category = "Books"
GROUP BY
  projects.title;

-- END SELECT STATEMENTS --