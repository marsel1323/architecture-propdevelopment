# Task 5 — Управление трафиком внутри кластера Kubernetes

Развёрнуты 4 сервиса с ролями:

- front-end-app (role: front-end)
- back-end-api-app (role: back-end-api)
- admin-front-end-app (role: admin-front-end)
- admin-back-end-api-app (role: admin-back-end-api)

Созданы 2 сетевые политики:

- `non-admin-api-allow.yaml`: разрешает доступ от front-end к back-end-api
- `admin-api-allow.yaml`: разрешает доступ от admin-front-end к admin-back-end-api

Трафик между остальными подами заблокирован. Проверка выполнена через Alpine `wget`.