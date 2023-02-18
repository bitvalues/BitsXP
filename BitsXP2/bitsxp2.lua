-- external dependencies
config = require('config')

-- internal dependencies
require('settings')
require('commands')
require('utilities')

-- addon setup
_addon.name = 'BitsXP2'
_addon.author = 'Bitvalues'
_addon.version = 2.0
_addon.command = 'bxp2'

-- load the settings
settings = config.load('data\\settings.xml', defaultSettings)
config.register(settings, initializeSettings)

-- debugging for now
addonPrint(yellow("Now tracking your experience!") .. darkRed(""))

-- initial setup
windower.register_event('addon command', processCommands)
