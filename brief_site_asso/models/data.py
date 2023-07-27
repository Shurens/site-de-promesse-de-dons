from models.connexion import Connexion
class Data:
    def donation(nom,prenom,adresse,email,don):
        cursor = Connexion.connexion()

        query = f"INSERT INTO donations(nom,prenom,adresse,email,don) VALUES('{nom}', '{prenom}', '{adresse}', '{email}', '{don}')"
        cursor.execute(query)
        
        Connexion.deconnexion()

    def donateur():
        cursor = Connexion.connexion()
        query = "SELECT nom, prenom, email, don FROM donations"    

        cursor.execute(query)
        informations = cursor.fetchall()
        Connexion.deconnexion()
        return informations
    
    def total():
        cursor = Connexion.connexion()

        query= "SELECT SUM(don) FROM donations"
        
        
        cursor.execute(query)
        total = cursor.fetchone()[0]
        Connexion.deconnexion()
        return total



