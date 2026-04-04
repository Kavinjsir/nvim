return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "openFilesOnly",
              },
            },
          },
          before_init = function(_, config)
            -- Detect uv/poetry/pipenv venv automatically
            local venv_path = vim.fn.getcwd() .. "/.venv"
            if vim.fn.isdirectory(venv_path) == 1 then
              config.settings.python = config.settings.python or {}
              config.settings.python.pythonPath = venv_path .. "/bin/python"
            elseif vim.env.VIRTUAL_ENV then
              config.settings.python = config.settings.python or {}
              config.settings.python.pythonPath = vim.env.VIRTUAL_ENV .. "/bin/python"
            end
          end,
        },
      },
    },
  },
}
