	-- Owner Data
	ownerName = "Magnun"
	ownerEmail = "solebra@gmail.com"
	url = "http://www.solebra.com.br"
	location = "Canada"

	-- Messages
	motd = "Welcome to the Solebra!"
	serverName = "Solebra"
	loginMessage = "Welcome to Solebra Server! For information, our website is www.solebra.com.br"
	displayGamemastersWithOnlineCommand = false

	-- MySql
	sqlType = "mysql"
	sqlHost = "127.0.0.1"
	sqlPort = 3306
	sqlUser = "root"
	sqlPass = "sirzek"
	sqlDatabase = "otx"
	sqlFile = ""
	sqlKeepAlive = 0
	mysqlReadTimeout = 10
	mysqlWriteTimeout = 10
	mysqlReconnectionAttempts = 5
	encryptionType = "sha1" 

	-- World / Ip / Port
	worldId = 0
	ip = "189.91.128.27"
	worldType = "open"
	bindOnlyGlobalAddress = false
	loginPort = 7171
	gamePort = "7172"
	statusPort = 7171
	loginOnlyWithLoginServer = false

	-- Account manager
	accountManager = false
	namelockManager = true
	newPlayerChooseVoc = true
	newPlayerSpawnPosX = 32097
	newPlayerSpawnPosY = 32219
	newPlayerSpawnPosZ = 7
	newPlayerTownId = 2
	newPlayerLevel = 1
	newPlayerMagicLevel = 0
	generateAccountNumber = false
	generateAccountSalt = false

	-- Limits on frags / Time
	fragsLimit = 6 * 60 * 60
	fragsSecondLimit = 6 * 60 * 60
	fragsThirdLimit = 6 * 60 * 60

	-- Red Skull Config
	fragsToRedSkull = 4
	fragsSecondToRedSkull = 28
	fragsThirdToRedSkull = 120
	redSkullLength = 1 * 12 * 60 * 60

	-- Black Skull Config
	fragsToBlackSkull = 6
	fragsSecondToBlackSkull = 10
	fragsThirdToBlackSkull = 20
	blackSkulledDeathHealth = 40
	blackSkulledDeathMana = 0
	blackSkullLength = 6 * 24 * 60 * 60
	useBlackSkull = false

	-- Banishment Config
	-- killsBanLength works only if useBlackSkull option is disabled.
	notationsToBan = 3
	warningsToFinalBan = 4
	warningsToDeletion = 5
	banLength = 1 * 24 * 60 * 60
	killsBanLength = 1 * 24 * 60 * 60
	finalBanLength = 3 * 24 * 60 * 60
	ipBanLength = 1 * 24 * 60 * 60
	fragsToBanishment = 6
    broadcastBanishments = true
	
	-- Battle
	-- NOTE: showHealth/ManaChangeForMonsters inherites from showHealth/ManaChange.
	protectionLevel = 0
	pvpTileIgnoreLevelAndVocationProtection = false
	allowFightback = true
	pzLocked = 60 * 1000
	huntingDuration = 60 * 1000
	criticalHitMultiplier = 1
	displayCriticalHitNotify = false
	removeWeaponAmmunition = true
	removeWeaponCharges = true
	removeRuneCharges = true
	whiteSkullTime = 15 * 60 * 1000
	advancedFragList = false
	useFragHandler = true
	noDamageToSameLookfeet = false
	showHealthChange = false
	showManaChange = false
	showHealthChangeForMonsters = false
	showManaChangeForMonsters = false
	fieldOwnershipDuration = 5 * 1000
	stopAttackingAtExit = true
	loginProtectionPeriod = 1 * 1000
	deathLostPercent = 10
	stairhopDelay = 0 * 1000
	pushCreatureDelay = 0.5 * 1000
	deathContainerId = 1987
	gainExperienceColor = 215
	addManaSpentInPvPZone = true
	recoverManaAfterDeathInPvPZone = true
	squareColor = 0
	-- RSA
	-- NOTE: These should not be changed unless you know what your doing!
	-- Prime1 - known as p; Prime2 - known as q; Public - known as e;
	-- Modulus - known as n; Private - known as d.
	-- How make custom client with custom RSA Key: http://vapus.net/customclient
	rsaPrime1 = "12430342535887449341051712972178663890554808214452101068247821339376518184030292041714674071694287464619520538215928943018608244515273102273842956197226577"
	rsaPrime2 = "7878001544190338546670311020773257306200344621201421677742746538593092305740942322051673771504307681183002485917252513450610464847721339934770264236980683"
	rsaPublic = "65537"
	rsaModulus = "97926257692536174651922142899684740289028242725786165638200325239439334989487814395593882549200309456097317459591706581617480121596081124775027188649794124799147872769035509299282766275148286087217292540465625351846458437138188769239218012780572129505266447245224183204293217612594108232683244464164923212091"
	rsaPrivate = "75665467801277741553606136904300403794743445433741026317237991818361665693160709723949503614888604460797901320418457201070045560179806095449633059280054376265465511971742501320640356170024514040716115054059546027065413984392559158337546945772723199602630564842569668021215955901520204069751252185116468234977"

    -- OTX Server Extras Features
		-- Battle
		optionalWarAttackableAlly = true
		fistBaseAttack = 7
		criticalHitChance = 7
		noDamageToGuildMates = false
			-- if true then no damage, if false then damage
		noDamageToPartyMembers = false
			-- if true then no damage, if false then damage

		-- Rook System
		rookLevelTo = 5
		rookLevelToLeaveRook = 8
		rookTownId = 12
		useRookSystem = true

		-- Paralyze delay
		paralyzeDelay = 1500

		-- GUI
		premiumDaysToAddByGui = 0

		-- Depot and Miscellaneous
		-- set playerFollowExhaust to 2000 if someone causes lags and kicks by following unreachable creatures too often
		useCapacity = true
		defaultDepotSize = 1000
		defaultDepotSizePremium = 2000
		enableProtectionQuestForGM = true
		cleanItemsInMap = true
		playerFollowExhaust = 2000

		-- 8.7x + config
		monsterSpawnWalkback = true
		allowBlockSpawn = true
		classicEquipmentSlots = true

		-- Summons and monsters
		NoShareExpSummonMonster = true

		-- Others
		enableLootBagDisplay = false
		attackImmediatelyAfterLoggingIn = false
		exhaustionNPC = true
		exhaustionInSecondsNPC = 0.5

		-- Old Configs
		tileHeightBlock = true
		useStamina = true
		autoStack = true
		runesHitTopCreature = true
		charlistBasicInfo = true
		classicDamageOnWeapons = true
		
		-- ConfigSpells
		noAttackHealingSimultaneus = true
		enableCooldowns = true

	-- Connection config
	loginTries = 20
	retryTimeout = 5 * 1000
	loginTimeout = 60 * 1000
	maxPlayers = 3000
	displayOnOrOffAtCharlist = false
	onePlayerOnlinePerAccount = true
	allowClones = 0
	statusTimeout = 1000
	replaceKickOnLogin = true
	forceSlowConnectionsToDisconnect = false
	premiumPlayerSkipWaitList = true
	packetsPerSecond = 50

	-- Deathlist
	deathListEnabled = true
	deathListRequiredTime = 0 * 60 * 1000
	deathAssistCount = 2
	maxDeathRecords = 2
	multipleNames = false

	-- Guilds
	-- NOTE: externalGuildWarsManagement supports Automatic Account Creator(webpage or whatever you want)
	externalGuildWarsManagement = false
	ingameGuildManagement = false
	levelToFormGuild = 20
	premiumDaysToFormGuild = 7
	guildNameMinLength = 4
	guildNameMaxLength = 20

	-- Houses
	buyableAndSellableHouses = true
	houseNeedPremium = false
	bedsRequirePremium = false
	levelToBuyHouse = 20
	housesPerAccount = 1
	houseRentAsPrice = false
	housePriceAsRent = false
	housePriceEachSquare = 350
	houseRentPeriod = "weekly"
	houseCleanOld = 7 * 24 * 60 * 60
	guildHalls = true
	houseSkipInitialRent = true
	houseProtection = true

	-- Item usage
	timeBetweenActions = 150
	timeBetweenExActions = 500
	timeBetweenCustomActions = 500
	checkCorpseOwner = false
	maximumDoorLevel = 999
	tradeLimit = 100
	canOnlyRopePlayers = false

	-- Map
	-- NOTE: storeTrash costs more memory, but will perform alot faster cleaning.
	-- houseDataStorage usage may be found at how-use-internal-functions.log
	mapAuthor = "Solebra Team"
	randomizeTiles = true
	houseDataStorage = "binary-tilebased"
	storeTrash = true
	cleanProtectedZones = true
	mapName = "world.otbm"

	-- Mailbox
	mailMaxAttempts = 5
	mailBlockPeriod = 30 * 60 * 1000
	mailAttemptsFadeTime = 5 * 60 * 1000
	mailboxDisabledTowns = "12"
		-- Example disable rook depot (temple) "4"
		-- mailboxDisabledTowns = "4"

	-- Startup
	-- For Linux use "-1" is default
	-- daemonize works only on *nix, same as niceLevel
	daemonize = false
	defaultPriority = "higher"
	niceLevel = 5
	serviceThreads = 1
	coresUsed = "-1" 
	startupDatabaseOptimization = true
	removePremiumOnInit = true
	confirmOutdatedVersion = false
	skipItemsVersionCheck = false

	-- Muted buffer
	maxMessageBuffer = 0

	-- Miscellaneous
	dataDirectory = "data/"
	logsDirectory = "data/logs/"
	disableOutfitsForPrivilegedPlayers = false
	bankSystem = true
	spellNameInsteadOfWords = false
	emoteSpells = false
	unifiedSpells = true
	promptExceptionTracerErrorBox = true
	storePlayerDirection = false
	savePlayerData = true
	monsterLootMessage = 3
	monsterLootMessageType = 22
	separateViplistPerCharacter = false
	vipListDefaultLimit = 20
	vipListDefaultPremiumLimit = 100

	-- Outfits
	allowChangeOutfit = true
	allowChangeColors = true
	allowChangeAddons = true
	addonsOnlyPremium = true

	-- Ghost mode
	ghostModeInvisibleEffect = true
	ghostModeSpellEffects = true

	-- Limits
	idleWarningTime = 14 * 60 * 1000
	idleKickTime = 15 * 60 * 1000
	expireReportsAfterReads = 1
	playerQueryDeepness = -1
	protectionTileLimit = 80
	houseTileLimit = 50
	tileLimit = 80

	-- Premium-related
	freePremium = false
	premiumForPromotion = false
	updatePremiumStateAtStartup = true

	-- Blessings
	blessings = true
	blessingOnlyPremium = false
	blessingReductionBase = 30
	blessingReductionDecrement = 5
	eachBlessReduction = 8
	useFairfightReduction = true
	pvpBlessingThreshold = 40
	fairFightTimeRange = 60

	-- Rates
	experienceStages = true
	rateExperience = 100.0
	rateExperienceFromPlayers = 0
	levelToOfflineTraining = 8
	rateSkill = 2.0
	rateSkillOffline = 0.5
	rateMagic = 2.0
	rateMagicOffline = 0.5
	rateLoot = 1.5
	rateSpawnMin = 8
	rateSpawnMax = 10
	formulaLevel = 5.0
	formulaMagic = 1.0
		-- Monster rates
		rateMonsterHealth = 1.0
		rateMonsterMana = 1.0
		rateMonsterAttack = 0.9
		rateMonsterDefense = 1.0

	-- Experience from players
	minLevelThresholdForKilledPlayer = 0.9
	maxLevelThresholdForKilledPlayer = 1.1

	-- Stamina System
	rateStaminaLoss = 0
	rateStaminaGain = 3
	rateStaminaThresholdGain = 12
	staminaRatingLimitTop = 40 * 60
	staminaRatingLimitBottom = 14 * 60
	staminaLootLimit = 14 * 60
	rateStaminaAboveNormal = 1.1
	rateStaminaUnderNormal = 1.1
	staminaThresholdOnlyPremium = true

	-- Party System
	experienceShareRadiusX = 30
	experienceShareRadiusY = 30
	experienceShareRadiusZ = 1
	experienceShareLevelDifference = 2 / 3
	extraPartyExperienceLimit = 10
	extraPartyExperiencePercent = 10
	experienceShareActivity = 2 * 60 * 1000

	-- Global save
	globalSaveEnabled = true
	globalSaveHour = 6
	globalSaveMinute = 00
	shutdownAtGlobalSave = false
	cleanMapAtGlobalSave = false

	-- Spawns
	minRateSpawn = 1
	maxRateSpawn = 1
	deSpawnRange = 2
	deSpawnRadius = 999999

	-- Summons
	maxPlayerSummons = 2
	teleportAllSummons = false
	teleportPlayerSummons = false

	-- Logs
	disableLuaErrors = true
	adminLogs = true
	displayPlayersLogging = true
	prefixChannelLogs = ""
	runFile = "server/run.log"
	outputLog = "server/out.log"
	truncateLogOnStartup = false
	logPlayersStatements = true

	-- Manager
	-- NOTE: managerPassword left blank disables manager.
	managerPort = 7171
	managerLogs = true
	managerPassword = ""
	managerLocalhostOnly = true
	managerConnectionsLimit = 1

	-- Admin
	-- NOTE: adminPassword left blank disables manager.
	-- Set to anything if you set adminRequireLogin to false.
	-- adminEncryption available options: rsa1024xtea;
	-- remember to set correct data!
	adminPort = 7171
	adminPassword = ""
	adminLocalhostOnly = true
	adminConnectionsLimit = 1
	adminRequireLogin = true
	adminEncryption = ""
	adminEncryptionData = ""

	-- Don't edit use at your own risk
	saveGlobalStorage = false
	bufferMutedOnSpellFailure = false
	
	-- additional exp percentage per party member
    extraPartyExperiencePercentPerMember = 5

    -- max members to multiply (set 0 to disable additional exp)
    extraPartyExperienceMemberLimit = 5
