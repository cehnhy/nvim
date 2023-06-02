-- 隐藏 .git .DS_Store 文件。
-- 默认展示 .git_ignore 中的文件， I 切换 .git_ignore 包含文件展示与否。
require('nvim-tree').setup({
    git = {
        ignore = false
    },
    update_focused_file = {
        enable = true
    },
    filters = {
        custom = { '^\\.git$', '^\\.DS_Store$' }
    }
})
