
from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'NGUYEN QUOC VIET'

app.run(host='0.0.0.0', port=80, debug=True)
dv