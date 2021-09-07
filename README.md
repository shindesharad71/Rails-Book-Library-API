# Book Library API Using Rails

Basic REST API example created using rails while learning.

## Installation and Setup

1. Make sure Ruby is installed on your system. Fire command prompt and run command:

```bash
ruby -v
```

2. Make sure Rails is installed

```bash
rails -v
```

3. Clone this git repository

```bash
git clone git@github.com:shindesharad71/Rails-Book-Library-API.git
```

4. Install all dependencies

```bash
bundle install
```

5. Update database configuration in `config/database.yml` file

6. Create db and migrate schema

```bash
rake db:create
rake db:migrate
rake db:seed
```

7. Now run your application

```bash
rails s
```

```txt
Open a browser window and go to -  
http://localhost:3000/api/v1/books/
```

[credits](https://medium.com/swlh/how-to-build-an-api-with-ruby-on-rails-28e27d47455a)
