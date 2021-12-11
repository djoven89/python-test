from flask import Flask, render_template
import os

app = Flask(__name__)

@app.route("/")
def home_page():
    hostname = os.environ.get("HOSTNAME")
    ip = os.environ.get("KUBERNETES_SERVICE_HOST")

    version = "1.0.0"

    return render_template("index.html", version=version, hostname=hostname, ip=ip)

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 8080))
    app.run(debug=True,host='0.0.0.0',port=port)
