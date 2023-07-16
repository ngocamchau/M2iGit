#POURQUOI CE SCRIPT ?
# =====> Pour avoir systèmatiquement la dernière version de docker stable

#Installation de curl si necessaire
sudo apt install curl -y

#telechargement du script d'installation docker latest
sudo curl -fsSL https://get.docker.com -o install-docker.sh

#Execution du script d'installation docker
sudo sh ./install-docker.sh

#Ajout de l'user courant dans le groupe docker
sudo usermod -aG docker $USER  #variable user ajouté dans groupe mais necessite sudo . Investigation???

#Reload du bash pour en tenir compte 
exec bash

#Executer docker lors du démarrage de linux
sudo systemctl enable docker

#Testing et versionning de docker ps
docker ps
docker --version
