from setuptools import setup, find_packages
import pathlib

project_name = "mypackage"
author_name = "The Author"
project_version = "0.0.1"
project_description = "Description of the project"

# Installs the project's dependencies when installing the project with pip
with open('requirements.txt', 'r') as f:
    install_requires = f.read().splitlines()

here = pathlib.Path(__file__).parent.resolve()
project_long_description = (here / 'README.md').read_text(encoding='utf-8')

setup(
    name = project_name,
    version = project_version,
    author = author_name,
    description = project_description,
    long_description = project_long_description,
    package_dir = {"": "src"},
    packages = find_packages(where="src"),
    python_requires = ">=3.5, <4",
    install_requires=install_requires,
)
