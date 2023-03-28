Descripción de la base de datos
===============================
Esta es una base de datos llamada "epicgames", creada con el fin de almacenar información sobre juegos, usuarios, puntajes, compras, desarrolladores, estudios y ventas. A continuación se describen cada una de las tablas:

    "Games": esta tabla almacena información sobre los juegos, incluyendo su identificación, nombre, descripción, fecha de lanzamiento, plataforma, imagen y la clave primaria es la identificación.
    "Users": esta tabla almacena información sobre los usuarios de la plataforma de juegos, incluyendo su identificación, nombre de usuario, contraseña, correo electrónico, fecha de registro y la clave primaria es la identificación.
    "Scores": esta tabla almacena información sobre los puntajes de los usuarios en cada juego, incluyendo su identificación, la identificación del usuario, la identificación del juego, la puntuación, la fecha y la clave primaria es la identificación. Esta tabla tiene restricciones de clave foránea que vinculan las identificaciones del usuario y del juego a las tablas correspondientes.
    "Purchases": esta tabla almacena información sobre las compras de los usuarios, incluyendo su identificación, la identificación del usuario, la identificación del juego, la fecha de compra, el precio y la clave primaria es la identificación. Esta tabla tiene restricciones de clave foránea que vinculan las identificaciones del usuario y del juego a las tablas correspondientes.
    "Developers": esta tabla almacena información sobre los desarrolladores de juegos, incluyendo su identificación, nombre, descripción, fecha de fundación, ubicación y la clave primaria es la identificación.
    "Studios": esta tabla almacena información sobre los estudios de juegos, incluyendo su identificación, nombre, descripción, fecha de fundación, ubicación y la clave primaria es la identificación.
    "GamesDevelopers": esta tabla es una tabla de enlace que vincula juegos y desarrolladores, incluyendo la identificación del juego y la identificación del desarrollador, y la clave primaria se compone de ambas identificaciones. Esta tabla tiene restricciones de clave foránea que vinculan las identificaciones del usuario y del juego a las tablas correspondientes.
    "GamesStudios": esta tabla es una tabla de enlace que vincula juegos y estudios, incluyendo la identificación del juego y la identificación del estudio, y la clave primaria se compone de ambas identificaciones. Esta tabla tiene restricciones de clave foránea que vinculan las identificaciones del usuario y del juego a las tablas correspondientes.
    "Sales": esta tabla almacena información sobre las ventas de juegos, incluyendo su identificación, la identificación del juego, la fecha de venta, la hora de venta, los ingresos y la clave primaria es la identificación. Esta tabla tiene una restricción de clave foránea que vincula la identificación del juego a la tabla correspondiente.

La base de datos también tiene dos índices, uno en la tabla "Scores" para las columnas "score" y "user_id", y otro en la tabla "Purchases" para las columnas "user_id", "game_id" y "purchase_date".

Además, hay tres roles definidos en la base de datos: "writer", "reader" y "admin_user". "writer" tiene permiso para insertar en la base de datos, "reader" tiene permiso para seleccionar desde la base de datos y "admin_user" tiene todos los permisos.

Descripción de la app
==========================
La app montada en Flask, levanta un pequeño sitio web que permite ingresar datos de un juego y su imagen, y luego mostrarlos en otra página. Esta app se compone de tres archivos:

app.py

- Importa las librerías necesarias
- Crea una instancia de la aplicación Flask
- Define las rutas y las funciones que se ejecutan en cada una
- Muestra un formulario HTML en la ruta raíz
- Cuando se envía el formulario, llama a una función que inserta los datos en una base de datos MySQL y redirige a una página de éxito
- En otra ruta, muestra los datos de un juego en la base de datos y la imagen correspondiente

insertSql.py

- Importa las librerías necesarias 
- Define una función que inserta los datos de un juego en una base de datos MySQL

getImage.py

- Importa las librerías necesarias
- Define una función que obtiene los datos y la imagen de un juego en una base de datos MySQL

templates/formulario.html

- Muestra un formulario HTML para ingresar los datos de un juego y una imagen.