INSERT INTO main.contacts (contactId, firstName, lastName, address, city, state, zip, phone, email)
SELECT 1, 'Tariq', 'Ahmed', '1111 A St.', 'Anywhere', 'CA', '96112', '555-555-1111', 'tariq@example.com' UNION
SELECT 2, 'John', 'Bland', '2222 B St.', 'Somewhere', 'NY', '12121', '555-555-1212', 'johnbland@example.com' UNION
SELECT 3, 'Dan', 'Orlando', '3333 C St.', 'Nowhere', 'FL', '32568', '555-555-1313', 'dan.orlando@example.com' UNION
SELECT 4, 'Joel', 'Hooks', '4444 A St.', 'Fort Worth', 'TX', '76112', '555-555-1414', 'joelhooks@gmail.com'