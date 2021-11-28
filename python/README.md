[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<p align="center">
  <h1 align="center">A Python project</h1>

  <p align="center">
    My project.
  </p>

# Setup

This section describes the structure of the project, you can delete it after
everything is working.

* The main package is located at `src/mypackage`.
* Subpackages can be created in subfolders of `src/mypackage`.
* Unit tests are written using [Pytest](https://docs.pytest.org/en/6.2.x/). The
tests are located in the folder `tests`.
* In the file `examples`, provide examples of how to use the package.
* The `docs` folder stores the project's documentation.
* A `Makefile` is provided for convenience, but it's only used to run the
tests.
* In the file `setup.py`, edit the variables `project_name`, `author_name`,
`project_version`, `project_description` to configure the package setup.

```bash
├── docs
│  └── README.txt
├── examples
│  └── example1.py
├── LICENSE.txt
├── Makefile
├── README.md
├── requirements-tests.txt
├── requirements.txt
├── setup.py
├── src
│  ├── mypackage
│  │  ├── __init__.py
│  │  ├── module2.py
│  │  └── subpackage1
│  │     ├── __init__.py
│  │     └── module1.py
└── tests
   └── test_1.py
```

## Installation

Create a virtual environment and activate it. Install the package's
requirements:

`pip install -r requirements.txt`

To write and run unit tests using Pytest, run:

`pip install -r requirements-tests.txt`

Install the package in development mode:

`pip install -e .`

# README STARTS HERE

## About The Project

Describe the project here.

### Prerequisites / Dependencies

List here the libraries/frameworks used to build the project. Refer to the
installation pages.

### Installation

Describe how to compile/install the project.

### Usage

Describe how to use the software.

### Contributing

Information for possible future contributors.

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

[license-shield]: https://img.shields.io/github/license/lbteixeira/code-starters?style=for-the-badge
[license-url]: https://github.com/lbteixeira/code-starters/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/lucasbrederteixeira
