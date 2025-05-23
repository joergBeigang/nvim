return {
    "snacks.nvim",
    opts = {
        dashboard = {
            preset = {
                pick = function(cmd, opts)
                    return LazyVim.pick(cmd, opts)()
                end,
                header = [[
_____________________________________________________________
    _    _                    _     _                        
    /  ,'    /          /     /    /                         
---/_.'-----/----------/__---/___ /-----__----------__----__-
  /  \     /   /   /  /   ) /    /    /   ) /   /  (_ ` /___)
_/____\___/___(___(__(___/_/____/____(___/_(___(__(__)_(___ _
=============================================================
                                                             
 ]],
            },
        },
    },
}
