-- https://github.com/lukas-reineke/indent-blankline.nvim

require("indent_blankline").setup(
    {
        load_file = true,
        event = {"BufRead", "BufNewFile"},
        -- 显示当前所在区域
        show_current_context = true,
        -- 显示当前所在区域的开始位置
        show_current_context_start = true,
        -- 显示行尾符
        show_end_of_line = true
    }
)
