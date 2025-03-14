# Judge API

## Setup

The first step is install poetry and then install the project dependencies

```shell
$ pip install poetry
$ make setup
```

After installing poetry and the dependencies, you need to start docker.

```shell
$ docker-compose up -d
```

After this, run the project.

```shell
$ make run
```

Antes de rodar alterar a seguinte linha em config.py
deixe a linha exatamente assim: 
DATABASE_URL: str = os.environ.get('DATABASE_URL', 'sqlite:///test_db.db')



pip install "pydantic<2"
pip install loguru