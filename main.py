import base64

from flask import Flask, render_template, send_file, redirect, url_for
from repository.insertSql import insertar_usuario
from repository.getImage import get_imagen

app = Flask(__name__)


@app.route("/")
def index():
    return render_template("formulario.html")


@app.route("/", methods=["POST"])
def procesar_formulario():
    insertar_usuario()
    return redirect(url_for("exito"))


@app.route("/id/<id>")
def procesar_id(id):
    datos = get_imagen(id)
    imagen_base64 = base64.b64encode(datos["image"].getvalue()).decode("ascii")
    return f"""
        <h1> Información del Juego </h1>
        <p>id: {datos['id']}</p>
        <p>nombre: {datos['name']}</p>
        <p>descripción: {datos['description']}</p>
        <p>fecha de salida: {datos['release_date']}</p>
        <p>Plataforma: {datos['platform']}</p>
        <img src="data:image/png;base64,{imagen_base64}"/>
    """


@app.route("/exit")
def exito():
    return "¡Imagen insertada con éxito!"


if __name__ == "__main__":
    app.run(debug=True, port=9090)
