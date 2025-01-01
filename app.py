from flask import Flask, request, jsonify, render_template
from flask_sqlalchemy import SQLAlchemy
import os

username = os.getenv('MYSQL_USERNAME')
password = os.getenv('MYSQL_PASSWORD')
hostname = os.getenv('MYSQL_HOST')
database = os.getenv('MYSQL_DATABASE')

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = f'mysql+pymysql://{username}:{password}@{hostname}/{database}'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)


# Serve Frontend
@app.route('/')
def index():
    return render_template('index.html')

if __name__ == '__main__':
    app.run()
