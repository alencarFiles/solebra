local config = {
	loginMessage = getConfigValue('loginMessage'),
	useFragHandler = getBooleanFromString(getConfigValue('useFragHandler'))
}

function onLogin(cid)
	if(getBooleanFromString(getConfigValue('accountManager')) == false) then
		if (getCreatureName(cid) == "Account Manager") then
			return doRemoveCreature(cid, true)
		end
	end
	
	local loss = getConfigValue('deathLostPercent')
	if(loss ~= nil and getPlayerStorageValue(cid, "bless") ~= 5) then
		doPlayerSetLossPercent(cid, PLAYERLOSS_EXPERIENCE, loss * 10)
		doPlayerSetLossPercent(cid, PLAYERLOSS_ITEMS, 7)
	end

	if(getPlayerStorageValue(cid, "death_bless") == 1) then
		local t = {PLAYERLOSS_EXPERIENCE, PLAYERLOSS_SKILLS, PLAYERLOSS_ITEMS, PLAYERLOSS_CONTAINERS}
		for i = 1, #t do
			doPlayerSetLossPercent(cid, t[i], 100)
		end
		setPlayerStorageValue(cid, "death_bless", 0)
	end

	local accountManager = getPlayerAccountManager(cid)
	if(accountManager == MANAGER_NONE) then
		local lastLogin, str = getPlayerLastLoginSaved(cid), config.loginMessage
		if(lastLogin > 0) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
			str = "Your last visit was on " .. os.date("%a %b %d %X %Y", lastLogin) .. "."
		else
------------------------------------------------------------------------------
--aqui eh quando o player loga primeira vez
--adicionar nesse campo oque deve ser adicionado primeira vez

setPlayerStorageValue(cid, 8470025, 1)


-----------------------------------------------------------------------------
			str = str .. " Please choose your outfit."
			doPlayerSendOutfitWindow(cid)
		end

		doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
	elseif(accountManager == MANAGER_NAMELOCK) then
		addEvent(valid(doCreatureSay), 500, cid, "Hello, it appears that your character has been locked for name violating rules, what new name would you like to have?", TALKTYPE_PRIVATE_NP, true, cid)
	elseif(accountManager == MANAGER_ACCOUNT) then
		addEvent(valid(doCreatureSay), 500, cid, "Hello, type 'account' to manage your account. If you would like to start over, type 'cancel' anywhere.", TALKTYPE_PRIVATE, true, cid)
	else
		addEvent(valid(doCreatureSay), 500, cid, "Hello, type 'account' to create an account or 'recover' to recover an account.", TALKTYPE_PRIVATE, true, cid)
	end

	if(not isPlayerGhost(cid)) then
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	end
	
	registerCreatureEvent(cid, "Idle")
	registerCreatureEvent(cid, "Mail")
	registerCreatureEvent(cid, "PVPCreature")
	registerCreatureEvent(cid, "ReportBug")
	if(config.useFragHandler) then
		registerCreatureEvent(cid, "SkullCheck")
	end

	registerCreatureEvent(cid, "GuildEvents")
	registerCreatureEvent(cid, "AdvanceSave")
	registerCreatureEvent(cid, "FimVip")

    if (InitArenaScript ~= 0) then
    InitArenaScript = 1

        for i = 42300, 42309 do
            setGlobalStorageValue(i, 0)
            setGlobalStorageValue(i+100, 0)
        end
    end

    if getPlayerStorageValue(cid, 42309) < 1 then
        for i = 42300, 42309 do
            setPlayerStorageValue(cid, i, 0)
        end
    end

    if getPlayerStorageValue(cid, 42319) < 1 then
        for i = 42310, 42319 do
            setPlayerStorageValue(cid, i, 0)
        end
    end

    if getPlayerStorageValue(cid, 42329) < 1 then
        for i = 42320, 42329 do
            setPlayerStorageValue(cid, i, 0)
        end
    end
    if getPlayerStorageValue(cid, 42355) == -1 then
        setPlayerStorageValue(cid, 42355, 0)
    end
    setPlayerStorageValue(cid, 42350, 0)
    setPlayerStorageValue(cid, 42352, 0)
	doPlayerSendTextMessage(cid, TALKTYPE_PRIVATE, "acess solebra.online to more informations")
	doPlayerSendTextMessage(cid, TALKTYPE_PRIVATE, "New feature: now you can use command <!auto spell, mana> ex: <!auto exura, 25> put the correct value of the spell.")
    doPlayerSendTextMessage(cid, TALKTYPE_PRIVATE, "This command will automatically eat food for you, It work for making runes.>. to stay afk use anti-idle options")
return true
end