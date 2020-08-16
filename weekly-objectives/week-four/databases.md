## Broader goal - week 4
### * Explain the basics of how databases work (e.g. tables, SQL, basic relationships) *

### What are databases?
  - Databases are the storage shelves of the digital world and they're where we store all our masses of information.
  - Every database has a database management system which structures how we organise and interact with all our stored data.
  - A database may be represented as a number of tables. Each table has its own number of columns and rows and represents a set of data.

### The two different types of database management systems

#### Relational DBMS's

  - organises data in tables made of columns
  - columns are categories and each row inside them holds a data entry
  - they're highly structured and have strict data types
  - great for managing complex datasets (what makes a dataset complex??)

The pattern of how you arrange all your rows, columns and tables is called a schema.  

In a relational system, we have to define it before we can put anything into the database.

We talk to them using SQL (structured query language).

#### Non-relational DBMS's

  - this is an umbrella term that aren't strictly relational.
  - these systems are more flexible with less strictness around data types
  - they're good for getting a database up and running quickly as you do not have to create a strict schema beforehand
  - they are also good for deploying data across decentralised distributed networks
    - i.e. when data is stored across many computers that all have to co-ordinate with each other

You do not use SQL to talk to these DMBS's so they are also referred to as "No SQL"
