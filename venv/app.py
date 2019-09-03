from flask import Flask
# 'F' is used for the class Flask

# app instance
app = Flask (__name__)

# define route in view
@app.route('/')
def index():
  return "Trustnet Project Pages"

if __name__ == "__main__":

# run app
  app.run(debug=True, port=8000, host='0.0.0.0')