
# Offline Admission System

A college offline admission system in python with mailing feature and proper database.



## Run Locally

Clone the project

```bash
  git clone https://github.com/FreakStar03/OfflineAdmissionSystem
```

Go to the project directory

```bash
  cd OfflineAdmissionSystem
```

Use Docker for Mysql Backend

```bash
  sudo apt install docker
  sudo apt install docker-compose
  make docker
```

Run the app

```bash
  make run
```

To Stop the Docker Container

```bash
  make docker-stop
```

To Start the Docker Container

```bash
  make docker-start
```


To Remove the Docker Container

```bash
  make docker-remove
```
To Backup Current DB

```bash
  make mysql-dump
```

To Restore Default DB

```bash
  make mysql-restore
```

## Env Key Setup

App Key of gmail setup for mail-send.py

```bash
  echo "KEY=keyValue" > .env
```



## Authors

- [@Chirag Padyal](https://www.github.com/octokatherine)
- @Anuj-Kundar
- Vishal Bangar
- Jaykumar Nayi
