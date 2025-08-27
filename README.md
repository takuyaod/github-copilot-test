# Next.js 15 + Docker Development Environment

This project is a modern web application built with Next.js 15, React 19, TypeScript, and Tailwind CSS, containerized with Docker for consistent development environments.

## 🚀 Features

- **Next.js 15** with React 19 and Turbopack for fast builds
- **TypeScript** for type safety
- **Tailwind CSS** for styling
- **Docker** containerization for consistent development
- **ESLint** for code quality
- **Hot reload** development server

## 📋 Prerequisites

- [Node.js](https://nodejs.org/) (v20 or higher)
- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## 🛠 Setup Instructions

### Option 1: Local Development (Recommended for development)

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd github-copilot-test
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Run the development server:**
   ```bash
   npm run dev
   ```

4. **Open your browser:**
   Navigate to [http://localhost:3000](http://localhost:3000) to see the application.

### Option 2: Docker Development Environment

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd github-copilot-test
   ```

2. **Start the development environment:**
   ```bash
   docker compose --profile dev up nextjs-dev
   ```

3. **Open your browser:**
   Navigate to [http://localhost:3000](http://localhost:3000) to see the application.

### Option 3: Production Docker Build

1. **Build the Docker image:**
   ```bash
   docker build -t nextjs-app .
   ```

2. **Run the production container:**
   ```bash
   docker run -p 3000:3000 nextjs-app
   ```

3. **Open your browser:**
   Navigate to [http://localhost:3000](http://localhost:3000) to see the application.

### Option 4: Production with Docker Compose

1. **Build and start the production environment:**
   ```bash
   docker compose up nextjs
   ```

2. **Open your browser:**
   Navigate to [http://localhost:3000](http://localhost:3000) to see the application.

## 📁 Project Structure

```
github-copilot-test/
├── src/
│   └── app/
│       ├── globals.css
│       ├── layout.tsx
│       └── page.tsx
├── public/
├── Dockerfile
├── docker-compose.yml
├── .dockerignore
├── package.json
├── tsconfig.json
├── next.config.ts
├── tailwind.config.ts
└── README.md
```

## 🔧 Available Scripts

- `npm run dev` - Start the development server with Turbopack
- `npm run build` - Build the application for production
- `npm start` - Start the production server
- `npm run lint` - Run ESLint for code quality checks

## 🐳 Docker Configuration

### Development Container
- **Image:** `node:20-alpine`
- **Port:** 3000
- **Features:** Hot reload, volume mounting for live code changes
- **Command:** `npm run dev`

### Production Container
- **Multi-stage build** for optimized image size
- **Standalone output** for minimal runtime footprint
- **Non-root user** for security
- **Port:** 3000

## 🧪 Testing the Setup

1. **Verify Next.js works locally:**
   ```bash
   npm run dev
   ```

2. **Verify Docker development environment:**
   ```bash
   docker compose --profile dev up nextjs-dev
   ```

3. **Verify production Docker build:**
   ```bash
   docker build -t nextjs-app . && docker run -p 3000:3000 nextjs-app
   ```

## 📚 Learn More

- [Next.js 15 Documentation](https://nextjs.org/docs) - Learn about Next.js features and API
- [React 19 Documentation](https://react.dev/) - Learn about React features
- [TypeScript Documentation](https://www.typescriptlang.org/docs/) - Learn about TypeScript
- [Tailwind CSS Documentation](https://tailwindcss.com/docs) - Learn about utility-first CSS
- [Docker Documentation](https://docs.docker.com/) - Learn about containerization

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test locally and with Docker
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License.
