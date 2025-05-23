--------------------By Jpkulik!---------------------------- 
local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 



-- OTServ event handling functions start 
function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid) end 
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid) end 
function onCreatureSay(cid, type, msg)     npcHandler:onCreatureSay(cid, type, msg) end 
-- Set the greeting message. 
npcHandler:setMessage(MESSAGE_GREET, HelloText) 
function onThink()                         npcHandler:onThink() end 
-- OTServ event handling functions end 
local function creatureSayCallback(cid, type, msg)
	
	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	
	if (msgcontains(msg, 'bring') and msgcontains(msg, 'me') and msgcontains(msg, 'to') and msgcontains(msg, 'thais') and (not npcHandler:isFocused(cid))) then
		if doPlayerRemoveMoney(cid, 110) == TRUE then
		doTeleportThing(cid,{x=32313, y=32212, z=7})
		npcHandler:addFocus(cid)
		else 
         selfSay('Sorry, you don\'t have enough money.') 
        end
	elseif (msgcontains(msg, 'bring') and msgcontains(msg, 'me') and msgcontains(msg, 'to') and msgcontains(msg, 'ab\'dendriel') and (not npcHandler:isFocused(cid))) then
		if doPlayerRemoveMoney(cid, 80) == TRUE then
		doTeleportThing(cid,{x=32734, y=31669, z=7})
		npcHandler:addFocus(cid)
		else 
         selfSay('Sorry, you don\'t have enough money.') 
        end
	elseif (msgcontains(msg, 'bring') and msgcontains(msg, 'me') and msgcontains(msg, 'to') and msgcontains(msg, 'venore') and (not npcHandler:isFocused(cid))) then
		if doPlayerRemoveMoney(cid, 130) == TRUE then
		doTeleportThing(cid,{x=32954, y=32022, z=7})
		npcHandler:addFocus(cid)
		else 
         selfSay('Sorry, you don\'t have enough money.') 
        end
	elseif (msgcontains(msg, 'bring') and msgcontains(msg, 'me') and msgcontains(msg, 'to') and msgcontains(msg, 'nevada') and (not npcHandler:isFocused(cid))) then
		if doPlayerRemoveMoney(cid, 130) == TRUE then
		doTeleportThing(cid,{x=32088, y=31642, z=6})
		npcHandler:addFocus(cid)
		else 
         selfSay('Sorry, you don\'t have enough money.') 
        end
	elseif (msgcontains(msg, 'bring') and msgcontains(msg, 'me') and msgcontains(msg, 'to') and msgcontains(msg, 'edron') and (not npcHandler:isFocused(cid))) then
		if doPlayerRemoveMoney(cid, 110) == TRUE then
		doTeleportThing(cid,{x=33176, y=31764, z=7})
		npcHandler:addFocus(cid)
		else 
         selfSay('Sorry, you don\'t have enough money.') 
        end
	end
	return true
end	
---------------------------------------MENSAGES CONFIG-------------------------------------------- 
local HelloText = 'Hello |PLAYERNAME|. Welcome to my Boat!' 
local HelpText = 'Do you need help?I can tell you some {destinations}.' 
local DestinationText = 'I can take you to {Ab\'Dendriel}, {Thais}, {Venore}, {Edron}.'            
local CitysText = 'I can take you to {Ab\'Dendriel}, {Thais}, {Venore}, {Edron}.' 
local JobText = 'Im an Captain, and this is my Boat.'                                                                  
---------------------------------------END MENSAGES CONFIG---------------------------------------- 



---------------------------------------CARLIN CONFIG---------------------------------------------- 
local CarlinPosition = {x=32388, y=31821, z=7}              ----> Destination from Carlin Boat <---- 
local CarlinCost = 130                          ----> Cost to Travel for Carlin    <---- 
carlin = false                                           ---->TRUE:Working/FALSE:Not Working<---- 
---------------------------------------END CARLIN CONFIG------------------------------------------ 



---------------------------------------AB'DENDRIEL CONFIG----------------------------------------- 
local AbDendrielPosition = {x=32734, y=31669, z=7}     ----> Destination from Ab\'Dendriel Boat <---- 
local AbDendrielCost = 80                     ----> Cost to Travel for Ab\'Dendriel    <---- 
AbDendriel = true                                 ----> TRUE:Working/FALSE:Not Working    <---- 
---------------------------------------END AB'DENDRIEL CONFIG------------------------------------- 



---------------------------------------VENORE CONFIG---------------------------------------------- 
local VenorePosition = {x=32954, y=32022, z=7}              ----> Destination from Venore Boat <---- 
local VenoreCost = 130                          ----> Cost to Travel for Venore    <---- 
Venore = true                                          ----> TRUE:Working/FALSE:Not Working<--- 
---------------------------------------END VENORE CONFIG------------------------------------------ 



---------------------------------------THAIS CONFIG----------------------------------------------- 
local ThaisPosition = {x=32313, y=32212, z=7}                ----> Destination from Thais Boat <---- 
local ThaisCost = 110                           ----> Cost to Travel for Thais    <---- 
Thais = true                                           ---->TRUE:Working/FALSE:Not Working<--- 
---------------------------------------END THAIS CONFIG------------------------------------------- 


---------------------------------------EDRON CONFIG----------------------------------------------- 
local EdronPosition = {x=33176, y=31764, z=7}                ----> Destination from Edron Boat <---- 
local EdronCost = 110                                          ----> Cost to Travel for Edron    <---- 
Edron = true                                           ----> TRUE:Working/FALSE:Not Working<-- 
---------------------------------------END EDRON CONFIG------------------------------------------- 


---------------------------------------DARASHIA CONFIG-------------------------------------------- 
local DarashiaPosition = {x=33290, y=32481, z=7}          ----> Destination from Darashia Boat <---- 
local DarashiaCost = 10

                    ----> Cost to Travel for Darashia    <---- 
Darashia = false                                        ----> TRUE:Working/FALSE:Not Working <---- 
---------------------------------------END DARASHIA CONFIG---------------------------------------- 


---------------------------------------PORT HOPE CONFIG------------------------------------------- 
local PortHopePosition = {x=32530, y=32784, z=7}         ----> Destination from Port Hope Boat <---- 
local PortHopeCost = 160                                      ----> Cost to Travel for Port Hope    <---- 
PortHope = false                                      ----> TRUE:Working/FALSE:Not Working  <---- 
---------------------------------------END PORT HOPE CONFIG--------------------------------------- 

---------------------------------------NEVADA CONFIG------------------------------------------- 
local NevadaPosition = {x=32088, y=31642, z=6}         ----> Destination from Port Hope Boat <---- 
local NevadaCost = 160                                      ----> Cost to Travel for Port Hope    <---- 
Nevada = true                                      ----> TRUE:Working/FALSE:Not Working  <---- 
---------------------------------------END NEVADA CONFIG--------------------------------------- 


---------------------------------------ANKRAHMUN CONFIG------------------------------------------- 
local AnkPosition = {x=33092, y=32884, z=7}              ----> Destination from Ankrahmun Boat <---- 
local AnkCost = 150                                  ----> Cost to Travel for Ankrahmun    <---- 
Ank = false                                       ----> TRUE:Working/FALSE:Not Working  <---- 
---------------------------------------END ANKRAHMUN CONFIG--------------------------------------- 


---CARLIN----------------------------------------------------------------------------------------------------------------------------------------- 
local CarlinText = 'Do you want to Travel to Carlin for 130 gold coins?' 
local CarlinTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local CarlinLvl = 8 
local CarlinPremium = false --True/false 

--Carlin-- 
if carlin == true then 
local travelNode = keywordHandler:addKeyword({'carlin'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = CarlinText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = CarlinPremium, level = CarlinLvl, cost = CarlinCost, destination = CarlinPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = CarlinTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Carlin-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 



---Venore----------------------------------------------------------------------------------------------------------------------------------------- 
local VenoreText = 'Do you want to Travel to Venore for 130 gold coins?' 
local VenoreTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local VenoreLvl = 8 
local VenorePremium = false --True/false 

--Venore-- 
if Venore == true then 
local travelNode = keywordHandler:addKeyword({'venore'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = VenoreText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = VenorePremium, level = VenoreLvl, cost = VenoreCost, destination = VenorePosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = VenoreTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Venore-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Kazordoon----------------------------------------------------------------------------------------------------------------------------------------- 
local KazordoonText = 'Do you want to Travel to Kazordoon for 10 gold coins?' 
local KazordoonTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local KazordoonLvl = 8 
local KazordoonPremium = false --True/false 

--Kazordoon-- 
if Kazordoon == true then 
local travelNode = keywordHandler:addKeyword({'kazordoon'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = KazordoonText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = KazordoonPremium, level = KazordoonLvl, cost = KazordoonCost, destination = KazordoonPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = KazordoonTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'venore'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Venore-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Thais----------------------------------------------------------------------------------------------------------------------------------------- 
local ThaisText = 'Do you want to Travel to Thais for 110 gold coins?' 
local ThaisTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local ThaisLvl = 8 
local ThaisPremium = false --True/false 

--Thais-- 
if Thais == true then 
local travelNode = keywordHandler:addKeyword({'thais'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = ThaisText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = ThaisPremium, level = ThaisLvl, cost = ThaisCost, destination = ThaisPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = ThaisTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Thais-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---AbDendriel----------------------------------------------------------------------------------------------------------------------------------------- 
local AbDendrielText = 'Do you want to Travel to Ab\'Dendriel for 80 gold coins?' 
local AbDendrielTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local AbDendrielLvl = 8 
local AbDendrielPremium = false --True/false 

--AbDendriel-- 
if AbDendriel == true then 
local travelNode = keywordHandler:addKeyword({'ab\'dendriel'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = AbDendrielText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = AbDendrielPremium, level = AbDendrielLvl, cost = AbDendrielCost, destination = AbDendrielPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = AbDendrielTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'ab\'dendriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End AbDendriel-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Edron----------------------------------------------------------------------------------------------------------------------------------------- 
local EdronText = 'Do you want to Travel to Edron for 110 gold coins?' 
local EdronTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local EdronLvl = 8 
local EdronPremium = false --True/false 

--Edron-- 
if Edron == true then 
local travelNode = keywordHandler:addKeyword({'edron'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = EdronText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = EdronPremium, level = EdronLvl, cost = EdronCost, destination = EdronPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = EdronTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End AbDendriel-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Darashia----------------------------------------------------------------------------------------------------------------------------------------- 
local DarashiaText = 'Do you want to Travel to Darashia for 60 gold coins?' 
local DarashiaTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local DarashiaLvl = 8 
local DarashiaPremium = false --True/false 

--Darashia-- 
if Darashia == true then 
local travelNode = keywordHandler:addKeyword({'darashia'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = DarashiaText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = DarashiaPremium, level = DarashiaLvl, cost = DarashiaCost, destination = DarashiaPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = DarashiaTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'darashia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Darashia-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Port Hope----------------------------------------------------------------------------------------------------------------------------------------- 
local PortHopeText = 'Do you want to Travel to Port Hope for 160 gold coins?' 
local PortHopeTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local PortHopeLvl = 8 
local PortHopePremium = false --True/false 

--Port Hope-- 
if PortHope == true then 
local travelNode = keywordHandler:addKeyword({'port hope'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = PortHopeText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = PortHopePremium, level = PortHopeLvl, cost = PortHopeCost, destination = PortHopePosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = PortHopeTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'port hope'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Port Hope-- 

---Nevada----------------------------------------------------------------------------------------------------------------------------------------- 
local NevadaText = 'Do you want to Travel to Nevada for 160 gold coins?' 
local NevadaTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local NevadaLvl = 8 
local NevadaPremium = false --True/false 

--Nevada-- 
if Nevada == true then 
local travelNode = keywordHandler:addKeyword({'nevada'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NevadaText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = NevadaPremium, level = NevadaLvl, cost = NevadaCost, destination = NevadaPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = NevadaTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'nevada'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Nevada-- 



--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Liberty Bay----------------------------------------------------------------------------------------------------------------------------------------- 
local LibertyBayText = 'Do you want to Travel to Liberty Bay for 10 gold coins?' 
local LibertyBayTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local LibertyBayLvl = 8 
local LibertyBayPremium = false --True/false 

--Liberty Bay-- 
if LibertyBay == true then 
local travelNode = keywordHandler:addKeyword({'liberty bay'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = LibertyBayText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = LibertyBayPremium, level = LibertyBayLvl, cost = LibertyBayCost, destination = LibertyBayPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = LibertyBayTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'liberty bay'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Liberty Bay-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Ankrahmun----------------------------------------------------------------------------------------------------------------------------------------- 
local AnkText = 'Do you want to Travel to Ankrahmun for 10 gold coins?' 
local AnkTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local AnkLvl = 8 
local AnkPremium = false --True/false 

--Ankrahmun-- 
if Ank == true then 
local travelNode = keywordHandler:addKeyword({'ankrahmun'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = AnkText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = AnkPremium, level = AnkLvl, cost = AnkCost, destination = AnkPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = AnkTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'ankrahmun'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Ankrahmun-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


---Svargrond----------------------------------------------------------------------------------------------------------------------------------------- 
local SvargrondText = 'Do you want to Travel to Svargrond for 10 gold coins?' 
local SvargrondTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local SvargrondCost = 10 
local SvargrondPremium = false --True/false 

--Svargrond-- 
if Svargrond == true then 
local travelNode = keywordHandler:addKeyword({'xxsvargrond'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = SvargrondText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = SvargrondPremium, level = SvargrondLvl, cost = SvargrondCost, destination = SvargrondPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = SvargrondTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'xxsvargrond'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End AbDendriel-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 



keywordHandler:addKeyword({'destination'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = DestinationText }) 
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = JobText }) 
keywordHandler:addKeyword({'citys'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = CityText }) 
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = HelpText }) 

-- Makes sure the npc reacts when you say hi, bye etc.
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback) 
npcHandler:addModule(FocusModule:new())
