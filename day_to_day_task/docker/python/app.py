from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return '<h1>My Basic Details</h1><p>Name: Susmitha</p><p>Email: susisubramanian16@gmail.com</p>'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

