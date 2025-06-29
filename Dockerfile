# Stage 1: Build Stage
FROM node:20-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install --only=production

COPY . .

# Stage 2: Runtime Stage
FROM node:20-alpine

WORKDIR /app

COPY --from=builder /app .

CMD ["npm", "start"]
