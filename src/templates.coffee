{readFileSync} = require 'fs'
{join} = require 'path'

loadTemplate = (name) -> String readFileSync join __dirname, "../templates/#{name}.mustache"

module.exports =
  clean: loadTemplate 'clean'