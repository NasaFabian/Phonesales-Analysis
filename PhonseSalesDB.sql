select * from PhoneSales







--phone sales analysis

select * from PhoneSales
total rows
select Count (date) from PhoneSales
select Count (distributor) from PhoneSales
--Total Countres--
select count (distinct (country)) As totalcountry from PhoneSales
--how many countries are there in phone sales tables--

--total distributors--
select count (distinct (brand)) AS totalbrand from PhoneSales
select count (distinct (distributor)) AS totaldistributor from PhoneSales
select count (distinct (operator)) AS totaloperator from PhoneSales
--total operators--
select distinct (operator) AS operators from PhoneSales
--total countries--
select distinct (country) AS countries from PhoneSales

--total sales--
select sum (sales) As totalsales from PhoneSales

--Change colmun name--
exec Sp_rename 'phonesales.Amount', 'Quantity','Column'
--Total Quantity--
select sum (Quantity) AS TotalQuantity from PhoneSales

select AVG ([Unit price]) AS AveragePrice from PhoneSales
select max ([Unit price]) AS Maxprice from PhoneSales
select min ([Unit price]) AS Minprice from PhoneSales

-- Total Sales by Operator--
select operator, sum (sales) AS Totalsales from Phonesales group by operator order by totalsales 

DATEDIFF
DATEPART
DATENAME
GETDATE ()

SELECT GETDATE ()





--Aggregate Function--
COUNT
COUNT DISTINCT
SUM
AVG
MIN
MAX