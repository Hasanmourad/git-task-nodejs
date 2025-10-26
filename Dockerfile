FROM node:18

WORKDIR /app

# Copy only package files first to leverage Docker cache
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
