from flask import Flask, render_template
import mysql.connector

app = Flask(__name__)

def get_db_connection():
    return mysql.connector.connect(
        host='db',
        user='techmart_user',
        password='password',
        database='techmart_db'
   )

@app.route('/')
def index():
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM products;')
    products = cursor.fetchall()
    cursor.close()
    conn.close()
    return render_template('index.html', products=products)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)