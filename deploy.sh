#!/bin/bash

deploy_pod() {
    file_name=$1
    kubectl apply -f "$file_name"
}

main() {
    files=(
        "clusterRole.yaml""
        "config-map.yaml"
        "prometheus-service.yaml"
        "prometheus-deployment.yaml"
    )

    for file_name in "${files[@]}"; do
        deploy_pod "$file_name"
    done
}

main