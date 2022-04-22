# Book-Tesla
![](https://img.shields.io/badge/Microverse-blueviolet) ![](https://img.shields.io/badge/Ruby-red) ![](https://img.shields.io/badge/Rails-critical)
>API built with Rails where your users can create bookings for a given car:
## About

Book-a-Tesla is a Rails only API project where your users can create bookings for a given car. With the endpoints, developers can integrate the front-end of their web-app to create users, cars and bookings.

Front-end of Book-a-Tesla can be found [here](https://github.com/Maclenn77/book-tesla-frontend/).

## Description

Rent a Tesla API is organized around REST. Our API has predictable resource-oriented URLs, accepts form-encoded request bodies, returns JSON-encoded responses, and uses standard HTTP response codes, authentication, and verbs.

With this API, developers can interact with the database to create, edit or delete users, cars, and bookings.

Check complete documentation with 

`rails s`

And then, open the API docs in the [local server](http://localhost:8000).

## Built With

- Ruby
- Rails
- Rswag
- Rspec
- VS Code

## Getting Started
To get a local copy up and running follow these simple steps.

### Prerequisites
- Having a modern internet browser: I.E. Chrome, Edge, Safari, Firefox.
- Being able to run a local server and rails commands
- Bundle

### Setup
- Go into the main page for this project: https://github.com/lu-jim/book-tesla
- Click the green Code button next to the About section.
- Select the then click the 📋 button.
### Install
- Open your console and change the current working directory into the destination for this project.
- Type `git clone`, and then paste the URL copied in the Setup section.
- Type Enter and then enter `cd book-tesla` to enter into the project directory.
- Run `bundler install` to install the required dependencies

## Run
```sh
rails db:create # create database
rails db:migrate # migrate tables
rails db:seed # load dummy database from seed.rb

rails s # run the api
```
By default, the project will run in the port 8000.

### Testing
- Run `rspec spec` to run the tests for this project

### Project

- Link to the [Kanban board](https://github.com/lu-jim/book-tesla/projects/1)

## Authors

👤 **Luis Fernando Jimenez**

- GitHub: [@lu-jim](https://github.com/lu-jim)
- Twitter: [@lujimhe](https://twitter.com/lujimhe)
- LinkedIn: [@lujim](https://www.linkedin.com/in/lujim/)

👤 **Juan Paulo Pérez-Tejada**

- GitHub: [@Maclenn77](https://github.com/Maclenn77)
- Twitter: [@SrJuanPapas](https://twitter.com/srjuanpapas)
- LinkedIn: [@juanpaulopereztejada](https://www.linkedin.com/in/juanpaulopereztejada/)

👤 **Mohammad Mouaz Molki**

- GitHub: [@iammouaz](https://github.com/iammouaz)
- Twitter: [@MoazMulki1](https://twitter.com/MoazMulki1)
- LinkedIn: [@mouaz-molki](https://www.linkedin.com/in/mouaz-molki/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

[Open an issue here](https://github.com/lu-jim/book-tesla/issues/new).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse for the guidelines used for this project
- Original design idea for the front-end by [Murat Korkmaz on Behance](https://www.behance.net/muratk).
- My SO and project manager, Mane
## 📝 License

This project is [MIT](./LICENSE) licensed.
