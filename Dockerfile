# ---- Production ----
FROM node:18-alpine AS production
WORKDIR /dist
COPY .next .
COPY public .
COPY package*.json .
COPY next.config.js .
RUN npm install --omit=dev
# Expose the port the app will run on
EXPOSE 3000

# Start the application
CMD ["yarn", "start"]