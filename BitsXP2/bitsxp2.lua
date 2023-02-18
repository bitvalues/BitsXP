-- external dependencies
config = require('config')
packets = require('packets')

-- internal dependencies
require('states')
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
startStateMachine()
setupCommands()
