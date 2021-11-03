<!-- PROJECT SHIELDS -->
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<p align="center">
  <h1 align="center">Code Starters</h1>

  <p align="center">
    Automate the most boring part of any project: the start
    <br />
  </p>
</p>

### About the repo

This is a repository created to store projects templates in different
languages. The goal is to automate and to standardize the way I structure my
projects, making it easy to start to implement new ideas.

Each supported language has four basic pillars: a well defined directory
structure, a build system, a couple of runnable examples and a unit testing
framework (when applicable),

### Usage

The easiest way to create a new project is by cloning this repository and
running the bash script `new-project.sh` from the root directory. Before
running the script for the first time, edit it to include your project's
directory path (variable `PROJECTS_DIR`). The script is going to prompt you for a
project's type, name and path.

Alternatively, simply copy the folder relative to the desired project type and
paste it in the pertinent path. Nevertheless, some variable might have to be
renamed in the build system and/or testing framework to guarantee that
everything works as expected.

More information about the template projects can be found in their specific
folder.

### License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- MARKDOWN LINKS & IMAGES -->
[license-shield]: https://img.shields.io/github/license/lbteixeira/code-starters?style=for-the-badge
[license-url]: https://github.com/lbteixeira/code-starters/blob/main/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/lb-teixeira
