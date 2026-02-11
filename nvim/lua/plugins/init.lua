return {
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp",
        dependencies = { "rafamadriz/friendly-snippets" }
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        dependencies = {
            { "ms-jpq/coq_nvim", branch = "coq" },
            { "ms-jpq/coq.artifacts", branch = "artifacts" },
            { 'ms-jpq/coq.thirdparty', branch = "3p" }
        },
        init = function()
        vim.g.coq_settings = {
            auto_start = true,
            -- Your COQ settings here
        }
        end,
        config = function()
        -- Your LSP settings here
        end,
    }

}
