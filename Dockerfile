# Stage 1: Build
FROM node:20-alpine AS build

WORKDIR /app

# Enable corepack and prepare pnpm
RUN corepack enable

# Copy all needed lock files
COPY package.json pnpm-lock.yaml ./

# Install dependencies using pnpm
RUN pnpm install

# Copy the rest of the source code
COPY . .

# Build the app
RUN pnpm build

# Stage 2: Production
FROM node:20-alpine AS production

WORKDIR /app

# Enable corepack again and install pnpm in this stage
RUN corepack enable

# Copy only necessary files
COPY package.json pnpm-lock.yaml ./
COPY --from=build /app/dist ./dist

# Install only production dependencies
RUN pnpm install --prod

# Start the application
CMD ["node", "dist/main"]
