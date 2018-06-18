# Catalog Service Database
CRUD Service of [catalog service](https://github.com/ahlp/catalog-service)

# How To Build

 - cd Catalog
 - docker run -d -p 5432:5432 --name csd-crudb -v postgres:/var/lib/postgresql/data postgres:9.5
 - docker build -t csd-crud .
 - docker run -p 3000:3000 --link csd-crudb:csd-crudb --name app_container csd-crud

# Dependencies
 
 - 'rails', '~> 5.1.4'
 - 'pg', '~> 0.18'
 - 'puma', '~> 3.7'
 - 'jbuilder', '~> 2.5'
 - 'rack-cors'
 - 'exception_notification'
 - 'httparty'
 - 'dragonfly', '~> 1.1.5'
 - 'tzinfo-data'

### useful link

[Instructions](http://www.coshx.com.s3-website-us-east-1.amazonaws.com/blog/2016/08/23/configuring-docker-to-work-with-an-existing-rails-application/)
