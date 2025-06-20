return {
  {
    "vyfor/cord.nvim",
    lazy = false, -- ou true, se quiser carregar sob demanda
    config = function()
      require("cord").setup({
        -- Se quiser usar seu próprio client_id, coloque aqui
        -- client_id = "SEU_CLIENT_ID_DISCORD",
        -- outras opções que quiser configurar
      })
    end,
  },
}
