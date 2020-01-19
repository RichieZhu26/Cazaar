import json
from flask import Flask, request
from flask_db import db, User

app = Flask(__name__)
db_filename = 'database.db'

app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///%s' % db_filename
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SQLALCHEMY_ECHO'] = True

db.init_app(app)
with app.app_context():
    db.create_all()

@app.route("/")
def hello():
    return "Hello World!"

@app.route("/users")
def get_users():
    users = User.query.all()
    data = ''
    for user in users:
        data += user.name
    return json.dumps({'successful': True, 'data': data})

@app.route("/user/signin", methods=['POST'])
def user_signin():
    data = request.get_json()
    users = User.query.all()
    email = data.get('email')
    password = data.get('password')
    for user in users:
        if user.email == email and user.password == password:
            return json.dumps({'successful': True, 'data': user.serialize()})
    return json.dumps({'successful': False, 'error': 'authentification failed'})

@app.route("/user/signup", methods=['POST'])
def user_signup():
    data = request.get_json()
    users = User.query.all()
    email = data.get('email')
    for user in users:
        if user.email == email:
            return json.dumps({'successful': False, 'error': 'user already exists'})
    name = data.get('name')
    password = data.get('password')
    user = User(
      name = name,
      email = email,
      password = password
    )
    db.session.add(user)
    db.session.commit()
    return json.dumps({'successful': True, 'data': user.serialize()})

if __name__ == "__main__":
    app.run()