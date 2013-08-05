#!/bin/bash

REV=$(git rev-parse --short master)

echo "Checking out sources..."
git checkout $REV -- .

echo "Updating version..."
sed -i "/<\/body>/i\
    <p>Version <a href=\"https:\/\/github.com\/cormier\/glowing-bear\/commit\/$REV\">$REV<\/a><\\p>

" index.html

echo "Committing..."
git commit -am "import $REV"
