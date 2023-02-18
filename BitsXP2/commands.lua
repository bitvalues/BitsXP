function setupCommands()
  windower.register_event('addon command', processCommands)
end

function processCommands(...)
  local commands = {...}
  local firstCommand = commands[1]

  if firstCommand == 'start' then
    --
  elseif firstCommand == 'pause' then
    --
  elseif firstCommand == 'stop' then
    --
  else
    handleHelpCommand()
  end
end

function handleHelpCommand()
  addonPrint('Commands:')
  addonPrint(red('bxp2 ') .. yellow('start ') .. darkRed('- starts a new XP session'))
  addonPrint(red('bxp2 ') .. yellow('pause ') .. darkRed('- pauses the current XP session'))
  addonPrint(red('bxp2 ') .. yellow('stop') .. darkRed('- stops the current XP session'))
end
