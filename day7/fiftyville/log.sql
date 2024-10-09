-- Keep a log of any SQL queries you execute as you solve the mystery.

.schema
.headers on
.mode column

-- #initially i understood that i decided to check whats there in the decsription on this specified date , since i get to know that there will be a clue has been hidden in this.
-- so i started working on this 
-- # analysed the crime_scene_reports
-- SELECT description
-- FROM crime_scene_reports 
-- WHERE street = 'Humphrey Street' AND day = 28;

-- now i get to know 3 witness see whp were present at the time for the interview so i decided to analyse whats there in the interview transcript.on that particular dat
-- Step 2: Analyze the interviews to find clues about the thief
-- SELECT transcript
-- FROM interviews
-- WHERE day = 28 and month ='7' and year = 2023;

-- clues which i got

--1. As the thief was leaving the bakery, they called someone who
--  talked to them for less than a minute. In the call, I heard
--  the thief say that they were planning to take the earliest 
-- flight out of Fiftyville tomorrow. The thief then asked the 
-- person on the other end of the phone to purchase the flight 
-- ticket.                                                     

-- 2.I don't know the thief's name, but it was someone I recogniz
-- ed. Earlier this morning, before I arrived at Emma's bakery,
--  I was walking by the ATM on Leggett Street and saw the thie
-- f there withdrawing some money.    

-- 3.Sometime within ten minutes of the theft, I saw the thief ge
-- t into a car in the bakery parking lot and drive away. If yo
-- u have security footage from the bakery parking lot, you mig
-- ht want to look for cars that left the parking lot in that t
-- ime frame.  

-- select *
-- from atm_transactions
-- where atm_location = 'Leggett Street' 
-- -- i undertsood that there no name like humphrey stree instead of that lane is there 
-- and day = 28 and month = 7 and year = 2023 and transaction_type = 'withdraw';

-- now i uderstood that there are some people withdraw the money so now iam going to bank account for getting name of the persona nd the account number .

-- select person_id , account_number
-- from bank_accounts
-- where account_number in (
-- select account_number
-- from atm_transactions
-- where atm_location = 'Leggett Street'
-- and day = 28 and month = 7 and year = 2023 and transaction_type = 'withdraw'
-- );

-- now i got the person_id ,so from people table iam going to find the persons name using people id.

-- select id,name
-- from people
-- where id in(
--     select person_id
--     from bank_accounts
--     where account_number in (
--         select account_number
--         from atm_transactions
--         where atm_location = 'Leggett Street'
--         and day = 28 and month = 7 and year = 2023 and transaction_type = 'withdraw'
--     )
-- )
-- ;

-- now i got the name and id . since one of the clue is telling that they purchase a fligh ticket tommorw

-- select *
-- from flights
-- where day = 29 and month = 7 and year = 2023;

-- now i understood there 5v flights are charte dto going tommorow.
-- from that clue its telling tehy are catching the earliest flight so iam moving towards the table flight
 
select id,year,month,day,hour,minute
from flights
where day = 29 and month = 7 and year = 2023 
order by hour asc
limit 1;

-- flight id to passport number using passenger table
-- then we connect passenger to people table 
-- from that we will get a list of names 

