#!/bin/bash

contexts=("context-1" "context-2" "context-3" )

for context in ${contexts[@]};
do 
#kubectl config use-context $context
#kubectl version --output=json | jq '.serverVersion.gitVersion'
#kubeaudit all >> ./audits/$context
#kubectl get nodes
#kubectl get po,svc,roles,rolebindings,clusterroles,clusterrolebindings,networkpolicies,psp,no,ns,pv,pvc,rc,crds,ds,deploy,rs,sts,ing --all-namespaces -o json > $context-clusterconfig.json
./Tools/offline-cluster-analyser.rb -i ./$context-clusterconfig.json 

done