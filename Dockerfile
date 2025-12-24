FROM python:3.12-slim  # Image de base Python
WORKDIR /app  # Dossier de travail dans le conteneur
COPY requirements.txt .  # Copie les dépendances
RUN pip install -r requirements.txt  # Installe les dépendances
COPY . .  # Copie tout le code
EXPOSE 5000  # Port exposé
CMD ["python", "app.py"]  # Commande pour lancer l'app