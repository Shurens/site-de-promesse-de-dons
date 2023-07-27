from flask import Flask, render_template, request
from models.data import Data

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/image')
def static_image():
    return render_template('chiffre.jpg')

@app.route('/don')
def don():
    return render_template('don.html')

@app.route('/conditions')
def conditions():
    return render_template('conditions.html')

@app.route('/confirmation', methods=['POST'])
def confirmation():
    nom=request.values.get('nom')
    prenom=request.values.get('prenom')
    adresse=request.values.get('adresse')
    email=request.values.get('email')
    don=request.values.get('don')
    Data.donation(nom,prenom,adresse,email,don)
    return render_template('confirmation.html', nom=nom, prenom=prenom)

@app.route('/cagnotte')
def cagnotte():
    informations = Data.donateur()
    total = Data.total()
    return render_template('cagnotte.html', informations=informations, total=total)
    


if __name__=='__main__':
    app.run(debug=True)