#!/bin/bash

# Next.js 15 + Docker Setup Scripts
# This file contains useful scripts for managing the Docker containers

echo "GitHub Copilot Test - Next.js 15 + Docker Environment"
echo "======================================================"

# Function to build production image
build_prod() {
    echo "Building production Docker image..."
    docker build -t github-copilot-test .
}

# Function to build development image
build_dev() {
    echo "Building development Docker image..."
    docker build -f Dockerfile.dev -t github-copilot-test-dev .
}

# Function to run production container
run_prod() {
    echo "Running production container on port 3000..."
    docker run -p 3000:3000 --name github-copilot-test-prod github-copilot-test
}

# Function to run development container
run_dev() {
    echo "Running development container on port 3001..."
    docker run -p 3001:3000 -v $(pwd):/app -v /app/node_modules --name github-copilot-test-dev github-copilot-test-dev
}

# Function to use docker-compose
compose_up() {
    echo "Starting services with docker-compose..."
    docker compose up
}

# Function to clean up containers
cleanup() {
    echo "Cleaning up containers..."
    docker stop github-copilot-test-prod github-copilot-test-dev 2>/dev/null || true
    docker rm github-copilot-test-prod github-copilot-test-dev 2>/dev/null || true
}

# Main script logic
case "$1" in
    "build-prod")
        build_prod
        ;;
    "build-dev")
        build_dev
        ;;
    "run-prod")
        run_prod
        ;;
    "run-dev")
        run_dev
        ;;
    "compose")
        compose_up
        ;;
    "cleanup")
        cleanup
        ;;
    *)
        echo "Usage: $0 {build-prod|build-dev|run-prod|run-dev|compose|cleanup}"
        echo ""
        echo "Commands:"
        echo "  build-prod  - Build production Docker image"
        echo "  build-dev   - Build development Docker image"
        echo "  run-prod    - Run production container on port 3000"
        echo "  run-dev     - Run development container on port 3001"
        echo "  compose     - Start services with docker-compose"
        echo "  cleanup     - Stop and remove containers"
        echo ""
        echo "Or use these npm/docker commands directly:"
        echo "  npm run dev                    - Local development server"
        echo "  npm run build                  - Build for production"
        echo "  npm run start                  - Start production server"
        echo "  docker compose up nextjs-app   - Production container"
        echo "  docker compose up nextjs-dev   - Development container"
        ;;
esac