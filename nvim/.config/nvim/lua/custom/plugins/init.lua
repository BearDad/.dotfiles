-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  {
    'folke/ts-comments.nvim',
    opts = {
      {
        lang = {
          astro = '<!-- %s -->',
          axaml = '<!-- %s -->',
          blueprint = '// %s',
          c = '// %s',
          c_sharp = '// %s',
          clojure = { ';; %s', '; %s' },
          cpp = '// %s',
          cs_project = '<!-- %s -->',
          cue = '// %s',
          fsharp = '// %s',
          fsharp_project = '<!-- %s -->',
          gleam = '// %s',
          glimmer = '{{! %s }}',
          graphql = '# %s',
          handlebars = '{{! %s }}',
          hcl = '# %s',
          html = '<!-- %s -->',
          hyprlang = '# %s',
          ini = '; %s',
          ipynb = '# %s',
          javascript = {
            '// %s', -- default commentstring when no treesitter node matches
            '/* %s */',
            call_expression = '// %s', -- specific commentstring for call_expression
            jsx_attribute = '// %s',
            jsx_element = '{/* %s */}',
            jsx_fragment = '{/* %s */}',
            spread_element = '// %s',
            statement_block = '// %s',
          },
          kdl = '// %s',
          php = '// %s',
          rego = '# %s',
          rescript = '// %s',
          rust = { '// %s', '/* %s */' },
          sql = '-- %s',
          styled = '/* %s */',
          svelte = '<!-- %s -->',
          templ = {
            '// %s',
            component_block = '<!-- %s -->',
          },
          terraform = '# %s',
          tsx = {
            '// %s', -- default commentstring when no treesitter node matches
            '/* %s */',
            call_expression = '// %s', -- specific commentstring for call_expression
            jsx_attribute = '// %s',
            jsx_element = '{/* %s */}',
            jsx_fragment = '{/* %s */}',
            spread_element = '// %s',
            statement_block = '// %s',
          },
          twig = '{# %s #}',
          typescript = { '// %s', '/* %s */' }, -- langs can have multiple commentstrings
          vue = '<!-- %s -->',
          xaml = '<!-- %s -->',
        },
      },
    },
    event = 'VeryLazy',
    enabled = vim.fn.has 'nvim-0.10.0' == 1,
  },
  {
    'NvChad/nvim-colorizer.lua',
    event = 'BufReadPre',
    opts = { -- set to setup table
    },
  },
  {
    'roobert/tailwindcss-colorizer-cmp.nvim',
    -- optionally, override the default options:
    config = function()
      require('tailwindcss-colorizer-cmp').setup {
        color_square_width = 2,
      }
    end,
  },
}