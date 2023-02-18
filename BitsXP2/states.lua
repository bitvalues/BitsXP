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
