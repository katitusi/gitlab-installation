# GitLab Installation on OpenShift

## Описание

Этот проект предоставляет файлы конфигурации для установки GitLab на OpenShift.

## Установка

1. Создайте пространство имен:
    ```bash
    kubectl apply -f openshift/namespace.yaml
    ```

2. Создайте PersistentVolumeClaim:
    ```bash
    kubectl apply -f openshift/pvc.yaml
    ```

3. Создайте Deployment (или DeploymentConfig):
    ```bash
    kubectl apply -f openshift/deployment.yaml
    ```

4. Создайте Service:
    ```bash
    kubectl apply -f openshift/service.yaml
    ```

5. (Опционально) Создайте ConfigMap:
    ```bash
    kubectl apply -f openshift/configmap.yaml
    ```

6. Создайте Route:
    ```bash
    kubectl apply -f openshift/route.yaml
    ```

Теперь вы можете получить доступ к GitLab через внешний URL, который будет указан в объекте Route.

## Проверка

Чтобы проверить созданный Route, выполните команду:

```bash
oc get routes -n gitlab-test

Все обновленные файлы корректны и готовы к использованию. Если у вас есть дополнительные вопросы или возникнут проблемы, дайте знать!
