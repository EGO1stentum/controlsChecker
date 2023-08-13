Config = {}

Config.ESX = true -- false
Config.Webhook = ''
Config.Color = 'green' -- default, blue, green, red, yellow, orange, grey
Config.botName = 'Control Checker'
Config.Title = 'Control action while dead'
Config.Message = "\nControl number: "
Config.Message2 = "\nControl desc: "
Config.Message3 = "\nPlayer Identifier: " -- Only works with ESX = true. Check server.lua for adjustments
Config.Thumbnail = 'https://i.imgur.com/1QntP5d.png'
Config.Footer = 'controlsChecker'

-- https://docs.fivem.net/docs/game-references/controls
Config.allowedControlsWhileDead = {
    1, 2, 4, 6, 12, 13, 19, 242, 277,
    14, 15, 16, 17, 24, 25, 27, 46, 47,
    66, 67, 68, 69, 70, 95, 98, 99, 106,
    143, 174, 175, 177, 187, 188, 189, 210, 
    211, 221,222, 224, 229, 243, 261, 239, 229,
    262, 271, 272, 273, 274, 284, 285, 286, 295,
    287, 290, 291, 331, 332, 333, 334, 335, 220, 
    293, 270, 282, 240, 283, 91, 92, 359, 18, 144, 
    176, 122, 135, 142, 223, 237, 257, 329, 346, 
    330, 114, 225, 238, 347, 96, 115, 181, 241, 
    40, 42, 81, 97, 336, 41, 39, 43, 50, 275, 
    180, 276, 198, 7
}