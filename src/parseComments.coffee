burrito = require 'burrito'

# iterate through every node in the full source AST. (this has comments)
# on each node - iterate every node of our value AST.
# if the source AST and value AST match grab the comments from the source AST
module.exports = (key, source, value, type, options) ->
  comments = []
  burrito source, (srcnode) ->
    burrito "#{key} = #{value};", (valnode) ->
      if srcnode.name is type and srcnode.source() is valnode.source()
        comments.push comment.value for comment in srcnode.parent().start.comments_before
  return comments