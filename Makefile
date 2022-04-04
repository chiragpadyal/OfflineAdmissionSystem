VENV = venv
PYTHON = $(VENV)/bin/python3
PIP = $(VENV)/bin/pip

run: $(VENV)/bin/activate
	$(PYTHON) run.py


$(VENV)/bin/activate: requirements.txt
	python3 -m venv $(VENV)
	$(PIP) install -r requirements.txt


clean:
	rm -rf __pycache__
	rm -rf components/__pycache__
	rm -rf $(VENV)

docker: MysqlDocker/docker-compose.yml
	docker-compose -f MysqlDocker/docker-compose.yml up -d
	echo "wait 2 minutes"

docker-stop: 
	docker container stop mysql_PythonMiniProject 
 
docker-start: 
	docker container start mysql_PythonMiniProject 

docker-remove:
	docker container stop mysql_PythonMiniProject
	docker container rm -v mysql_PythonMiniProject

mysql-dump: MysqlDocker/init/dataBaseDump.sql
	rm -r MysqlDocker/init/dataBaseDump.sql
	mysql -uroot -proot -h127.0.0.1 -P3307 Inhouse_Admission_System > MysqlDocker/init/dataBaseDump.sql

mysql-restore: MysqlDocker/backup/dataBaseDump.sql
	rm -r MysqlDocker/init/dataBaseDump.sql
	cp MysqlDocker/backup/dataBaseDump.sql MysqlDocker/init/



