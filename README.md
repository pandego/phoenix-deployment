# An Awesome LangSmith-like (Phoenix) Deployment
## Intro
Quick tuto to deploy a LangSmith-like instance using the Phoenix Docker Image.

A repo to facilitate the deploy a LangSmith-like instance using the [Phoenix](https://docs.arize.com/phoenix) Docker Image.
Everything is set in the `docker-compose.yml`. You'll have 2 services:
  - The Phoenix Service 👉 [Phoenix](https://hub.docker.com/r/arizephoenix/phoenix);
  - The Postgres Database Service 👉 [Postgres](https://hub.docker.com/_/postgres).

## Pre-requisits
- Debian OS (Ubuntu or WSL)
- Docker Engine installed

# Environment
This was testing on **Ubuntu only**, but it should work well on **MacOS** and **Windows WSL**.

Apart from that you will need somethings installed:

- [Docker & Docker Compose](https://docs.docker.com/desktop/install/ubuntu/)

# Deployment
In order to deploy these services, you need to set a few things first:
- Clone this repository and navigate into it:
  ```bash
  https://github.com/pandego/phoenix-deployment.git
  cd phoenix-deployment
  ```
  
### The `.env` File
- Let's keep things clean. So first, copy `default.env` into `.env`:
  ```bash
  mv default.env .env
  ```
- Set up your backup files directory in the `.env` file. Check for variables ending in `_DIR`.

### Deploy it!
- Everything is set in the `docker-compose.yml`. All you have to do now is launch the bash script `deploy.sh`:
    ```bash
    chmod +x deploy.sh  # optional
    sh deploy.sh
    ```

_Et Voilà !_ 🎈
