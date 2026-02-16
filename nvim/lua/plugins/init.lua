return {
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
            auto_start = 'shut-up',
            xdg = true
        }
        end,
        config = function()
        -- Your LSP settings here
        end,
    },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
          { "nvim-lua/plenary.nvim", branch = "master" },
        },
        build = "make tiktoken",
        opts = {
            auto_insert_mode = true,
        },
    },

}
