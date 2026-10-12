#!/bin/zsh
# Rebuild index.html from the dashboard page (page.html) and the site shell.
cd "${0:A:h}"
cat shell_head.html page.html shell_foot.html > index.html
