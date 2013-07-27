#!/bin/bash

git checkout master -- .
git commit -am "import $(git rev-parse --short master)"
