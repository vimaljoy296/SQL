-- Keep a log of any SQL queries you execute as you solve the mystery.

-- Display the schema to understand the database structure
.schema
.headers on
.mode column

-- INITIAL ANALYSIS: Checking what's in the description on a specified date, as I understand there's a clue hidden there.
-- ANALYZING THE CRIME SCENE REPORTS
SELECT description
FROM crime_scene_reports 
WHERE street = 'Humphrey Street' AND day = 28;

-- I now know three witnesses were present, so I decide to analyze what's in the interview transcript for that specific day.
-- STEP 2: Analyze the interviews to find clues about the thief
SELECT transcript
FROM interviews
WHERE day = 28 AND month = 7 AND year = 2023;

-- Clues found from the witness statements:
-- 1. As the thief was leaving the bakery, they made a phone call. The conversation lasted less than a minute.
--    I overheard the thief say they were planning to take the earliest flight out of Fiftyville the next day.
--    The thief also asked the person on the other end to purchase the flight ticket.

-- 2. Although I don't know the thief's name, I recognize them. Earlier this morning, I saw the thief
--    withdrawing money from an ATM on Leggett Street.

-- 3. Within ten minutes of the theft, I saw the thief get into a car in the bakery parking lot and drive away.
--    Security footage from the bakery parking lot during this time might show the cars that left.

-- CHECKING ATM TRANSACTIONS TO IDENTIFY WHO WITHDREW MONEY AT LEGGETT STREET ON THAT DAY
SELECT *
FROM atm_transactions
WHERE atm_location = 'Leggett Street' 
AND day = 28 AND month = 7 AND year = 2023 AND transaction_type = 'withdraw';

-- UNDERSTANDING THAT HUMPHREY STREET IS NOT PRESENT BUT 'LANE' IS USED INSTEAD.
-- I now proceed to the bank account information to obtain the name and account number of the person who withdrew the money.

SELECT person_id, account_number
FROM bank_accounts
WHERE account_number IN (
    SELECT account_number
    FROM atm_transactions
    WHERE atm_location = 'Leggett Street'
    AND day = 28 AND month = 7 AND year = 2023 AND transaction_type = 'withdraw'
);

-- I HAVE THE PERSON ID, SO NOW I WILL USE THE PEOPLE TABLE TO FIND THE PERSON'S NAME USING THE PERSON ID.
SELECT id, name
FROM people
WHERE id IN (
    SELECT person_id
    FROM bank_accounts
    WHERE account_number IN (
        SELECT account_number
        FROM atm_transactions
        WHERE atm_location = 'Leggett Street'
        AND day = 28 AND month = 7 AND year = 2023 AND transaction_type = 'withdraw'
    )
);

-- WITH THE NAME AND ID IN HAND, AND A CLUE INDICATING THAT A FLIGHT TICKET WAS PURCHASED FOR TOMORROW,
-- I NOW CHECK FLIGHTS ON THE NEXT DAY (JULY 29, 2023).
SELECT *
FROM flights
WHERE day = 29 AND month = 7 AND year = 2023;

-- FIVE FLIGHTS ARE SCHEDULED FOR THE NEXT DAY. BASED ON THE CLUE, THE THIEF IS CATCHING THE EARLIEST FLIGHT.
-- I WILL ORDER THE FLIGHTS BY DEPARTURE TIME TO FIND THE EARLIEST FLIGHT.
SELECT id, year, month, day, hour, minute
FROM flights
WHERE day = 29 AND month = 7 AND year = 2023 
ORDER BY hour ASC
LIMIT 1;

-- IDENTIFYING THE FLIGHT ID TO MATCH WITH A PASSPORT NUMBER IN THE PASSENGER TABLE.
-- I THEN CONNECT THE PASSENGER TO THE PEOPLE TABLE TO OBTAIN A LIST OF NAMES.
-- THEN I WILL GET THE PASSENGER DETAILS WITH NAME AND ID .