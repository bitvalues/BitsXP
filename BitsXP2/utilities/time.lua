function formatTime(timeInSeconds)
  if (timeInSeconds == nil or timeInSeconds == 0) then
    return 'N/A'
  end

  local seconds = timeInSeconds % 60
  local minutes = math.floor(timeInSeconds / 60) % 60
  local hours = math.floor(timeInSeconds / 60 / 60)
  local result = ''

  if hours > 0 then
      result = result .. string.format('%dh', hours)
  end

  if minutes > 0 then
      result = result .. string.format('%dm', minutes)
  end

  if seconds > 0 then
      result = result .. string.format('%ds', seconds)
  end

  return result
end
