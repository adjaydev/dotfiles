c = c
config = config

BLACK = "#000000"
BLACK = "#282828"
BLACK = "#1d2021"

GRAY = "#1E2021"

GREEN = "#98971a"
GREEN = "#b8bb26"

YELLOW = "#d79921"
YELLOW = "#fabd2f"

FGCOLOR = GREEN
BGCOLOR = BLACK

# HACK: asddsa
# jh

# TODO:
# kjasdjed
# sadkj

# HACK:
# WARN:
# PERF:

# NOTE:

# TEST:
# FIX:


config.bind("cy", "config-cycle window.hide_decoration true false")
config.bind("cx", "config-cycle window.hide_decoration true false")
config.bind("ct", "config-cycle tabs.show always never")
config.bind("cv", "config-cycle tabs.show always never")
config.bind("ci", "config-cycle tabs.show always never")
config.bind("ca", "config-cycle tabs.show always never")
config.bind("ch", "set tabs.position left")
config.bind("cj", "set tabs.position bottom")
config.bind("ck", "set tabs.position top")
config.bind("cl", "set tabs.position right")
config.bind("cn", "open -w")
config.bind("c1", "set zoom.default 100 ;; set fonts.tabs.selected 12pt ;; set fonts.tabs.unselected 12pt;; set tabs.width 250")
config.bind("c2", "set zoom.default 150 ;; set fonts.tabs.selected 16pt ;; set fonts.tabs.unselected 16pt;; set tabs.width 400")
config.bind("c3", "set zoom.default 200 ;; set fonts.tabs.selected 16pt ;; set fonts.tabs.unselected 16pt;; set tabs.width 400")

c.tabs.width = 250
c.colors.tabs.bar.bg = BGCOLOR
c.colors.tabs.selected.even.fg = FGCOLOR
c.colors.tabs.selected.odd.fg = FGCOLOR
c.colors.tabs.selected.even.bg = BGCOLOR
c.colors.tabs.selected.odd.bg = BGCOLOR
c.colors.tabs.even.bg = BGCOLOR
c.colors.tabs.odd.bg = BGCOLOR
c.zoom.default = 100
c.downloads.remove_finished = 3000
c.editor.command = ["open", "-a", "Ghostty", "-W", "--args", "-e", "nvim {file}"]
c.tabs.padding = {"left": 0, "top": 0, "right": 0, "bottom": 0}
