from flask import Blueprint, render_template

page = Blueprint('page', __name__, template_folder='templates')


@page.route('/')
def home():
    return render_template('page/home.html')


@page.route('/results')
def results():
    return render_template('page/results.html')


@page.route('/execution')
def execution():
    return render_template('page/execution.html')

@page.route('/pecube')
def pecube():
    return render_template('page/pecube.html')
