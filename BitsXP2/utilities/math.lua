function round(num, decimalPlaces)
  if decimalPlaces and decimalPlaces > 0 then
    local mult = 10^decimalPlaces
    return math.floor(num * mult + 0.5) / mult
  end

  return math.floor(num + 0.5)
end
