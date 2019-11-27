#!/usr/bin/env python3

# Always prefer setuptools over distutils
from setuptools import setup, find_packages

with open("README.md", "r") as f:
    long_description = f.read()

setup(
    name="projectname",
    version="0.1",
    description="Project description",
    url="https://github.com/username/projectname",
    author="Author Name",
    author_email="author_email@example.com",
    license='MIT',
    long_description=long_description,
    long_description_content_type="text/markdown",
    # https://pypi.org/classifiers/
    classifiers=[
        "Development Status :: 3 - Alpha",
        "Programming Language :: Python :: 3",
    ],
    packages=find_packages(),
    # scripts=["bin/myscript.py"]
    # install_requires=["yaml"]
)
