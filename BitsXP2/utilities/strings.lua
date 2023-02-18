function commaValue(num)
  local result = num
  local k = 1

  while k ~= 0 do
      result, k = string.gsub(result, "^(-?%d+)(%d%d%d)", '%1,%2')
  end

  return result
end
