import os
import  datetime
from flask import Flask

app = Flask(__name__)
@app.route('/')
def current_time():
    ct =  datetime.datetime.now()
    return f"the current time is: {ct}!\n"

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=5004)