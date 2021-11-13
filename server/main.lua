  RegisterCommand('me', function(source, args, user)
      local name = GetPlayerName(source)
      TriggerClientEvent("sendProximityMessageMe", -1, source, name, table.concat(args, " "))
  end, false)

  RegisterCommand('do', function(source, args, user)
      local name = GetPlayerName(source)
      TriggerClientEvent("sendProximityMessageDo", -1, source, name, table.concat(args, " "))
  end, false)

  RegisterCommand('twt', function(source, args, user)
  	TriggerClientEvent('chatMessage', -1, "^0[^5Twitter^0] (^5@" .. GetPlayerName(source) .. "^0)", {30, 144, 255}, table.concat(args, " "))
  end, false)

  RegisterCommand('fb', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^0[^5Facebook^0] (^5@" .. GetPlayerName(source) .. "^0)", {30, 144, 255}, table.concat(args, " "))
   end, false)

   RegisterCommand('discord', function(source, args, user)
    local val = math.floor(1000 + math.random() * 9000)
    TriggerClientEvent('chatMessage', -1, "^0[^4^*Discord^r^0] (^7" .. GetPlayerName(source) .. "#" .. val .. "^0)", {30, 144, 255}, table.concat(args, " "))
   end, false)

  RegisterCommand('vpn', function(source, args, user)
  	TriggerClientEvent('chatMessage', -1, "^0[^4^*VPN^r^0]", {128, 128, 128}, table.concat(args, " "))
  end, false)

  RegisterCommand('atwt', function(source, args, user)
  	TriggerClientEvent('chatMessage', -1,"^0[^4Twitter^0] (^5@Anonymous^0)", {30, 144, 255}, table.concat(args, " "))
  end, false)

  RegisterCommand('ooc', function(source, args, user)
  	TriggerClientEvent('chatMessage', -1, "OOC | " .. GetPlayerName(source), {235, 207, 23}, table.concat(args, " "))
  end, false)

  RegisterCommand('ad', function(source, args, user)
  	TriggerClientEvent('chatMessage', -1, "^1[ADVERT]: " .. GetPlayerName(source), {255,215,0}, table.concat(args, " "))
  end, false)

  RegisterCommand('unrack', function(source, args, user)
  	TriggerClientEvent('chatMessage', -1, "^1PLAYER ^7" .. GetPlayerName(source) .. " ^1UNRACKS ^8WEAPON^7!", {255,215,0}, table.concat(args, " "))
  end, false)

  RegisterCommand('rack', function(source, args, user)
  	TriggerClientEvent('chatMessage', -1, "^1PLAYER ^7" .. GetPlayerName(source) .. " ^1RACKS ^8WEAPON^7!", {255,215,0}, table.concat(args, " "))
  end, false)

function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end
