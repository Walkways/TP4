#!/bin/bash

# Obtenir l'adresse IP externe de la VM
ip=$(gcloud compute instances describe myvm --format="get(networkInterfaces[0].accessConfigs[0].natIP)")

# Construire l'URL avec le port 5000
url="$ip:5000"

# Effectuer une requête HTTP avec curl
curl "$url"
