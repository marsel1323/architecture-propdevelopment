#!/bin/bash

# Создание пользователей (сертификатный подход)
# Не для production — только демонстрационная генерация

mkdir -p users
cd users

for user in devops analyst; do
  openssl genrsa -out $user.key 2048
  openssl req -new -key $user.key -out $user.csr -subj "/CN=$user/O=prop-group"
  openssl x509 -req -in $user.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key -CAcreateserial -out $user.crt -days 365
done