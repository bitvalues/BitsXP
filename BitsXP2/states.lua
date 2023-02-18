local states = {
  job = {
    xp = {
      current = 0,
      max = 0,
    },
    main = {
      level = 0,
      name = '',
    },
    sub = {
      level = 0,
      name = '',
    },
  },
}

function startStateMachine()
  windower.register_event('outgoing chunk', onOutgoingDataChunk)
  windower.register_event('incoming chunk', onIncomingDataChunk)
  windower.register_event('gain experience', onExperienceGained)
end

function onOutgoingDataChunk(id, data, modified, isInjected, isBlocked)
  if isInjected then
    return
  end

  local packetTable = packets.parse('outgoing', data)

  if id == 0x074 then
    if packetTable['Join'] then
      -- joined new party
    end
  end
end

function onIncomingDataChunk(id, data, modified, isInjected, isBlocked)
  if isInjected then
    return
  end

  local packetTable = packets.parse('incoming', data)

  if id == 0x61 then
    -- experience was gained
	  states.xp.current = data:unpack('H', 0x11)
	  states.xp.max = data:unpack('H', 0x13)
  elseif id == 0xB then
    -- loading new zone started
  elseif id == 0xA then
    -- loading new zone finished
  end
end

function onExperienceGained(amount, chainNumber, limit)
  addonPrint('+XP: ' .. amount .. ' Chain #: ' .. chainNumber .. ' Limit: ' .. limit)
end

function getCurrentXP()
  return states.xp.current
end

function getMaxXP()
  return states.xp.max
end

function getRemainingXP()
  return getMaxXP() - getCurrentXP()
end

function getMainJobLevel()
  return states.job.main.level
end

function getMainJobName()
  return states.job.main.name
end

function getSubJobLevel()
  return states.job.sub.level
end

function getSubJobName()
  return states.job.sub.name
end
