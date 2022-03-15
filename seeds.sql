INSERT INTO department (id, name)
VALUES
    ( 1, "A"),
    ( 2, "B"),
    ( 3, "C");

INSERT INTO role (id, title, salary, department_id)
VALUES
    ( 1, "Manager", 60000, 1),
    ( 2, "Sales Associate", 40000, 2),
    ( 3, "Technician", 35000, 3);

    INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES
    ( 1, "Jack", "Peterson", 1, NULL),
    ( 2, "Peter", "Jackson", 2, 1),
    ( 3, "Mark", "Mark", 3, 1);