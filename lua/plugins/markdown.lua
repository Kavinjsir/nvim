return {
  "mfussenegger/nvim-lint",
  opts = function()
    local config = vim.fn.stdpath("config") .. "/.markdownlint.yaml"
    local linter = require("lint").linters["markdownlint-cli2"]
    if linter then
      linter.args = { "--config", config, "-" }
    end
  end,
}
