return {
    {
        "ms-jpq/coq_nvim",
        branch = "coq",
        dependencies = {
            {
                "ms-jpq/coq.artifacts",
                branch = "artifacts",
            },
            {
                "ms-jpq/coq.thirdparty",
                branch = "3p",
            }
        },
        config = function()
            require("coq_3p") {
                { src = "builtin/html" },
                { src = "builtin/js" },
                { src = "builtin/syntax" },
                { src = "builtin/css" },
                { src = "nvimlua",       short_name = "nLUA", conf_only = true },
                { src = "bc",            short_name = "MATH", precision = 6 },
            }
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig"
        },
        config = function()
            local mslsp = require("mason-lspconfig")
            local lsp = require("lspconfig")

            mslsp.setup {
                automatic_enable = false,
                ensure_installed = {}, -- Add servers to install here if needed
            }

            vim.g.coq_settings = { auto_start = true }
            local coq = require("coq")

            --  Correctly set capabilities.  This should be done once, not per server in the loop.
            local capabilities = coq.lsp_ensure_capabilities()
            require("mason").setup()

            for _, server_name in pairs(mslsp.get_installed_servers()) do
                --  Use server_name directly to get the config function.
                local config = {
                    capabilities = capabilities, --  Pass the capabilities here
                }
                vim.lsp.enable(server_name)
                lsp[server_name].setup(config)
            end


            -- vim.keymap.set('i', '<C-S-K>', vim.g.coq_settings.keymap.eval_snips)
            -- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
            -- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
            -- vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
            -- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
            -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)

            vim.keymap.set('n', 'K', vim.lsp.buf.hover)
            vim.keymap.set('n', '<leader>wl', function()
                print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end)
            vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition)
            -- vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action)
            vim.keymap.set('n', 'gr', vim.lsp.buf.references)
            vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

            vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
                pattern = { "*.hl", "hypr*.conf" },
                callback = function(event)
                    print(string.format("starting hyprls for %s", vim.inspect(event)))
                    vim.lsp.start {
                        name = "hyprlang",
                        cmd = { "hyprls" },
                        root_dir = vim.fn.getcwd(),
                    }
                end
            })
        end,
    }
}
