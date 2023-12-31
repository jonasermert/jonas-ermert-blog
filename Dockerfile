# Verwende das offizielle Node.js-Basis-Image
FROM node:14

# Setze das Arbeitsverzeichnis im Container
WORKDIR /app

# Kopiere package.json und package-lock.json in den Container
COPY package*.json ./

# Installiere die Abhängigkeiten
RUN npm install

# Kopiere den gesamten Projektcode in den Container
COPY . .

# Baue das Gatsby-Projekt
RUN npm run build

# Exponiere den Port, den Gatsby verwendet (Standard: 8000)
EXPOSE 8000

# Definiere den Befehl, um das Gatsby-Projekt auszuführen
CMD ["npm", "run", "serve"]
