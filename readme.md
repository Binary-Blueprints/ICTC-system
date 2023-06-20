This project brings improvement upon the existing website of LICT as well as add a new **Project Management System** it.
<br/>**The Project Management System** can be used to keep records of ongoing projects, and keep the concerned staffs up to date about the status of the project.


## Setup
First run these commands in the outer LICT folder(one that contains manage.py):
<br/>pip3 install requirements.txt
<br/>python manage.py collectstatic
<br/>python manage.py makemigrations
<br/>python manage.py migrate

<br/>Then run:
<br/>python manage.py runserver

<br/>This'll start a webserver, and the app can be browsed from:
<br/>http://127.0.0.1:8000/

**OR USE DOCKER AS**

Use the `./Dockerfile` to create a docker container and use the application. Also, `./docker-compose.dev.yml` file can be used for development purpose as:

`sudo docker compose -f docker-compose.dev.yml up --build`

and access the application at: <br/>http://0.0.0.0:8000/