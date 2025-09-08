return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- typescript 
      require'lspconfig'.ts_ls.setup{
        on_attach = function(client, bufnr)
          -- Habilitar diagnóstico inline usando virtual text
          vim.diagnostic.config({
            virtual_text = {
              prefix = '●',  -- Pode ser alterado para outros símbolos
              source = 'always',
              severity = vim.diagnostic.severity.ERROR,
            },
            signs = true,  -- Garante que os sinais de diagnóstico apareçam também
            underline = true,  -- Sublinha as linhas com erro
            update_in_insert = true,  -- Atualiza diagnósticos enquanto edita
          })
        end
      }

      -- python 
      require'lspconfig'.pyright.setup{
        on_attach = function(client, bufnr)
          -- Habilitar diagnóstico inline usando virtual text
          vim.diagnostic.config({
            virtual_text = {
              prefix = '●',  -- Pode ser alterado para outros símbolos
              source = 'always',
              severity = vim.diagnostic.severity.ERROR,
            },
            signs = true,  -- Garante que os sinais de diagnóstico apareçam também
            underline = true,  -- Sublinha as linhas com erro
            update_in_insert = true,  -- Atualiza diagnósticos enquanto edita
          })
        end
      }

      require'lspconfig'.lua_ls.setup{
        on_attach = function(client, bufnr)
          -- Configura os diagnósticos para aparecerem diretamente ao lado da linha
          vim.diagnostic.config({
            virtual_text = {
            prefix = '●',  -- Pode ser '●', '>>', '→', etc.
            source = 'always',
          },
            signs = true,
            underline = true,
          update_in_insert = true,
        })
        end,
      }

      require('lspconfig').jdtls.setup{
        on_attach = function ()
          vim.diagnostic.config({
            virtual_text = {
              prefix = '●',  -- Pode ser '●', '>>', '→', etc.
              source = 'always',
            },
            signs = true,
            underline = true,
            update_in_insert = true,
          })
        end,
      }

    end
  },

  -- Trouble.nvim para exibir erros em lista lateral
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
    config = function()
      -- Configuração do Trouble para mostrar os diagnósticos corretamente
      require("trouble").setup {
        use_diagnostic_signs = true,  -- Para mostrar os erros ao lado do código
      }
    end
  },

  -- Lualine para exibir diagnósticos na linha de status
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require('lualine').setup {
        sections = {
          lualine_c = {'filename', 'diagnostics'},  -- Exibe diagnósticos na linha de status
        },
      }
    end
  },
}

