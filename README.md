# Docker Compose Setup for Backend, Frontend, PostgreSQL, and pgAdmin

This Docker Compose setup includes containers for a backend application using Go, a frontend application using Next.js, a PostgreSQL database, and pgAdmin for database management.

## Usage

To start the containers, navigate to the directory containing the `docker-compose.yml` file and run:

```bash
docker-compose up
```

This command will start all the services defined in the `docker-compose.yml` file.

## Services

### Backend (Go)

- **Service Name:** backend
- **Image:** Built from the Dockerfile located in the `./backend/` directory.
- **Container Name:** backendoop
- **Exposed Port:** 3001
- **Dependencies:** Depends on the database service.

### Frontend (Next.js)

- **Service Name:** frontend
- **Image:** Built from the Dockerfile located in the `./frontend/` directory.
- **Container Name:** frontendoop
- **Exposed Port:** 3000
- **Volume:** Mounts the `./frontend` directory to `/app` in the container for live code updates.

### Database (PostgreSQL)

- **Service Name:** database
- **Image:** postgres:latest
- **Container Name:** databaseoop
- **Exposed Port:** 5432
- **Volume:** Mounts the `./database` directory to `/var/lib/postgresql/data` for persisting database data.
- **Environment Variables:**
  - POSTGRES_USER: admin
  - POSTGRES_PASSWORD: admin1234
  - POSTGRES_DB: mydb

### pgAdmin

- **Service Name:** pgadmin
- **Image:** dpage/pgadmin4
- **Container Name:** postgresadminoop
- **Exposed Port:** 5050
- **Environment Variables:**
  - PGADMIN_DEFAULT_EMAIL: admin@gmail.com
  - PGADMIN_DEFAULT_PASSWORD: admin1234

## Accessing Services

- **Backend Application:** Accessible at [http://localhost:3001](http://localhost:3001)
- **Frontend Application:** Accessible at [http://localhost:3000](http://localhost:3000)
- **PostgreSQL Database:** Exposed on port 5432
- **pgAdmin:** Accessible at [http://localhost:5050](http://localhost:5050) with the provided email and password.

## Configuration

Make sure to update environment variables and other configurations in the `docker-compose.yml` file as per your requirements before running the containers.