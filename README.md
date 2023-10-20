# TP4

Dans ce Repos, il y a deux branches.
Mais elles n'ont pas vocation à merger.
Elle servent à séparer deux environement de déploiement.
Un environement sur Docker et un autre sur Kubernetes.

Le pipelines de la branche Dev se déclenche soit sur un commit d'un Dev sur la branche, soit manuelement.
Idem pour le pipeline de la branche main.

Le pipeline de la branche Dev (dev.yml) installe GCloud CLI, récupère l'image Docker, créer une VM avec Docker d'installé, et deploit l'image sur la VM GCP en question.
Le pipeline ouvre le port 5000 sur le Pare-Feu et execute un script avec un Curl pour verifier que le conteneur tourne bien.

Le pipeline de la branche main (main.yml) installe GCloud CLI, récupère l'image Docker, creer un cluster Kubernetes, et déploit l'image dans un cluser Kubernetes
grace au manifest deployment.yaml.


