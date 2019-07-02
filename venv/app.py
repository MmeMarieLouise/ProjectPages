from flask import Flask

# app instance
app = Flask (__name__)

# define route in view
@app.route('/')
def index():
    return "Trustnet Project Page Test"

# run app
app.run(debug=True, port=8000)


