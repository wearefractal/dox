parseComments = require './parseComments'
{basename, extname} = require 'path'

module.exports = (filename, source, options) ->
  throw 'Missing fields' unless source and filename
  obj = require filename
  out =
    filename: basename filename, extname filename
    items: []

  for key, val of obj
    type = typeof val
    if type is 'function'
      ksource = val.toString()
      args = val.length
    else
      ksource = JSON.stringify val, null, 4
      args = null
    lines = ksource.split('\n').length
    out.items.push
      name: key
      type: type
      source: ksource
      lines: lines
      arguments: args
      comments: parseComments key, source, ksource, type, options
  return out