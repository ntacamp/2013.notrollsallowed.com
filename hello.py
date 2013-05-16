import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return '<p>Hello Trolls!</p><p><a href="https://groups.google.com/forum/?fromgroups=#!forum/no-trolls-allowed">Join our mailing group @ Google Groups</a></p><p>IRC: #parallax-manufactory @ Freenode</p><p>Twitter: <a href="http://www.twitter.com/ntacamp">@ntacamp</a></p>'
