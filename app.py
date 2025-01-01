from flask import Flask, request, jsonify, render_template
from flask_sqlalchemy import SQLAlchemy
import os

app = Flask(__name__)

db = SQLAlchemy(app)


# Serve Frontend
@app.route('/')
def index():
    return "Hello, Azure!"

if __name__ == '__main__':
    app.run()
