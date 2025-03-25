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

## Caso de ruim na instalação, altere a versão do Python para 3.10.x
### MacOS

#### Instale a 3.10
```sh
brew install python@3.10
```

#### Ative essa versão no terminal:
```sh
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
```

#### Verifique novamente a versão do Python:
```sh
python --version
```

#### Criar um Ambiente Virtual
```sh
python3 -m venv venv
source venv/bin/activate
make setup
make run
```

# Como realizar as requisições para os endpoints?
## Autenticação
No campo Bearer Auth coloque a senha: `MV2022`