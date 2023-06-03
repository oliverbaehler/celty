


kind-up:
	kind create cluster --name celty

kind-down:
	kind delete cluster --name celty



install-dolphin:
	helm repo add bitnami https://charts.bitnami.com/bitnami
	cd hack/dolphine/ && helm dependency update . && helm install dolphinscheduler . --set image.tag=latest --create-namespace --namespace celty

uninstall-dolphin:
	helm uninstall dolphinscheduler --namespace celty