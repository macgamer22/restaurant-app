FROM node:16
# Set environment variable
ENV PORT=3000

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Installing dependencies
COPY package*.json ./
RUN npm install

# Copying source files
COPY . .

# Building app (if applicable)
RUN npm run build  # Optional if you don't need a build step

# Expose ports
EXPOSE 3000 1337

# Running the app
CMD ["npm", "run", "dev"]