local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

local setup = {
  plugins = {
    presets = {
      operators = true,    -- Disables help for operators like d, y, ...
      motions = true,      -- Enables help for motions
      text_objects = true, -- Enables help for text objects triggered after entering an operator
      windows = true,      -- Enables help for default bindings on <c-w>
      nav = true,          -- Enables help for misc bindings to work with windows
      z = true,            -- Enables help for bindings for folds, spelling, and others prefixed with z
      g = true,            -- Enables help for bindings prefixed with g
    },
  },
}
wk.setup(setup)

wk.register({
  f = {
    name = "File",
  },
  c = {
    name = "Code",
  },
  s = {
    name = "Search",
  },
}, { prefix = "<leader>" })
