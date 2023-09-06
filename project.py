from  flask import Flask, render_template,request
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
import pymysql
pymysql.install_as_MySQLdb()

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@localhost/home maid'
db = SQLAlchemy(app)


class Contacts(db.Model):

    s_no = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80) , nullable=False)
    email = db.Column(db.String(20),nullable=False)
    phone_no = db.Column(db.String(12), nullable=False)
    msg = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)


class Login_maid(db.Model):
    s_no = db.Column(db.Integer, primary_key = True)
    name = db.Column(db.String(50), nullable=False)
    email = db.Column(db.String(20), nullable=False)
    address = db.Column(db.String(50), nullable=False)
    city_state = db.Column(db.String(30), nullable=False)
    phn_num = db.Column(db.String(12), nullable=False)
    speciality = db.Column(db.String(200), nullable=False)
    service_ava = db.Column(db.String(200), nullable=False)
    charges = db.Column(db.String(200), nullable=False)
    password = db.Column(db.String(10), nullable=False)
    date = db.Column(db.String(12), nullable=True)




@app.route("/")
def homepage():
    return render_template('homepage.html')

@app.route("/about")
def about():
    return render_template('about.html')

@app.route("/services")
def services():
    return render_template('services.html')

@app.route("/contact",methods = ['GET','POST'])
def contact():
    if(request.method=='POST'):
        # add entry to the database
        name = request.form.get('name')
        email=request.form.get('email')
        phone=request.form.get('phone')
        message=request.form.get('message')

        entry = Contacts(name=name, phone_no=phone, msg=message, date=datetime.now(), email=email)

        db.session.add(entry)
        db.session.commit()

    return render_template('contact.html')

@app.route("/needhelp")
def needhelp():
    return render_template('needhelp.html')

@app.route("/loginmaid",methods = ['GET','POST'])
def loginmaid():
    if (request.method == 'POST'):
        # add entry to the database
        name = request.form.get('name')
        email = request.form.get('email')
        address = request.form.get('address')
        city = request.form.get('city_and_state')
        phone  = request.form.get('phone_number')
        speciality = request.form.get('speciality')
        service  = request.form.get('service_available')
        charges = request.form.get('charges')
        password = request.form.get('password')

        entry = Login_maid(name=name, email=email, address=address, city_state=city_and_state, phn_num=phone_number,
                           speciality=speciality, service_ava=service_available, charges=charges, password=password, date=datetime.now())
        db.session.add(entry)
        db.session.commit()

    return render_template('loginmaid.html')

@app.route("/logincustomer")
def logincustomer():
    return render_template('logincustomer.html')
@app.route("/maidchanges")
def maidchanges():
    return render_template('maidchanges.html')
@app.route("/customerchanges")
def customerchanges():
    return render_template('customerchanges.html')
app.run(debug=True)
