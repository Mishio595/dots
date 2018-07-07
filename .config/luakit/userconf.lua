local settings = require'settings'
local modes = require'modes'
local downloads = require'downloads'

settings.window.home_page = "file:///home/lynn/Documents/startpage/index.html"
settings.window.new_tab_page = "file:///home/lynn/Documents/startpage/index.html"
settings.window.search_engines.ddg = "https://duckduckgo.com/?q=%s"
settings.window.search_engines.git = "https://github.com/search?q=%s"
settings.window.search_engines.g = "https://google.com/search?q=%s"
settings.window.search_engines.yt = "https://www.youtube.com/results?search_query=%s"
settings.window.search_engines.imdb = "http://www.imdb.com/find?s=all&q=%s"
settings.window.search_engines.wiki = "https://en.wikipedia.org/wiki/Special:Search?search=%s"
settings.window.search_engines.default = settings.window.search_engines.ddg

--Mouse controls and alt+arrow keys tab switching
modes.add_binds("all", {
    {"<Mouse8>", "Go back.", function(w) w:back() end},
    {"<Mouse9>", "Go forward.", function(w) w:forward() end},
    { "<Mod1-Right>", "Go to next tab.", function (w) w:next_tab() end },
    { "<Mod1-Left>", "Go to previous tab.", function (w) w:prev_tab() end },
})
--Sane yanking
modes.add_binds("normal", {
    -- Yanking
    { "Y", "Yank current URI to primary selection.", function (w)
            local uri = string.gsub(w.view.uri or "", " ", "%%20")
            luakit.selection.primary = uri
            w:notify("Yanked uri: " .. uri)
        end },
    {"y", "Yank current URI to clipboard.", function (w)
        local uri = string.gsub(w.view.uri or "", " ", "%%20")
        luakit.selection.clipboard = uri
        w:notify("Yanked uri (to clipboard): " .. uri)
    end },
})

-- Set download location
downloads.default_dir = os.getenv("HOME") .. "/Downloads"
downloads.add_signal("download-location", function (uri, file)
    if not file or file == "" then
        file = (string.match(uri, "/([^/]+)$")
            or string.match(uri, "^%w+://(.+)")
            or string.gsub(uri, "/", "_")
            or "untitled")
    end
    return downloads.default_dir .. "/" .. file
end)

