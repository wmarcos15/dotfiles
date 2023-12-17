-- To surround with custom function (promted when called) ysiwf
require("nvim-surround").setup({
    delimiters = {
        pairs = {
            ["f"] = function()
                return {
                    vim.fn.input({
                        prompt = "Enter the function name: "
                    }) .. "(",
                    ")",
                }
            end,
        },
    },
})

-- Do a custom surround command to be able to surround something by text via input, similar to whats shown above
