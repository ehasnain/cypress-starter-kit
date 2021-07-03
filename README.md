# cypress-starter-kit &middot; [![Build Status](https://github.com/ehasnain/cypress-starter-kit/workflows/CI/badge.svg?branch=master)](https://github.com/ehasnain/cypress-starter-kit/actions?query=workflow%3A%22CI%22+branch%3Amaster) [![Issues](https://img.shields.io/github/issues/ehasnain/cypress-starter-kit)](https://github.com/ehasnain/cypress-starter-kit/issues) [![GitHub license](https://img.shields.io/github/license/ehasnain/cypress-starter-kit)](https://github.com/ehasnain/cypress-starter-kit/blob/master/LICENSE)

A simple ready-to-use Cypress Testing Tool starter kit to integrate with an existing project.

## Higlights 🔦

🐳 Docker &middot; 🏷 TypeScript &middot; 🔍 Eslint &middot; 🪄 Makefile

## Getting Started 🚦

### First steps

- Clone the repository. 📑

```sh
git clone git@github.com:ehasnain/cypress-starter-kit.git
```

- Create a directory with a desired name for the e2e tests at the desired location in your project. 🗂

- Copy the contents of the cloned repository in to the created directory. 📔➡📔  
Following files can be ignored:
  - .github/*
  - *.md

- You are ready to go now ✅

### Test run

- Start the tests

```sh
    make test
```

Note: Chrome Browser is the default browser for running the tests. This can be changed inside the script `./scripts/test-local.sh`

## Writing your own tests ✍️

You can write your tests inside the director src/tests.  
A simple example of extracting a page's components with its actions and selectors can be found inside the directory `src/pages`.  
The existing example tests from Cypress can be deleted if not needed.  
Refer [docs.cypress.io](https://docs.cypress.io/) for more information about how to write tests in Cypress.

## Continuous Integration 🔗

For running the tests on a CI envorinment with docker use the command:

```sh
make test-ci
```

This will run the tests inside a docker container. A JUnit test report is generated at the end of the tests inside the directory `test-results/junit/test-results.xml`.

## More

More details of the current changes can be read in [CHANGELOG](./CHANGELOG.md).
The CHANGELOG has been automatically generated from the git commits with the help of [generate-changelog](https://github.com/lob/generate-changelog) tool.  
  
Feel free to create PRs, report Bug and Issues or simply write me at ehteshamhasnain@gmail.com.  
  
LinkedIn: [@ehteshamhasnain](https://www.linkedin.com/in/ehteshamhasnain/).

Have a happy testing! 😊

## License

cypress-starter-kit is licensed under the terms of the [MIT license](./LICENSE).
