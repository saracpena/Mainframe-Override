-- 1. Get the username of the person who made the post about EmptyStack in `forum_posts`.

-- SELECT author
-- FROM forum_posts
-- WHERE date >= '2048-04-01'
--   AND date < '2048-05-01'
--   AND content ILIKE '%EmptyStack%'
--   AND content ILIKE '%dad%';
-- !'smart-money-44'

-- 2. Get the last name of the person associated with that username in `forum_accounts`.

-- SELECT last_name 
-- FROM forum_accounts
-- WHERE username = 'smart-money-44'
-- !Steele

-- 3. Find all other accounts with the same last name.
-- SELECT *
-- FROM forum_accounts
-- WHERE last_name ILIKE 'steele'
--  AND username <> 'smart-money-44'; 
-- !excluding originally found 'Steele' account there are 2 other accounts, making it 3 total

-- 4. Find all accounts in `emptystack_accounts` with the same last name.
-- SELECT *
-- FROM emptystack_accounts
-- WHERE last_name ILIKE 'steele';
-- !Andrew and Lance

-- 5. There will only be one EmptyStack employee with a forum account. Use their credentials
--    to access `node mainframe`, which will output a new `sql` file for you to run.
-- \d emptystack_accounts;
    -- SELECT *
    -- FROM emptystack_accounts
    -- WHERE last_name = 'Steele';
 
    -- SELECT *
    -- FROM forum_accounts
    -- WHERE first_name IN ('Andrew', 'Lance')
    -- AND last_name = 'Steele';
    -- !Generated a new sql file

-- EXPLORE PROJECTS
    -- SELECT *
    -- FROM emptystack_projects;

-- EXPLORE MESSAGES
    -- SELECT *
    -- FROM emptystack_messages
    --     LIMIT 5;


-- 6. Find the message in `emptystack_messages` that mentions a project involving
--    self-driving taxis. That message is sent from an admin account and also reveals
--    the project code.

    FROM emptystack_messages
    WHERE content ILIKE '%self-driving%'
    OR content ILIKE '%taxi%';

-- !Output
--  id   |     from     |       to       |   subject    |                            body                            
-- -------+--------------+----------------+--------------+------------------------------------------------------------
--  LidWj | your-boss-99 | triple-cart-38 | Project TAXI | Deploy Project TAXI by end of week. We need this out ASAP.


-- 7. Get the credentials for the admin account from `emptystack_accounts`.
    -- SELECT username, password
    -- FROM emptystack_accounts
    -- WHERE username = 'your-boss-99';
    -- !ANSWER
--    username   |    password    
-- --------------+----------------
--  your-boss-99 | notagaincarter

-- 8. Get the ID of the project from `emptystack_projects`.

-- 9. Use that information to stop the project: `node mainframe -stop`!