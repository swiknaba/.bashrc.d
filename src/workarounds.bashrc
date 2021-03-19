#!/bin/bash

#
# Postman results in the error: Error: Parse Error: Header overflow
# This is a known bug with a known workaround; details: https://github.com/postmanlabs/postman-app-support/issues/8656
# Just start postman using the following command:
#
alias postman='NODE_OPTIONS=--max-http-header-size=16384 /Applications/Postman.app/Contents/MacOS/Postman'
