import mysql.connector
from flask import request



def insertar_usuario():
    # Crear una conexión a la base de datos
    conexion = mysql.connector.connect(
        host='localhost',
        port=3306,
        user='root',
        password='0909',
        database='epicgames'
    )

    # Crear un cursor para ejecutar las consultas SQL
    cursor = conexion.cursor()

    # Obtener los datos del formulario
    id = request.form['id']
    name = request.form['name']
    description = request.form['description']
    releasedate = request.form['releasedate']
    platform = request.form['platform']
    foto = request.files['foto']

    # Convertir la imagen a bytes para almacenarla en la base de datos
    bytes_imagen = foto.read()

    # Crear la consulta SQL para insertar los datos en la tabla de usuarios
    consulta = "INSERT INTO Games (id, name, description, release_date, platform, image) VALUES (%s, %s, %s, %s, %s, %s)"
    valores = ( id, name, description, releasedate, platform, bytes_imagen)

    # Ejecutar la consulta y confirmar los cambios
    cursor.execute(consulta, valores)
    conexion.commit()

    # Cerrar el cursor
    cursor.close()

    conexion.close()

# Cerrar la conexión a la base de datos
