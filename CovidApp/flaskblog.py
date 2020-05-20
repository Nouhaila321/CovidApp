from flask import Flask, render_template, url_for
from flask_mysqldb import MySQL


app=Flask(__name__)

# Configure db

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'coronavirus'

mysql = MySQL(app)

@app.route("/")
@app.route("/home")
def hello():
	cur = mysql.connection.cursor()
	resultValue = cur.execute("SELECT * FROM world ")
	worldDetails = cur.fetchall()
	return render_template('home.html',worldDetails=worldDetails)

@app.route("/serv")
def serv():
	cur = mysql.connection.cursor()
	resultValue = cur.execute("SELECT * FROM serv ")
	servs = cur.fetchall()
	return render_template('serv.html',servs=servs)

@app.route("/callus")
def callus():
	return render_template('callus.html')

@app.route("/moreinfo")
def moreinfo():
	cur = mysql.connection.cursor()
	resultValue = cur.execute("SELECT * FROM ideas ")
	ideas = cur.fetchall()
	return render_template('moreinfo.html', ideas=ideas)


if __name__ == '__main__':
	app.run(debug=True)	

