local queries = require "nvim-treesitter.query"

local M = {}

function M.init()
  require "nvim-treesitter".define_modules {
    proofreader = {
      module_path = "proofreader.internal",
      is_supported = function(lang)
        return queries.get_query(lang, 'proofreader') ~= nil
      end
    }
  }
end

return M
