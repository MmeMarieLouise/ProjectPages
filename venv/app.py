# 'F' is used for the class Flask
from flask import Flask
from flask import render_template

# app instance
app = Flask (__name__)

# define route in view
@app.route('/')
def index():
    project = "Project Test"
    return render_template("index.html", project = project)

@app.route ('/project', methods=['GET'])
def projectTitle():


if __name__ == "__main__":

# run app
  app.run(debug=True, port=8000, host='0.0.0.0')