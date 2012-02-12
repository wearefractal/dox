dox = require '../index'
{join} = require 'path'
{writeFileSync} = require 'fs'
assert = require 'assert'

example = join __dirname, './example.js'
example2 = join __dirname, './example2.js'

files = [dox.process(example), dox.process(example2)]
options =
  title: 'Example Project'
  description: "Chambray lo-fi cosby sweater fixie, seitan tofu lomo put a bird on it organic mcsweeney's.
  Cardigan butcher 3 wolf moon ennui, ethical fanny pack brunch post-ironic gentrify art party lomo.
  Odd future thundercats cred pour-over, locavore etsy helvetica gastropub ethnic DIY irony butcher.
  Lomo gentrify master cleanse, mcsweeney's forage pinterest umami jean shorts synth.
  Aesthetic whatever direct trade four loko blog messenger bag.
  Before they sold out umami kogi, ennui hoodie fap photo booth DIY pour-over lo-fi occupy lomo typewriter wolf.
  Mlkshk forage vinyl food truck."

htmlout = dox.render files, options, 'clean'
writeFileSync './dox.html', htmlout