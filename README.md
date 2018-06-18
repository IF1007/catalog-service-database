# catalog-service-database

CSD serviço de banco e CRUD

## docker

Para rodar usando docker:

1.  `cd Catalog`
2.  `docker run -d -p 5432:5432 --name csd-crudb -v postgres:/var/lib/postgresql/data postgres:9.5`
3.  `docker build -t csd-crud .`
4.  `docker run -p 3000:3000 --link csd-crudb:csd-crudb --name app_container csd-crud`

### useful link

[Instructions](http://www.coshx.com.s3-website-us-east-1.amazonaws.com/blog/2016/08/23/configuring-docker-to-work-with-an-existing-rails-application/)
