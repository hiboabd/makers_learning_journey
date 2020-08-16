## Broader goal - week 4
### * Explain the basics of how databases work (e.g. tables, SQL, basic relationships) *

#### What is SQL?
SQL stands for Structured Query Language. It's a language that allows communication with databases in order to manage all the data they contain.

It’s not a language in the same sense as, say, Java or C++. SQL is considered a fourth-generation language (4GL), whereas Java and C++ are third-generation languages (3GLs).

There are a few frequently used SQL commands you should be familiar with for database work. When working with databases, a programmer might write commands such as:

  * CREATE DATABASE – to create a database
  * CREATE TABLE – to create tables
  * SELECT – to find/extract some data from a database
  * UPDATE – make adjustments and edit data
  * DELETE – to delete some data

#### SQL cheatsheet
Check if string contains substring

 ```sql
SELECT name FROM world
WHERE name LIKE 'United%';

 ```
Select data if satisfies one of two conditions (OR)

 ```sql
SELECT name, population, area FROM world
WHERE area > 3000000 OR population > 250000000
 ```

Select data if it satisfies one of two conditions but not both (XOR)

 ```sql
SELECT name, population, area FROM world
WHERE area > 3000000 XOR population > 250000000

 ```

The ROUND function
use negative integers to round to nearest 10, 100, 1000 etc.

```sql
SELECT name, ROUND(gdp/population, -3) FROM world
WHERE gdp > 1000000000000

```


#### SQL murder mystery

Crime scene report:
20180115	murder

Security footage shows that there were 2 witnesses.

The first witness lives at the last house on "Northwestern Dr".

The second witness, named Annabel, lives somewhere on "Franklin Ave".	SQL City


16371	Annabel Miller	490173	103	Franklin Ave	318771143
Last house on northwestern dr: 14887	Morty Schapiro	118009	4919	Northwestern Dr	111564949


Annabel - I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.

Morty -	I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". Only gold members have those bags. The man got into a car with a plate that included "H42W".

Who has gold memberships with that membership number
id	person_id	name	membership_start_date	membership_status
48Z7A	28819	Joe Germuska	20160305	gold
48Z55	67318	Jeremy Bowers	20160101	gold

Who checked in on the 9th January (time overlaps so she could've seen either of them)
joe
membership_id	check_in_date	check_in_time	check_out_time
48Z7A	20180109	1600	1730

membership_id	check_in_date	check_in_time	check_out_time
48Z55	20180109	1530	1700

Who owns the car

id	age	height	eye_color	hair_color	gender	plate_number	car_make	car_model
183779	21	65	blue	blonde	female	H42W0X	Toyota	Prius
423327	30	70	brown	brown	male	0H42W2	Chevrolet	Spark LS
664760	21	71	black	black	male	4H42WR	Nissan	Altima

Can rule the female out

Jeremy owns the first car

id	name	license_id	address_number	address_street_name	ssn
67318	Jeremy Bowers	423327	530	Washington Pl, Apt 3A	871539279

Other car is owned by Tushar
id	name	license_id	address_number	address_street_name	ssn
51739	Tushar Chandra	664760	312	Phi St	137882671

Jeremy is confirmed to be the killer

Plot twist - Jeremy was hired by someone

Jeremy's interview transcript
67318	I was hired by a woman with a lot of money. I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). She has red hair and she drives a Tesla Model S. I know that she attended the SQL Symphony Concert 3 times in December 2017.

Two people attended the Symphony concert three times

24556	1143	SQL Symphony Concert	20171207
24556	1143	SQL Symphony Concert	20171221
24556	1143	SQL Symphony Concert	20171224
99716	1143	SQL Symphony Concert	20171206
99716	1143	SQL Symphony Concert	20171212
99716	1143	SQL Symphony Concert	20171229

First person is 24556	Bryan Pardo	101191	703	Machine Ln	816663882
Second person is 99716	Miranda Priestly	202298	1883	Golden Ave	987756388

Car information

id	age	height	eye_color	hair_color	gender	plate_number	car_make	car_model
202298	68	66	green	red	female	500123	Tesla	Model S
291182	65	66	blue	red	female	08CM64	Tesla	Model S
918773	48	65	black	red	female	917UU3	Tesla	Model S
