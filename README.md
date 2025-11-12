# Prerequisites
1. Node.js 
2. Docker
3. kubeclt
4. minikube
# Run without Docker
1. Install dependencies: npm install
2. Run: npm run dev
# Run with docker
1. Build an image: docker build -t my-react-app .
2. Run: docker run -p 3000:80 my-react-app
# Run with docker-compose: `docker compose up`
# Run with minikube
1. Run from scratch: ./run-k8s.sh
2. Update source code and deployment:
docker build -t react-app:latest .
kubectl rollout restart deployment react-app
3. Stop minikube: minikube stop
4. Cleanup: minikube delete
# Confirm connection in Minikube Docker: `docker info | grep "Name:"`