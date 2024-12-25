@echo off

echo ===Starting Kind Cluster===
kind create cluster --name microservices --config kind-config.yaml

echo Loading Docker Images into Kind Cluster
call kind-load.bat

echo ===Kind Cluster Started===

@echo on
