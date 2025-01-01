/*
Create a new database called Products. Create following tables to the database:

Product
- id: int
- name: varchar

Ingredient
- id: int,
- name: varchar
- calories: DECIMAL

Contains
- ingredient_id: INT
- product_id: INT
- amount: DECIMAL

Define the following foreign key restrictions to the Contains table:
When Ingredient's or Product's id is updated, the updated value is reflected to Contains table. 
When an ingredient is deleted, the delete operation is blocked if there are any products
which contains the ingredient. When a product is deleted, the product_id in the Contains 
table is set to NULL.
*/

create database Products;

use Products;

create table Product (
    id int primary key,
    name varchar(255)
);

create table Ingredient (
    id int primary key,
    name varchar(255),
    calories decimal(10, 2)
);

create table Contains (
    ingredient_id int,
    product_id int,
    amount decimal(10, 2),
    primary key (ingredient_id, product_id),
    foreign (ingredient_id) references Ingredient(id)
        on update cascade
        on delete restrict,
    foreign key (product_id) references Product(id)
        on update casade
        on delete set null
);