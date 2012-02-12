{readFileSync} = require 'fs'
templates = require './templates'
processAST = require './processAST'
hogan = require 'hogan'

module.exports =
  process: (filename, options) ->
    throw 'Missing filename' unless filename
    contents = String readFileSync filename
    contents = contents.split('\r\n').join '\n' # Normalize newlines
    return processAST filename, contents, options

  addTemplate: (name, str) -> templates[name] = str

  render: (files, options, templ) ->
    template = templates[templ]
    throw 'Invalid template' unless template?
    compiled = hogan.compile template
    obj =
      files: files
      options: options
    return compiled.render obj