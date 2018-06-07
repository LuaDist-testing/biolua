-- This file was automatically generated for the LuaDist project.

package = 'BioLua'
version = '0.1-1'
-- LuaDist source
source = {
  tag = "0.1-1",
  url = "git://github.com/LuaDist-testing/biolua.git"
}
-- Original source
-- source = {
-- 	url = 'git://github.com/SweetPalma/BioLua.git',
-- 	tag = 'v0.1',
-- }
description = {
	summary = 'Computational biology for Lua.',
	detailed = [[
		BioLua is a Lua library, done fast and convenient
		biological sequences computations.
	]],
	homepage = 'https://sweetpalma.github.io/biolua',
	maintainer = 'SweetPalma <sweet.palma@yandex.ru>',
	license = 'MIT',
}

dependencies = {
	'lua >= 5.2'
}
build = {
	type = 'builtin',
	copy_directories = {
		'docs', 'tests'
	},
	modules = {

		-- Common stuff:
		['biolua']        = 'biolua/init.lua',
		['biolua.object'] = 'biolua/object.lua',
		['biolua.test']   = 'biolua/test.lua',

		-- Sequences:
		['biolua.sequence.sequence'] = 'biolua/sequence/sequence.lua',
		['biolua.sequence.rosetta'] = 'biolua/sequence/rosetta.lua',
		['biolua.sequence.nucleic'] = 'biolua/sequence/nucleic.lua',
		['biolua.sequence.amino']   = 'biolua/sequence/amino.lua',

		-- Parser:
		['biolua.parser.parser'] = 'biolua/parser/parser.lua',
		['biolua.parser.genbank'] = 'biolua/parser/genbank.lua',
		['biolua.parser.twobit']  = 'biolua/parser/twobit.lua',
		['biolua.parser.fasta']   = 'biolua/parser/fasta.lua',

		-- Shell:
		['biolua.shell'] = 'biolua/shell/init.lua',
		['biolua.shell.logo'] = 'biolua/shell/logo.lua',
		['biolua.shell.demo'] = 'biolua/shell/demo.lua',
		['biolua.shell.eval'] = 'biolua/shell/eval.lua',
		['biolua.shell.autocomplete'] = 'biolua/shell/autocomplete.lua',
		['biolua.shell.prettystring'] = 'biolua/shell/prettystring.lua',


	},
	install = {
		bin = {
			'biolua/shell/biolua'
		}
	}
}