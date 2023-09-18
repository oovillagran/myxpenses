# MyXpenses

<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [MyXpenses](#myxpenses)
- [📗 Table of Contents](#-table-of-contents)
- [📖 MyXpenses app ](#-myxpenses-app-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo \& preview ](#-live-demo--preview-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Usage](#usage)
    - [Run tests](#run-tests)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 MyXpenses app <a name="about-project"></a>

<div>
  <img src="./app/assets/images/Categories.png" alt="Categories">
  <img src="./app/assets/images/Project4.png" alt="Categories">
</div>

**MyXpenses** is a RoR application about building a mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what. 💰💸💹🤑🪙💴

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

- Ruby
- PostgreSQL

</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Use of Ruby on Rails framework.**
- **Use Ruby Gems as a software packages system**
- **Understand what ORM is**
- **Use database migration files to maintain database schema.**
- **Understand Rails RESTful design and router.**
- **Secure app from n+1 problems.**
- **Use validations for models.**
- **Set up associations between models.**
- **Write integration tests with capybara gem.**
- **Build a webapp that requires the user to log in.**
- **Deploy a RoR application.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo & preview <a name="live demo"></a>

Here you can see a [Live Demo](https://rails-hc3r.onrender.com).

Here there is a [walkthrough](https://www.loom.com/share/afce9db4609b4eb1b44b7299cc74c1c8).

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

Follow these steps in order to run ruby code.

### Prerequisites

First, you need to ensure that you have Rails and Ruby installed on your computer.

### Setup

It varies depending on your operating system so here are some links to help you install it on [Windows](https://gorails.com/setup/windows/10) and on [Ubuntu](https://www.ruby-lang.org/en/documentation/installation/#apt).

For MacOS run the following commands

```sh
  brew install rbenv ruby-build
  # Add rbenv to bash so that it loads every time you open a terminal
  echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
  source ~/.bash_profile

  # Install Ruby
  rbenv install 3.0.1
  rbenv global 3.0.1
  ruby -v
```

This example shows how to install Ruby 3.0.1 which was the latest version in April 2021, but you can check to see if there is a newer version [here](https://www.ruby-lang.org/en/downloads/releases/). Iy is also assumed that you have [homebrew](https://brew.sh/) already installed on your Mac.

### Usage

Once you have ruby installed, [clone this repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)

To run the project, execute the following command in the terminal:
```
bundle install
```
```
rails server
```
In your preferred browser, navigate to:
```
http://localhost:3000
```

### Run tests
To run tests, run the following command in the terminal:
```
rspec
```

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Oscar Villagran**

- GitHub: [@oovillagran](https://github.com/oovillagran)
- Twitter: [@oovillagran](https://twitter.com/oovillagran)
- LinkedIn: [Oscar Villagran](https://www.linkedin.com/in/oovillagran/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> The following are the future features that will be added to the project.

- [ ] **Add API endpoints.**
- [ ] **Add images and videos section.**
- [ ] **Add payment options.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project you can give us a hand by recommending either one of us to potential employers! 😉🤝

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank those who have motivated me to keep on fighting despite how tough the journey may become. I would also like to acknowledge [Gregoire Vella](https://www.behance.net/gregoirevella) and the [Creative Commons](https://creativecommons.org/), who are the the designers for the styles of MyXpenses app.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
