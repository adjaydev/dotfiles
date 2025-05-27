BLACK = "#000000"
GRAY = "#1E2021"
GREEN = "#00FF00"

BLACK = "#282828"
BLACK = "#1d2021"
GREEN = "#98971a"
YELLOW = "#d79921"

GREEN = "#fabd2f"

FONTCOLOR = "#b8bb26"


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
config.bind("cf", "fullscreen")
config.bind("cs", "config-source")
config.bind("c1", "set zoom.default 100")
config.bind("c2", "set zoom.default 150")
config.bind("c3", "set zoom.default 200")
config.bind(
    "cr1",
    "set zoom.default 100 ;; set fonts.tabs.selected 12pt ;; set fonts.tabs.unselected 12pt;; set tabs.width 250",
)
config.bind(
    "cr2",
    "set zoom.default 150 ;; set fonts.tabs.selected 16pt ;; set fonts.tabs.unselected 16pt;; set tabs.width 400",
)
config.bind(
    "cr3",
    "set zoom.default 200 ;; set fonts.tabs.selected 16pt ;; set fonts.tabs.unselected 16pt;; set tabs.width 400",
)

c.tabs.width = 250
c.colors.tabs.bar.bg = BLACK
c.colors.tabs.selected.even.fg = FONTCOLOR
c.colors.tabs.selected.odd.fg = FONTCOLOR
c.colors.tabs.selected.even.bg = BLACK
c.colors.tabs.selected.odd.bg = BLACK
c.colors.tabs.even.bg = BLACK
c.colors.tabs.odd.bg = BLACK
c.zoom.default = 100
c.downloads.remove_finished = 3000
# c.fonts.tabs.selected = "12pt"
# c.fonts.tabs.unselected = "12pt"
c.tabs.padding = {"left": 0, "top": 0, "right": 0, "bottom": 0}
