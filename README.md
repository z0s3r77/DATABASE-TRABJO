# Run

* Create virtual enviroment and go into

```cmd
python -m venv venv

\venv\Scripts\activate
```

* Install requirements

```cmd
pip install -r requirements
```

* Have a local MySQL server running

* Run both scripts, at least DDL to create the database we are using.

* Run main.py

## Database description

This is a database called "epicgames", created to store information about games, users, scores, purchases, developers, studios, and sales. The following are descriptions of each of the tables:

* "Games": This table stores information about games, including their ID, name, description, release date, platform, image, and the primary key is the ID.

* "Users": This table stores information about users of the gaming platform, including their ID, username, password, email, registration date, and the primary key is the ID.

* "Scores": This table stores information about users' scores in each game, including their ID, user ID, game ID, score, date, and the primary key is the ID. This table has foreign key constraints that link the user and game IDs to their corresponding tables.

* "Purchases": This table stores information about users' purchases, including their ID, user ID, game ID, purchase date, price, and the primary key is the ID. This table has foreign key constraints that link the user and game IDs to their corresponding tables.

* "Developers": This table stores information about game developers, including their ID, name, description, founding date, location, and the primary key is the ID.

* "Studios": This table stores information about game studios, including their ID, name, description, founding date, location, and the primary key is the ID.

* "GamesDevelopers": This table is a link table that connects games and developers, including the game ID and developer ID, and the primary key consists of both IDs. This table has foreign key constraints that link the game and developer IDs to their corresponding tables.

* "GamesStudios": This table is a link table that connects games and studios, including the game ID and studio ID, and the primary key consists of both IDs. This table has foreign key constraints that link the game and studio IDs to their corresponding tables.

* "Sales": This table stores information about game sales, including their ID, game ID, sale date, sale time, revenue, and the primary key is the ID. This table has a foreign key constraint that links the game ID to its corresponding table.

The database also has two indexes, one in the "Scores" table for the "score" and "user_id" columns, and another in the "Purchases" table for the "user_id", "game_id", and "purchase_date" columns.

In addition, there are three roles defined in the database: "writer", "reader", and "admin_user". "writer" has permission to insert into the database, "reader" has permission to select from the database, and "admin_user" has all permissions.

## App Description

The Flask-based app sets up a small website that allows users to enter data about a game and its image, and then display them on another page. This app consists of three files:

### app.py

Imports necessary libraries

Creates an instance of the Flask application

Defines routes and functions to be executed on each route

Displays an HTML form on the root route

When the form is submitted, calls a function that inserts the data into a MySQL database and redirects to a success page

On another route, displays the data of a game in the database and its corresponding image

### insertSql.py

Imports necessary libraries

Defines a function that inserts game data into a MySQL database

### getImage.py

Imports necessary libraries

Defines a function that retrieves game data and its image from a MySQL database

### templates/formulario.html

Displays an HTML form for entering game data and an image.
