# TP4

Dans ce Repos, il y a deux branches.
Mais elles n'ont pas vocation à merger.
Elle servent à séparer deux environement de déploiement.
Un environement sur Dokcer et un autre sur Kubernetes.

Le pipelines de la branche Dev se déclenche soit sur un commit d'un Dev sur la branche, soit par manuelement.
Idem pour le pipeline de la branche main.

Le pipeline de la branche Dev récupère l'image Docker et la deploit vers Docker sur une VM GCP.
et test etc

Le pipeline de la branche main résupère l'image Docker et le déploit dans un cluser Kubernetes.
