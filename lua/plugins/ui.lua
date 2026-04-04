return {
  -- Smooth scrolling
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = true },
    },
  },

  -- Breadcrumbs in winbar
  {
    "SmiteshP/nvim-navic",
    lazy = true,
    init = function()
      vim.g.navic_silence = true
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_clients({ id = args.data.client_id })[1]
          if client and client:supports_method("textDocument/documentSymbol") then
            require("nvim-navic").attach(client, args.buf)
          end
        end,
      })
    end,
    opts = { lazy_update_context = true },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local ok, navic = pcall(require, "nvim-navic")
      if ok then
        table.insert(opts.sections.lualine_c, {
          function() return navic.get_location() end,
          cond = function() return navic.is_available() end,
        })
      end
    end,
  },
}
