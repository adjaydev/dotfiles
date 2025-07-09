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


config.bind("df", "fullscreen")
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
config.bind("c2", "set zoom.default 110 ;; set fonts.tabs.selected 13pt ;; set fonts.tabs.unselected 13pt;; set tabs.width 300")
config.bind("c3", "set zoom.default 125 ;; set fonts.tabs.selected 14pt ;; set fonts.tabs.unselected 14pt;; set tabs.width 350")
config.bind("e1", "set zoom.default 100 ;; set fonts.tabs.selected 12pt ;; set fonts.tabs.unselected 12pt;; set tabs.width 250")
config.bind("e2", "set zoom.default 110 ;; set fonts.tabs.selected 13pt ;; set fonts.tabs.unselected 13pt;; set tabs.width 300")
config.bind("e3", "set zoom.default 125 ;; set fonts.tabs.selected 14pt ;; set fonts.tabs.unselected 14pt;; set tabs.width 350")

config.bind("yl", "spawn --userscript copy_last_part_of_url.py {url}")

c.tabs.position = "left"
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
c.url.searchengines = {"DEFAULT": "https://www.google.com/search?q={}"}
c.url.default_page = "https://www.google.com"
c.url.start_pages = "https://www.google.com"


# config.set("qt.args", ["-stylesheet", "~/dotfiles/qutebrowser/.qutebrowser/styles/rounded.qss"])
# c.content.user_stylesheets = "~/dotfiles/qutebrowser/.qutebrowser/styles/rounded.qss"
