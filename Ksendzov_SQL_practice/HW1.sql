1. Output all fields and all lines.
SELECT * FROM qa_users;

2. Output all students in a table
SELECT students FROM qa_users;

3. Output only user IDs
SELECT user_id FROM qa_users;

4. Output only the username
SELECT username FROM qa_users;

5. Output only user email
SELECT email FROM qa_users;

6. Output username and email
SELECT username, email FROM qa_users;

7. Output id, name, email address and create users
SELECT user_id, username, email, created_on 
FROM qa_users;

8. Output users where password is 12333
SELECT * FROM qa_users
WHERE password = '12333';

9. Output users who were created 2021-03-26 00:00:00
SELECT * FROM qa_users
WHERE created_on = '2021-03-26 00:00:00';

10. Output users where the name contains the word Anna
SELECT * FROM qa_users
WHERE username LIKE 'Anna%';

11. Output users where there is 8 in the name at the end
SELECT * FROM qa_users
WHERE username LIKE '%8';

12. Output users where the letter a is in the name in
SELECT * FROM qa_users
WHERE username LIKE '%a%';

13. Output users who were created 2021-07-12 00:00:00
SELECT * FROM qa_users
WHERE created_on = '2021-07-12 00:00:00';

14. Output users who were created on 2021-07-12 00:00:00 and have a password of 1m313
SELECT * FROM qa_users
WHERE created_on = '2021-07-12 00:00:00'
AND "password" = '1m313';

15. Output users who were created on 2021-07-12 00:00:00 and who have the word ANDrey in their name
SELECT * FROM qa_users
WHERE created_on = '2021-07-12 00:00:00'
AND username LIKE '%Andrey%';

16. Output users who were created on 2021-07-12 00:00:00 and have the number 8 in their name
SELECT * FROM qa_users
WHERE created_on = '2021-07-12 00:00:00'
AND username LIKE '%8%';

17. Output user whose id is equal to 10
SELECT * FROM qa_users
WHERE user_id = 10;

18. Output user whose id is equal to 53
SELECT * FROM qa_users
WHERE user_id = 53;

19. Output user whose id is greater than 40
SELECT * FROM qa_users
WHERE user_id > 40;

20. Output user whose id is less than 30
SELECT * FROM qa_users
WHERE user_id < 30;

21. Output user whose id is less than 27 or greater than 88
SELECT * FROM qa_users
WHERE user_id < 27
or user_id > 88;

22. Output user whose id is less than or equal to 37
SELECT * FROM qa_users
WHERE user_id <= 37;

23. Output user whose id is greater than or equal to 37
SELECT * FROM qa_users
WHERE user_id >= 37;

24. Output user whose id is greater than 80 but less than 90
SELECT * FROM qa_users
WHERE user_id > 80
AND user_id < 90;

25. Output user whose id is between 80 and 90
SELECT * FROM qa_users
WHERE user_id BETWEEN 80 AND 90;

26. Output users where password is 12333, 1m313, 123313
SELECT * FROM qa_users
WHERE "password" IN ('12333', '1m313', '123313');

27. Output users where created_on is 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT * FROM qa_users
WHERE created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

28. Output minimum id
SELECT min(user_id) FROM qa_users;

29. Output the maximum.
SELECT max(user_id) FROM qa_users;

30. Output the number of users
SELECT count(user_id) FROM qa_users;

31. Output user id, name, user creation date. Sort in ascending order by the date the user was added.
SELECT user_id, username, created_on FROM qa_users
ORDER BY created_on;

32. Output user id, name, user creation date. Sort in descending order by the date the user was added.
SELECT user_id, username, created_on FROM qa_users
ORDER BY created_on DESC;
