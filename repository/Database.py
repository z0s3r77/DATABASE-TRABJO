from flask import request
import mysql.connector
import io


class Database:
    @staticmethod
    def connect():

        # Crear una conexión a la base de datos
        conexion = mysql.connector.connect(
            host="localhost",
            port=3306,
            user="admin_user",
            password="mystrongpass1",
            database="epicgames",
        )

        return conexion

    @staticmethod
    def insertar_usuario():

        # "Instanciar" la conexión
        conexion = Database.connect()

        # Crear un cursor
        cursor = conexion.cursor()

        # Obtener los datos del formulario
        game_id = request.form["id"]
        name = request.form["name"]
        description = request.form["description"]
        releasedate = request.form["releasedate"]
        platform = request.form["platform"]
        foto = request.files["foto"]

        # Convertir la imagen a bytes para almacenarla en la base de datos
        bytes_imagen = foto.read()

        # Crear la consulta SQL para insertar los datos en la tabla de usuarios
        consulta = "INSERT INTO Games (id, name, description, release_date, platform, image) VALUES (%s, %s, %s, %s, %s, %s)"
        valores = (game_id, name, description, releasedate, platform, bytes_imagen)

        # Ejecutar la consulta y confirmar los cambios
        cursor.execute(consulta, valores)
        conexion.commit()

        # Cerrar el cursor
        cursor.close()

        # Cerrar la conexión a la base de datos
        conexion.close()

    @staticmethod
    def get_imagen(id):

        # "Instanciar" la conexión
        conexion = Database.connect()

        # Crear un cursor
        cursor = conexion.cursor()

        # Crear una consulta
        consulta = "SELECT * FROM Games WHERE id = %s"
        valores = [id]

        # Ejecutar la consulta y guardamos el valor de la consulta
        cursor.execute(consulta, valores)
        resultado = cursor.fetchone()

        # Cerrar la conexión y el cursor
        cursor.close()
        conexion.close()

        # Obtener los resultados
        if resultado is not None:

            game_id = resultado[0]
            name = resultado[1]
            description = resultado[2]
            release_date = resultado[3]
            platform = resultado[4]
            image = resultado[5]
            imagen_bytes = io.BytesIO(image)
            return {
                "id": game_id,
                "name": name,
                "description": description,
                "release_date": release_date,
                "platform": platform,
                "image": imagen_bytes,
            }

        else:
            return f"No se encontró ningún registro con el id {id}"
