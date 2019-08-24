# Universal

All projects are wrapped in `packages` folder

## Setup Frontend Project
---
### Prerequisites
```
Node: >= v8.11.4
NPM: >= 6.10.2
```


Install project dependencies:
```sh
npm install
```

Start dev server for project:

```sh
npm start <project_name>
```
or if you use `yarn`
```sh
yarn start <project_name>
```

### Start new React Project
Copy react folder from templates directory to packages.

```sh
cp -R templates/react packages/<project_name>
```

Rename project name in `<project_name>/package.json` file.


### Add dependencies in project
open `<project_name>/package.json` file in your project and add dependencies like:
```json
{
    "dependencies": {
        "prop-types": "15.7.2"
    }
}
```
then run bootstrap command:
```sh
npm run bootstrap
```
or
```sh
yarn bootstrap
```


## Setup Backend Project
---
### Prerequisites
```
Python: >3.5
Django: 2.1
```

Install `virtualenv` globally:

```sh
pip install virtualenv
# or using pip3
pip3 install virtualenv
```

Create virtual environment for Python3:

```sh
virtualenv -p python3 venv/
```

Activate `virtualenv` on `mac/linux`:

```sh
source venv/bin/activate
```

Install `requirements` using `pip` or `pip3`:

```sh
# make sure virtual environment is activated
pip install -r requirements.txt
# or using pip3
pip3 install -r requirements.txt
```

## Starting new Django project

```sh
cd packages/
```

```sh
django-admin startproject <project_name>
cd <project_name> && touch requirements.txt
```

Add project `requirement.txt` into root `requirement.txt`
```sh
-r packages/<project_name>/requirements.txt
```

## Get Started With Django 2.1
---
[API Reference](https://docs.djangoproject.com/en/2.1/ref/)

[Writing your first Django app](https://docs.djangoproject.com/en/2.1/intro/tutorial01/)
<br>
<br>
<br>

## Collaboration
---
[Create an issue](https://innovaccer.atlassian.net/secure/RapidBoard.jspa?projectKey=IW&rapidView=96)

### Guide to git:

Create a branch for issue/ticket:

```sh
git checkout -b feature/<ticket-id>
```

Commit your changes with ticket-id and changes: [view commit guide](https://docs.google.com/document/d/1KbGA00ptD9nLyCLHOrJlXEVW3bWA5WjbG2PM2gH--9g/edit?ts=5d318833)

Create a `Merge Request (MR)` against `develop` branch.


### Known issue UTF-8 value error
Export global variables
```sh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
```

## Deployment
Deployment hooks are only configured to specific branch
