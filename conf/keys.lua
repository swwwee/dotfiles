local awful = require'awful'
local hotkeys_popup = require("awful").hotkeys_popup
--mouse binds -- HELLL!!!!!!!!! -- It doesnt matter btw
awful.mouse.append_global_mousebindings({ awful.button({ }, 3, function () mymainmenu:toggle() end), awful.button({ }, 4, awful.tag.viewprev), awful.button({ }, 5, awful.tag.viewnext), }) client.connect_signal("request::default_mousebindings", function() awful.mouse.append_client_mousebindings({ awful.button({ }, 1, function (c) c:activate { context = "mouse" } end), awful.button( { }, 2, function (c) c:activate { context = "mouse_click", action = "mouse_move"} end), awful.button( { }, 3, function (c) c:activate { context = "mouse_click", action = "mouse_resize" } end), }) end)
-- Keybinds Global-- 
awful.keyboard.append_global_keybindings({
    awful.key({modkey,},"s",hotkeys_popup.show_help,{description="show help", group= awesome}),
    awful.key({modkey,},"w",function ()mymainmenu:show()end,{description="show main menu",group="awesome"}),
    awful.key({modkey,"Shift"},"r", awesome.restart,{description="restart awesome",group="awesome"}),
    awful.key({modkey,"Shift"},"q",awesome.quit,{description="quit awesome",group="awesome"}),
    awful.key({modkey},"x", function() awful.prompt.run {prompt="Run Lua code: ",textbox= awful.screen.focused().mypromptbox.widget,exe_callback=awful.util.eval,history_path=awful.util.get_cache_dir() .. "/history_eval"}end,{description="lua execute prompt",group="awesome"}),
    awful.key({modkey,},"Return", function()awful.spawn(terminal)end,{description="open a term",group="launcher"}),
    awful.key({modkey},"r",function()awful.screen.focused().mypromptbox:run()end,{description = "run prompt", group = "launcher"}),
    awful.key({modkey},"p",function() menubar.show()end,{description="show the menubar",group="launcher"}),
})
