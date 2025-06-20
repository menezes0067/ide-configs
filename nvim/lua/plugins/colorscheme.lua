return {
  "nyoom-engineering/oxocarbon.nvim",
  config = function()
    vim.opt.background = "dark" -- ou "light"
    vim.cmd.colorscheme("oxocarbon")

    --vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

    --vim.g.oxocarbon_lua_disable_italic = true
    --vim.g.oxocarbon_lua_keep_terminal = true

  end,
}
