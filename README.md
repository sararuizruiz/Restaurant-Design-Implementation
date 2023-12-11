## Restaurant Database: Design and Implementation

This repository contains the design of a Restaurant Database from scratch (both EER model and Relational Model) and its implementation using [Oracle SQL Developer](https://www.oracle.com/database/sqldeveloper/). Also, some data is inserted to check the integrity constraints and some SQL queries are presented to analyse the data.

### Company Requirements and Constraints
Here, I explicitly describe the company's requirements that were given before the design of the database.

In CAPITAL LETTERS, each of the entities will be written, in _italics_ each one of the relationships between the entities, and in **bold** the possible key attributes of the entity (or the one that will be the partial key of a weak entity).

- The company owns several chains of **RESTAURANT**s. Each restaurant has an **ID**, a **Name**, a Style, a Vision, and some Values. Each of these _has_ a series of **BRANCH**es, where we store the opening date, **ID**, **NIF**, Name, and Address.

- Each branch _offers_ at least ten **PRODUCT**s, consisting of **FOOD** and **DRINK**. We have information about the **ID**, Name, Price, and Cost of each product. Additionally, if it is food, we store possible allergens and divide them separately into **STARTER**s, **MAIN COURSE**s, or **DESSERT**s. Starters will have a label that distinguishes them as cold or hot, the main courses will be classified if they are eaten with a spoon or fork, and their category will be specified (if they are meat, fish, pasta, or vegetables), and desserts as fruit or sweet. If the product is a drink, information about its Volume and Manufacturer will be stored, and all of them will be divided into **ALCOHOLIC**, specifying the type of alcohol, or **NON-ALCOHOLIC**, specifying if it contains gas or not.

- At each branch, _EMPLOYEE_s work. We have **DNI**, **NSS**, Date of Birth, Address, and Phone number(s) for each employee. An employee can _supervise_ other employees. Additionally, each employee will have a position, but only for three special positions, more information will be stored, even if there are more. In particular, there will be an employee who will be a **DIRECTOR**, who _manages_ a restaurant, there will be a **MANAGER**, who _takes care of_ a branch, and there will be **WAITER**s.
  Waiters will be responsible for _taking orders_ for **ORDER**s, which have an **order number** and a bill. In addition, the orders are _composed of_ products and are _ordered_ by one and only one **TABLE**. Each table has a certain capacity and is **numbered** according to the branch to which they _belong_, in which there must be at least five tables.

- There are **CUSTOMER**s, with an **ID**, Name, and a phone number, who _make_ a **RESERVATION** at a branch. Each branch assigns an **ID** to its reservations. In addition, the number of people and the name of the reservation are stored. Each of these _reserves_ a table on a specific date.

- On the other hand, **SUPPLIER**s, with **NIF**, **ID**, Address (Street, City, Zip Code), and Approval Date, _supply_ a certain amount of **INGREDIENT**s to the branches, which are _needed_ in a certain quantity by the products. Each ingredient has an **ID** and a cost.

- There is a system in which **ANONYMOUS CUSTOMER**s, with a **Username** (non-identifying) given by the branch itself, can _rate_ the branches through a score and a comment. Since this system is anonymous, if this person returns to make a review at the same or another branch, a new Username will be assigned.

- Finally, each branch _obtains_ **FINANCIAL RESULTS** in a certain period of time (Month of a Year), which we will identify by an **ID**, and from which we will store data about Income, Operating Expenses, and Profits.

## EER model Design
The design of the Enhanced Entity-Relationship Model was done using [Draw.io](https://app.diagrams.net) and can be seen on this image:

![EER_GrupoH_FINAL drawio](https://github.com/sararuizruiz/restaurant-design-implementation/assets/75987848/84d66365-2095-4a0a-918d-7fc778073bf6)

### From EER to a Relational Model
The translation from the EER to a Relational Model was done following the book 'Fundamentals of Database Systems' by Ramez Elmasri and Shamkant Navathe, Chapter 9 (Relational Database Design by ER- and EER-to-Relational Mapping). This is our result:

![RestauranteConCardinalidad-relational drawio](https://github.com/sararuizruiz/restaurant-design-implementation/assets/75987848/f161d235-100d-4f27-8008-c645b56bc2cc)

### Database Implementation in Oracle
Using Oracle SQL Developer, we implemented the database using the queries in file 

### Data Insertion

### Data Querying in SQL

## Acknowledments
This project is a joint work between María del Carmen Sánchez Barragán, Miguel Roldán Rodríguez, Vitor Oliveira de Souza and me.
Presented as a part of the 'Big Data and Artificial Intelligence' Masters Degree by the University of Málaga.


