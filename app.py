# app.py
from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def get_info():
    pod_name = os.getenv('POD_NAME')
    node_name = os.getenv('NODE_NAME')
    namespace = os.getenv('POD_NAMESPACE')
    return f"POD_NAME: {pod_name}\nNODE_NAME: {node_name}\nPOD_NAMESPACE: {namespace}"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)

