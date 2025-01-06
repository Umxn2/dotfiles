return -- lazy.nvim
{
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
        dashboard = {
            enabled = true,
            preset = {

                header = [[
 ██████   █████ █████   █████ █████ ██████   ██████
░░██████ ░░███ ░░███   ░░███ ░░███ ░░██████ ██████ 
 ░███░███ ░███  ░███    ░███  ░███  ░███░█████░███ 
 ░███░░███░███  ░███    ░███  ░███  ░███░░███ ░███ 
 ░███ ░░██████  ░░███   ███   ░███  ░███ ░░░  ░███ 
 ░███  ░░█████   ░░░█████░    ░███  ░███      ░███ 
 █████  ░░█████    ░░███      █████ █████     █████
░░░░░    ░░░░░      ░░░      ░░░░░ ░░░░░     ░░░░░]],
            },

            sections = {
                { section = "header", padding = 2, pane = 1 },
                { section = "keys", gap = 1, padding = 1, pane = 1 },
                --    { section = "terminal", cmd = "pipes.sh -t 100" },
                { section = "startup", padding = 1 },
                { pane = 2, section = "terminal", cmd = "tty-clock -C 6", indent = 2 },
                { icon = "✦", title = "Motivate ", pane = 2, indent = 2, padding = 0 },
                {
                    pane = 2,
                    section = "terminal",
                    cmd = "motivate --no-colors | fold -s -w 55",
                    height = 8,
                    padding = 0,
                    random = 10000,
                    indent = 3,
                },
                { icon = "✦", title = "Todo List ", pane = 2, indent = 2 },
                {
                    pane = 4,
                    section = "terminal",
                    indent = 3,
                    cmd = "watch -n 2 -t -x todo-cli-app -f $HOME/Work/Todo/$(date '+%d-%m-%y').txt list",
                },
                { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 0 },
                --{ icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
            },
        },
    },
}
