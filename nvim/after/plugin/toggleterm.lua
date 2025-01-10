require('toggleterm').setup({
    size = 20, -- Height of the horizontal terminal
    open_mapping = [[½]], -- Map § key to toggle the terminal
    direction = 'horizontal', -- Terminal opens in a horizontal split
    shade_terminals = true, -- Dim the background of the terminal
    close_on_exit = true, -- Automatically close the terminal when the process exits
})
