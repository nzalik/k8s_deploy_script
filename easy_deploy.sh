# #!/bin/bash

# # Définir les noms des fichiers de déploiement
# DEPLOYMENT_FILES=("clusterRole.yaml" 
# "config-map.yaml" "prometheus-service.yaml"
#  "prometheus-deployment.yaml")

# # Définir le namespace si nécessaire
# NAMESPACE="default"

# # Parcourir les fichiers de déploiement et les exécuter
# for file in "${DEPLOYMENT_FILES[@]}"; do
#     echo "Applying $file..."
#     kubectl apply -f $file --namespace=$NAMESPACE

#     # Attendre que la ressource soit prête (par exemple, les pods)
#     kubectl wait --for=condition=available --timeout=300s deployment -l app=${file%.yaml} --namespace=$NAMESPACE
# done

# echo "Déploiement terminé avec succès!"


#!/bin/bash

messages=("Bonjour" "Bonsoir")

for message in "${messages[@]}"; do
    echo "Déploiement de $message"
    sleep 20
done