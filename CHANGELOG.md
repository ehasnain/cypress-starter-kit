#### 1.0.0 (2021-07-03)

##### Build System / Dependencies

* **docker-compose:**  add docker-compose.yaml and add command in makefile (a2aaa57c)
* **cypress install:**  add cypress package (2179368d)
* **dockerfile:**
  *  remove unnecessary npm ENVs (e2165d8f)
  *  add initial custom dockerfile (fe69f78c)
* **npm/yarn:**  add yarn init files (8d2ea6a3)
* **build scripts:**  add makefile and build scripts for dockerfile (66a7223b)

##### Chores

* **eslint:**  add linting (f1a0a66f)
* **dockerfile, makefile:**  dockerfile: cleanup comment, makefile: add default shell (656997d3)
* **improve local testing:**  add watch mode for local testing (6f29114c)
* **license:**  add license file (e97d6dd9)
* **tests:**  add typescript support (68a3c04b)
* **makefile:**  improve make file and add help texts (33196097)
* **package:**  add typescript support (ca8b378a)
* **.gitignore:**
  *  add test-result to ignore list (4871623f)
  *  add initial .gitignore file (d44c9bd2)

##### Continuous Integration

* **workflows/main.yaml:**  add missing step yarn install before running linters (c409a80d)
* **workflows:**
  *  add linter step to the GitHub Workflows (31307a21)
  *  combine build and test jobs together to save build time (50b31589)
  *  better naming of build steps (504243a4)
  *  fix docker build (4db4d614)
  *  add publish test results step (e895d667)
  *  add test-ci stage in workflows (2c99167f)
  *  use docker-compose build instead of makefile (fc1dce1c)
* **workflows, docker-compose.yaml:**  add docker caching between build and tests (f9f42ac8)
* **scripts:**
  *  use params for ci tests (35a052e3)
  *  fix test and post test scripts (9bb16b7e)
  *  add scripts for reports cleanup and combine (ef709115)
* **scripts and configs:**  improve ci test run (853e44b2)
* **docker-compose.yaml:**  mount everything together (5dda403f)

##### New Features

* **init:**  initiate project and add README.md (6d97f17f)

##### Bug Fixes

* **src lint:**  fix all lint issues (31f26c09)
* **dockerfile:**  fix issue with root/.cache (d6bb98e2)
* **cypress.json:**  fix pluginFile and supportFile filenames (b8136e31)
* **test.sh:**  fix missing combine-report when test fails (722c4803)

##### Other Changes

* **workflows, docker-compose.yaml:**  add docker caching between build and tests" (6c5af16f)
* **workflows:**  fix docker build" (c9e4a7dd)
* ehasnain/cypress-starter-kit (91397b85)

##### Refactors

* **dockerfile:**  cleanup dockerfile, remove unnecessary steps (e2417e2f)
* **src:**  restructure folder structure for the test files and others to be in src/ path (19409b9f)

##### Tests

* **test pages:**  add github login page example test (e0f53ee7)
* **cypress_api.spec.ts:**  fix test for environment config baseUrl (a0a4e7c7)
* **cypress:**  add example tests and structure (d257b2c6)
