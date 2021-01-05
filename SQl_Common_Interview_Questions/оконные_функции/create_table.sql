CREATE TABLE forwindowfunc (ID INT, GroupId INT, Amount INT);
-- GO

INSERT INTO forwindowfunc (ID, GroupId, Amount)
 VALUES(1, 1, 100), (1, 1, 200), (1, 2, 150),
 (2, 1, 100), (2, 1, 300), (2, 2, 200), (2, 2, 50),
 (3, 1, 150), (3, 2, 200), (3, 2, 10);