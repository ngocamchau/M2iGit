#POURQUOI CE SCRIPT ?
# =====> Pour avoir systèmatiquement la dernière version de docker stable

#Installation de pre requis git & curl si necessaire
sudo apt install curl -y
sudo apt install git -y

#telechargement du sous-script d'installation docker latest depuis docker.com
sudo curl -fsSL https://get.docker.com -o install-docker.sh

#Execution du sous-script d'installation de docker
sudo sh ./install-docker.sh


#Ajout de l'user courant dans le groupe docker
sudo usermod -aG docker $USER
sudo chown $USER /var/run/docker.sock

#Installation docker-compose depuis le script docker_install.sh local
sudo sh ./docker_compose_install.sh

#Reload du bash pour en tenir compte 
exec bash

#Executer docker lors du démarrage de linux
sudo systemctl enable docker

#Testing et versionning de docker ps
docker ps
docker --version
