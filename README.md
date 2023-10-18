<a name="readme-top"></a>

<div align="center">

  <h1><b>Budget App</b></h1>

</div>

<!-- TABLE OF CONTENTS -->

## 📗 Table of Contents

- [📖 Budget app ](#-budget-app-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
    - [Live link ](#live-)
    - [Video walkthrough ](#walkthrough-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
  - [👥 Author ](#-author-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 budget app <a name="about-project"></a>

**Budget app** The budget app is an app, built with rails, that allows users enter various categories and also enter the expenses for each category and gives them the ability to monitor how much they spend on certain things.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Server</summary>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
</details>
<details>
  <summary>Database</summary>
    <li><a href="https://www.postgresql.org/">Postgres</a></li>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Built using Ruby on Rails**
- **User authentication**
- **User can create categories**
- **User can enter expenses**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Live Link <a name="live"></a>

Feel free to check the [live app here](https://budget-app-u9ai.onrender.com).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Video Walkthrough <a name="walkthrough"></a>

Feel free to check the [video walkthrough here](https://www.loom.com/share/516123d2616d486ab130f8797b3de50b?sid=7bfe6963-3b1e-4b27-a01f-0892ae645fbf).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```
    ruby >= 3.2.0
    rails >= 7.0
    postgres >- 15.3
```

### Setup

Clone this repository to your desired folder:

```bash
  git clone https://github.com/Othniel2471/budget_app.git
```

You need to setup database for these project

```
  development = budget_app_developmen
  test        = budget_app_test
  production  = budget_app_production
```

or you can use your own database and change the `config/database.yml`

```yml
default: &default
  adapter: postgresql
  encoding: unicode
  pool: 5
  username: [your_username]
  password: [your_password]
  host: localhost

development:
  <<: *default
  database: [your_database_for_development]

test:
  <<: *default
  database: [your_database_for_test]

production:
  <<: *default
  database: [your_database_for_production]
```

### Install

Install this project with:

```bash
  cd budget-app
  bundle install
```

it will install the required gemfile for running the project

### Usage

to use this project:

```ruby
   bin/rails server
```

it will run the the server on `localhost:3000`

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Tests

to run tests for this project

```cmd
    rspec spec/features
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Author <a name="author"></a>

👤 **OMAIDU OTHNIEL**

- GitHub: [OMAIDU OTHNIEL](https://github.com/othniel2471)
- Twitter: [OMAIDU OTHNIEL](https://twitter.com/@Oomaidu)
- LinkedIn: [OMAIDU OTHNIEL](https://www.linkedin.com/in/othniel-omaidu-3350a9164)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- **Add UI System**
- **Email confirmation for users**
- **Add mailing service**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Othniel2471/budget_app/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project you can share this project to your friend

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank microverse for this project

Original design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
