## Broader goal - week 4
### * Explain the basics of how databases work (e.g. tables, SQL, basic relationships) *

https://fmhelp.filemaker.com/help/18/fmp/en/index.html#page/FMP_Help%2Fone-to-one-relationships.html%23

https://www.youtube.com/watch?v=XrFzDboHbaQ

### Data Normalisation

  * The process by which large tables are divided into smaller tables and relationships are defined between them.
    * Eliminates redundant data (i.e. repeating the same data in multiple records)

### Relating tables

There are three ways in which a table can be related to another table:

  * One-to-one: A record in one table is related to one record in another table.
  * One-to-many: A record in one table is related to many records in another table.
  * Many-to-many: Multiple records in one table are related to multiple records in another table.

### One to one example

Handling a one-to-one relationship or a one-or-many relationship can be done by adding the primary key (i.e. id) of one table into the other table as a foreign key.

An example of a one to one relationship is in a school database, each student has only one student ID, and each student ID is assigned to only one person.

Why not put all the columns into a single table?

  * if there are many optional attributes that only apply to some records (e.g. some employees have health insurance).
  * if your data is being loaded from different places - you may not be able to put the data into one table.

### One to many example (most relationships)



### Many to many example

Example: a university database could have multiple students in one class and a student could be enrolled in multiple classes.

We can’t add the primary key of one table into the other, or both, because this only stores a single relationship, and we need many.

I.e. if you tried to add the student id's into the class id, you'd be able to use the same student id multiple times but you wouldn't be able to use the class id multiple times as it would already exist.

Incorrect Example:

|  class_id  |     student_id    |
|--------------------------------|
|      1     |     "1,2,3,4"     |
|--------------------------------|
|      2     |     "3,6,7,8"     |
|--------------------------------|
|      3     |       "3,4"       |
|--------------------------------|


You also wouldn't be able to have multiple values in a row (i.e. multiple student id's in one cell) or multiple columns for each student_id. The former would be hard to maintain and track and the latter would have a limit on the number of columns you can have.

An example of this can be found (here)[https://dzone.com/articles/how-to-handle-a-many-to-many-relationship-in-datab]

You need a table that would enable you to reference both id's as many times as needed, whilst keeping each row unique and storing data in each cell once.

The solution is to use a joining table. We use a concept called a joining table or a bridging table.

A joining table is a table that sits between the two other tables of a many-to-many relationship. Its purpose is to store a record for each of the combinations of these other two tables.

You could make a new table called class_enrolment. It stores two columns: one for each of the primary keys from the other table.

|  class_id  |     student_id    |
|--------------------------------|
|      1     |        "3"        |
|--------------------------------|
|      1     |        "5"        |
|--------------------------------|
|      1     |        "9"        |
|--------------------------------|
|      2     |        "3"        |
|--------------------------------|
|      2     |        "4"        |
|--------------------------------|
|      2     |        "6"        |
|--------------------------------|
