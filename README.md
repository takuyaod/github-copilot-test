# github-copilot-test

Next.js 15 + Docker environment setup for the repository.

This is a [Next.js](https://nextjs.org) project bootstrapped with [`create-next-app`](https://nextjs.org/docs/app/api-reference/cli/create-next-app), configured with Docker for both development and production environments.

## Features

- ⚡ Next.js 15.5.2 with App Router
- 🐳 Docker support for development and production
- 🎨 Tailwind CSS for styling
- 📝 TypeScript support
- 🔍 ESLint configuration
- 🚀 Optimized production builds with standalone output

## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your machine
- [Docker Compose](https://docs.docker.com/compose/install/) (included with Docker Desktop)

### Development with Docker

#### Option 1: Using Docker Compose (Recommended)

For development with hot reload:

```bash
docker-compose up nextjs-dev
```

For production mode:

```bash
docker-compose up nextjs-app
```

#### Option 2: Using Docker directly

Development:
```bash
docker build -f Dockerfile.dev -t github-copilot-test-dev .
docker run -p 3000:3000 -v $(pwd):/app -v /app/node_modules github-copilot-test-dev
```

Production:
```bash
docker build -t github-copilot-test .
docker run -p 3000:3000 github-copilot-test
```

### Local Development (without Docker)

If you prefer to run locally without Docker:

```bash
# Install dependencies
npm install

# Run the development server
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `src/app/page.tsx`. The page auto-updates as you edit the file.

## Docker Configuration

### Files Overview

- `Dockerfile`: Production-optimized multi-stage build
- `Dockerfile.dev`: Development environment with hot reload
- `docker-compose.yml`: Orchestrates both development and production containers
- `.dockerignore`: Excludes unnecessary files from Docker context

### Available Services

- `nextjs-app`: Production container (port 3000)
- `nextjs-dev`: Development container with hot reload (port 3001)

### Environment Variables

You can customize the application behavior using environment variables:

- `NODE_ENV`: Set to `development` or `production`
- `PORT`: Port number (default: 3000)
- `NEXT_TELEMETRY_DISABLED`: Disable Next.js telemetry (optional)

## Scripts

- `npm run dev`: Start development server
- `npm run build`: Build for production
- `npm run start`: Start production server
- `npm run lint`: Run ESLint

## Project Structure

```
├── src/
│   ├── app/
│   │   ├── globals.css
│   │   ├── layout.tsx
│   │   └── page.tsx
├── public/
├── Dockerfile
├── Dockerfile.dev
├── docker-compose.yml
├── .dockerignore
├── next.config.ts
├── package.json
├── tailwind.config.ts
└── tsconfig.json
```

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.
- [Docker Documentation](https://docs.docker.com/) - learn about Docker and containerization.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js) - your feedback and contributions are welcome!

## Deploy

### Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

### Docker Deploy

You can deploy this application using Docker on any container platform:

```bash
# Build production image
docker build -t github-copilot-test .

# Run in production
docker run -p 3000:3000 github-copilot-test
```

Check out our [Next.js deployment documentation](https://nextjs.org/docs/app/building-your-application/deploying) for more details.
