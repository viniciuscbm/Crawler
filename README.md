# Crawler API RESTfull

Crawler para efetuar uma busca de frases no site [Quotes](http://quotes.toscrape.com/) através de tags e salvá-las em um banco de dados não relacional (MongoDB).

## Começando

Todo o projeto foi construído em cima do Docke e Docker Compose. Essas são as únicas dependências que vão ser necessárias para rodar o projeto.
[Docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/) 
[Docker Composer](https://docs.docker.com/compose/install/)

### Como executá-lo

Com as dependências instaladas rode o comando abaixo para baixar as imagens do docker e subir os containers.
```
make up
```
Pronto! Projeto pronto para testes locais! \o/

### Testando as funcionalidades

Para testar vai ser necessário utilizar algum software para fazer as requests. Neste exemplo explicaremos como utilizar o Postman, mas pode ser usado qualquer outro a sua escolha.

Já com o Postman instalado, tente fazer uma request para endpoint abaixo para verificar a necessidade de se autenticar.

```
GET localhost:3000/api/v1/quotes?tags=life
Resultado:
{
    "errors": [
        "You need to sign in or sign up before continuing."
    ]
}
```

Para ser autenticar no sistema vai ser necessário criar um novo usuário, para tanto, siga os passos abaixo:

```
POST localhost:3000/api/v1/auth
Body:
{
	"email": "test@test.com",
	"password": 12345678
}
Resultado:
{
    "status": "success",
    "data": {
        "allow_password_change": false,
        "created_at": "2018-12-11T21:37:04.740Z",
        "email": "test@test.com",
        "locker_locked_at": null,
        "locker_locked_until": null,
        "provider": "email",
        "reset_password_redirect_url": null,
        "uid": "test@test.com",
        "updated_at": "2018-12-11T21:37:04.883Z",
        "id": "5c102e0072c9ae000c7150ba"
    }
}
```
Acessando os headers vai ser possível visualizar informações como: 
```
    "access-token" => "rB7niXvHunDZtZ1iQsQKGQ",
      "token-type" => "Bearer",
          "client" => "NVwz7Ym2gZQUR8Vpukk4ag",
          "expiry" => "1545773998",
             "uid" => "test@test.com"
```
Copie os metas dados gerado por você e adicione aos headers da request da próxima request:
```
GET localhost:3000/api/v1/quotes?tags=life
Resultado:
{
    "quotes": [
        {
            "quote": "“Life is like riding a bicycle. To keep your balance, you must keep moving.”",
            "author": "Albert Einstein",
            "author_about": "/author/Albert-Einstein",
            "tags": [
                "life",
                "simile"
            ]
        },
        {
            "quote": "“There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle.”",
            "author": "Albert Einstein",
            "author_about": "/author/Albert-Einstein",
            "tags": [
                "inspirational",
                "life",
                "live",
                "miracle",
                "miracles"
            ]
        },
        ...
    ]
}
```
Nesse momento o resultado foi gravado no banco de dados e na próxima consulta os dados serão recuperados do banco.

###### Observação:
O Devise Auth Token está configurado para mudar de token a cada requisição, para tanto, o access-token precisa ser alterado a cada requisição, onde o novo token é gerado a cada request, sendo necessário pegar nos heards e adicionar na nova request.

## Rodando os testes
Os testes foram escritos com framework Rspec.

```
make rspec
```

### Qualidade de código
Como em qualquer outro projeto, a qualidade é extremamente importante para manutenção e evolução do mesmo, portanto, execute o comando abaixo para rodar as seguintes gems: Fasterer, RubyCritic, Rubocop, Brakeman, Bundler Audit e Rails Best Practices.

```
make update
```

### Documentação

Como qualquer outro projeto de software a documentação é extremamente importante. Para facilitar a vida dos desenvolvedores foi integrado ao projeto o Swagger para documentar a API e posteriormente disponibilizar a documentação para a equipe de front-end. O Swagger pode ser acessado através da URL abaixo:

```
http://localhost:8080
```

## Desenvolvido com

* Ruby on Rails - 5.2.2
* MongoDB - 7.0.2
* Devise Auth Token - 1.0.0
* Active Model Serializer - 0.10.8
* Nokogiri - 1.5.9
* Rspec - 3.3
* FactoryBot - 4.11.1
* Mongoid-Rspec - 4.0.1

## Author

* **Vinicius Camboim** - *FullStack Developer*