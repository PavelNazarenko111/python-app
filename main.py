from os import environ
from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return "<p>HELLO WORLD</p>"

port = environ.get("PORT", 5500)
host = environ.get("HOST", "0.0.0.0")
app.run(host, port)