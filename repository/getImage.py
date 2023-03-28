import mysql.connector
import io


def get_imagen(id):
    # Crear una conexión a la base de datos
    conexion = mysql.connector.connect(
        host="localhost",
        port=3306,
        user="admin_user",
        password="mystrongpass1",
        database="epicgames",
    )

    # Crear un cursor para ejecutar las consultas SQL
    cursor = conexion.cursor()

    consulta = "SELECT * FROM Games WHERE id = %s"
    valores = (id,)

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
