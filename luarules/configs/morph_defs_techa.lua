--[[   Morph Definition File

Morph parameters description
local morphDefs = {			--beginig of morphDefs
	unitname = {			--unit being morphed
		into = 'newunitname',		--unit in that will morphing unit morph into
		time = 10,			--time required to complete morph process
		require = 'requnitname',	--unit requnitname must be present in team for morphing to be enabled
		metal = 10,			--required metal for morphing process     note: if you skip M and/or E costs morph costs the
		energy = 10,		--required energy for morphing process          difference in costs between unitname and newunitname
		xp = 0.07,			--required experience for morphing process (will be deduced from unit xp after morph)
		rank = 1,			--required unit rank for morphing to be enabled
		tech = 2,			--required tech level of a team for morphing to be enabled (1,2,3), if not specified, morph doesn't require tech
	},
}					--end of morphDefs
--]]

local devolution = (-1 > 0)

local morphDefs = {
	armcom = {
		into = 'armcom1',
		time = 45,
	},
	armcom1 = {
		into = 'armcom2',
		time = 90,
	},
	armcom2 = {
		into = 'armcom3',
		time = 180,
	},
	talon_com = {
		into = 'talon_com1',
		time = 45,
	},
	talon_com1 = {
		into = 'talon_com2',
		time = 90,
	},
	talon_com2 = {
		into = 'talon_com3',
		time = 180,
	},
	gok_com = {
		into = 'gok_com1',
		time = 45,
	},
	gok_com1 = {
		into = 'gok_com2',
		time = 90,
	},
	gok_com2 = {
		into = 'gok_com3',
		time = 180,
	},
	corcom = {
		into = 'corcom1',
		time = 45,
	},
	corcom1 = {
		into = 'corcom2',
		time = 90,
	},
	corcom2 = {
		into = 'corcom3',
		time = 180,
	},
	tllcom = {
		into = 'tllcom1',
		time = 45,
	},
	tllcom1 = {
		into = 'tllcom2',
		time = 90,
	},
	tllcom2 = {
		into = 'tllcom3',
		time = 180,
	},
	rumad_com = {
		into = 'rumad_com1',
		time = 60,
	},
	rumad_com1 = {
		into = 'rumad_com2',
		time = 120,
	},
	rumad_com2 = {
		into = 'rumad_com3',
		time = 240,
	},
	rumad_king = {
		into = 'rumad_king1',
		time = 25,
	},
	rumad_king1 = {
		into = 'rumad_king2',
		time = 50,
	},
	rumad_king2 = {
		into = 'rumad_king3',
		time = 100,
	},
	armamd = {
		into = 'armamd1',
		time = 60,
		tech = 2,
	},
	corfmd = {
		into = 'corfmd1',
		time = 60,
		tech = 2,
	},
	talon_damascus = {
		into = 'talon_damascus1',
		time = 60,
		tech = 2,
	},
	tllantinuke = {
		into = 'tllantinuke1',
		time = 60,
		tech = 2,
	},
	gok_antinuke = {
		into = 'gok_antinuke1',
		time = 60,
		tech = 2,
	},
	rumad_antinuke = {
		into = 'rumad_antinuke1',
		time = 60,
		tech = 2,
	},
	armsilo = {
		into = 'armsilo1',
		tech = 2,
		time = 60,
	},
	corsilo = {
		into = 'corsilo1',
		tech = 2,
		time = 60,
	},
	tllsilo = {
		into = 'tllsilo1',
		tech = 2,
		time = 60,
	},
	talon_silo = {
		into = 'talon_silo1',
		tech = 2,
		time = 60,
	},
	gok_silo = {
		into = 'gok_silo1',
		tech = 2,
		time = 60,
	},
	rumad_silo = {
		into = 'rumad_silo1',
		tech = 2,
		time = 60,
	},
	armgeo = {
		{
		into = 'amgeo',
		time = 120,
		tech = 1,
		},
	  {
		into = 'armgmm',
		time = 60,
		tech = 1,
		},
	},
	armgmm = {
		into = 'armfor',
		time = 25,
		tech = 2,
	},
	talon_geo = {
		{
		into = 'talon_mohogeo',
		time = 120,
		tech = 1,
		},
		{
		into = 'talon_pyroclastic',
		time = 90,
		tech = 1,
		},
	},
	talon_mohogeo = {
		into = 'talon_egeo',
		time = 75,
		tech = 2,
	},
	corgeo = {
		{
		into = 'cmgeo',
		time = 120,
		tech = 1,
		},
		{
		into = 'corbhmth',
		time = 90,
		tech = 1,
		},
	},
	corbhmth = {
		into = 'corbhmth1',
		time = 120,
		tech = 2,
	},
	gok_geo = {
		into = 'gok_mohogeo',
		time = 120,
		tech = 1,
	},
	gok_mohogeo = {
		into = 'gok_egeo',
		time = 120,
		tech = 2,
	},
	tllgeo = {
		{
		into = 'tllmohogeo',
		time = 120,
		tech = 1,
		},
		{
		into = 'tllgeo_armored',
		time = 90,
		tech = 1,
		},
	},
	tllmohogeo = {
		into = 'tllegeo',
		time = 100,
		tech = 2,
	},
	armgeo_mini = {
		into = 'armgeo',
		time = 30,
	},
	corgeo_mini = {
		into = 'corgeo',
		time = 30,
	},
	tllgeo_mini = {
		into = 'tllgeo',
		time = 30,
	},
	talon_geo_mini = {
		into = 'talon_geo',
		time = 30,
	},
	gok_geo_mini = {
		into = 'gok_geo',
		time = 30,
	},
	rumad_geo_mini = {
		into = 'rumad_geo',
		time = 60,
	},
	rumad_geo = {
		into = 'rumad_mohogeo',
		time = 30,
		tech = 1,
	},
	rumad_mohogeo = {
		into = 'rumad_egeo',
		time = 110,
		tech = 2,
	},
	rumad_gate2 = {
		into = 'rumad_gate',
		time = 30,
		tech = 1,
	},
	rumad_gate = {
		into = 'rumad_gate4',
		time = 60,
		tech = 2,
	},
	rumad_gate4 = {
		into = 'rumad_gate1',
		time = 90,
		tech = 3,
	},
	rumad_gate1 = {
		into = 'rumad_gate3',
		time = 120,
		tech = 4,
	},
	armgate2 = {
		into = 'armgate',
		time = 30,
		tech = 1,
	},
	armgate = {
		into = 'armgate4',
		time = 60,
		tech = 2,
	},
	armflosh = {
		into = 'armfgate1',
		time = 60,
		tech = 2,
	},
	armgate4 = {
		into = 'armgate1',
		time = 90,
		tech = 3,
	},
	armgate1 = {
		into = 'armgate3',
		time = 120,
		tech = 4,
	},
	corgate2 = {
		into = 'corgate',
		time = 30,
		tech = 1,
	},
	corgate = {
		into = 'corgate4',
		time = 60,
		tech = 2,
	},
	corflshd = {
		into = 'corfgate1',
		time = 60,
		tech = 2,
	},
	corgate4 = {
		into = 'corgate1',
		time = 90,
		tech = 3,
	},
	corgate1 = {
		into = 'corgate3',
		time = 120,
		tech = 4,
	},
	tllgate2 = {
		into = 'tllgate',
		time = 30,
		tech = 1,
	},
	tllgate = {
		into = 'tllgate4',
		time = 60,
		tech = 2,
	},
	tllfgate = {
		into = 'tllfgate1',
		time = 60,
		tech = 2,
	},
	tllgate4 = {
		into = 'tllgate1',
		time = 90,
		tech = 3,
	},
	tllgate1 = {
		into = 'tllgate3',
		time = 120,
		tech = 4,
	},
	talon_gate2 = {
		into = 'talon_gate',
		time = 30,
		tech = 1,
	},
	talon_gate = {
		into = 'talon_gate4',
		time = 60,
		tech = 2,
	},
	talon_fgate = {
		into = 'talon_fgate1',
		time = 60,
		tech = 2,
	},
	talon_gate4 = {
		into = 'talon_gate1',
		time = 90,
		tech = 3,
	},
	talon_gate1 = {
		into = 'talon_gate3',
		time = 120,
		tech = 4,
	},
	gok_gate2 = {
		into = 'gok_gate',
		time = 30,
		tech = 1,
	},
	gok_gate = {
		into = 'gok_gate4',
		time = 60,
		tech = 2,
	},
	gok_fgate = {
		into = 'gok_fgate1',
		time = 60,
		tech = 2,
	},
	gok_gate4 = {
		into = 'gok_gate1',
		time = 90,
		tech = 3,
	},
	gok_gate1 = {
		into = 'gok_gate3',
		time = 120,
		tech = 4,
	},
	armnanotc = {
		into = 'armnanotc1',
		time = 30,
		tech = 1,
	},
	armnanotc1 = {
		into = 'armnanotc2',
		tech = 2,
		time = 60,
	},
	armnanotc2 = {
		into = 'armnanotc3',
		tech = 3,
		time = 80,
	},
	armnanotc3 = {
		into = 'armnanotc4',
		tech = 4,
		time = 100,
	},
	armfnanotc = {
		into = 'armfnanotc1',
		time = 30,
		tech = 1,
	},
	armfnanotc1 = {
		into = 'armfnanotc2',
		tech = 2,
		time = 60,
	},
	armfnanotc2 = {
		into = 'armfnanotc3',
		tech = 3,
		time = 80,
	},
	cornanotc = {
		into = 'cornanotc1',
		tech = 1,
		time = 30,
	},
	cornanotc1 = {
		into = 'cornanotc2',
		tech = 2,
		time = 60,
	},
	cornanotc2 = {
		into = 'cornanotc3',
		tech = 3,
		time = 80,
	},
	cornanotc3 = {
		into = 'cornanotc4',
		tech = 4,
		time = 100,
	},
	corfnanotc = {
		into = 'corfnanotc1',
		tech = 1,
		time = 30,
	},
	corfnanotc1 = {
		into = 'corfnanotc2',
		tech = 2,
		time = 60,
	},
	corfnanotc2 = {
		into = 'corfnanotc3',
		tech = 3,
		time = 80,
	},
	tllnanotc = {
		into = 'tllnanotc1',
		tech = 1,
		time = 30,
	},
	tllnanotc1 = {
		into = 'tllnanotc2',
		tech = 2,
		time = 60,
	},
	tllnanotc2 = {
		into = 'tllnanotc3',
		tech = 3,
		time = 80,
	},
	tllnanotc3 = {
		into = 'tllnanotc4',
		tech = 4,
		time = 100,
	},
	tllfnanotc = {
		into = 'tllfnanotc1',
		tech = 1,
		time = 30,
	},
	tllfnanotc1 = {
		into = 'tllfnanotc2',
		tech = 2,
		time = 60,
	},
	tllfnanotc2 = {
		into = 'tllfnanotc3',
		tech = 3,
		time = 80,
	},
	talon_nanotc = {
		into = 'talon_nanotc1',
		time = 30,
		tech = 1,
	},
	talon_nanotc1 = {
		into = 'talon_nanotc2',
		tech = 2,
		time = 60,
	},
	talon_nanotc2 = {
		into = 'talon_nanotc3',
		tech = 3,
		time = 80,
	},
	talon_nanotc3 = {
		into = 'talon_nanotc4',
		tech = 4,
		time = 100,
	},
	talon_fnanotc = {
		into = 'talon_fnanotc1',
		time = 30,
		tech = 1,
	},
	talon_fnanotc1 = {
		into = 'talon_fnanotc2',
		tech = 2,
		time = 60,
	},
	talon_fnanotc2 = {
		into = 'talon_fnanotc3',
		tech = 3,
		time = 80,
	},
	gok_nanotc = {
		into = 'gok_nanotc1',
		time = 30,
		tech = 1,
	},
	gok_nanotc1 = {
		into = 'gok_nanotc2',
		tech = 2,
		time = 60,
	},
	gok_nanotc2 = {
		into = 'gok_nanotc3',
		tech = 3,
		time = 80,
	},
	gok_nanotc3 = {
		into = 'gok_nanotc4',
		tech = 4,
		time = 100,
	},
	gok_fnanotc = {
		into = 'gok_fnanotc1',
		time = 30,
		tech = 1,
	},
	gok_fnanotc1 = {
		into = 'gok_fnanotc2',
		tech = 2,
		time = 60,
	},
	gok_fnanotc2 = {
		into = 'gok_fnanotc3',
		tech = 3,
		time = 80,
	},
	rumad_nanotc = {
		into = 'rumad_nanotc1',
		tech = 1,
		time = 30,
	},
	rumad_nanotc1 = {
		into = 'rumad_nanotc2',
		tech = 2,
		time = 60,
	},
	rumad_nanotc2 = {
		into = 'rumad_nanotc3',
		tech = 3,
		time = 80,
	},
	rumad_nanotc3 = {
		into = 'rumad_nanotc4',
		tech = 4,
		time = 100,
	},

	-- Special Units
	corkrog = {
		into = 'corskrog',
		tech = 4,
		time = 60,
		xp = 0.10,
	},
	gok_asmodee = {
		into = 'gok_darkarchonte',
		tech = 4,
		time = 60,
		xp = 0.10,
	},
	gok_ifrit = {
		into = 'gok_kadesh',
		tech = 3,
		time = 60,
		xp = 0.10,
	},
	gok_satan = {
		into = 'gok_slanesh',
		tech = 3,
		time = 60,
		xp = 0.10,
	},
	core_turbulence = {
		into = 'coradamantoise',
		tech = 3,
		time = 60,
		xp = 0.10,
	},
	corraven = {
		into = 'corraven1',
		tech = 3,
		time = 60,
		xp = 0.10,
	},
	corhcrus = {
		into = 'corhflag',
		time = 60,
		tech = 3,
		xp = 0.10,
	},
	armorco = {
		into = 'armexo',
		time = 60,
		tech = 4,
		xp = 0.10,
	},
	armmcv = {
		into = 'armmcv1',
		time = 60,
		tech = 3,
		xp = 0.10,
	},
	rumad_mcv = {
		{
		into = 'rumad_mcv1',
		time = 60,
		tech = 3,
		xp = 0.10,
		},
		{
		into = 'rumad_antarion',
		time = 60,
		tech = 2,
		xp = 0.10,
		},
	},
	talon_talos = {
		into = 'talon_mythril',
		time = 60,
		tech = 3,
		xp = 0.10,
	},
	talon_abaddon = {
		into = 'talon_repentance',
		time = 60,
		tech = 3,
		xp = 0.10,
	},
	tllblind = {
		into = 'tllcolossus',
		time = 60,
		tech = 3,
		xp = 0.10,
	},
	tllmosasaurus = {
		into = 'tllalbertosaurus',
		time = 60,
		tech = 3,
		xp = 0.10,
	},
	rumad_mongol = {
	 	into = 'rumad_hellion',
	 	time = 60,
	 	tech = 3,
	 	xp = 0.10,
	},
	-- Titan
	cormkl = {
		into = 'corlilith',
		tech = 4,
		time = 120,
		xp = 0.10,
	},
	gok_octopus = {
		into = 'gok_squid',
		tech = 4,
		time = 120,
		xp = 0.10,
	},
	tllmcv = {
		into = 'tll_neobahomet',
		tech = 4,
		time = 120,
		xp = 0.20,
	},
	rumad_mcv1 = {
		into = 'rumad_mcv2',
		tech = 4,
		time = 120,
		xp = 0.10,
	},

	--Special units morph
	rumad_meyes = {
		{
		into = 'rumad_spy',
		time = 30,
		},
		{
		into = 'rumad_tack',
		time = 30,
		},
		{
		into = 'rumad_syrphid',
		time = 30,
		},
	},
	armnomad = {
		into = 'armvp',
		time = 10,
	},
	armvp = {
		into = 'armnomad',
		time = 10,
	},
	gok_lab = {
		into = 'gok_dome',
		time = 10,
	},
	gok_dome = {
		{
		into = 'gok_lab',
		time = 10,
		},
		{
		into = 'gok_dome1',
		time = 45,
		},
	},
	gok_alab = {
		into = 'gok_dome1',
		time = 10,
	},
	gok_dome1 = {
		into = 'gok_alab',
		time = 10,
	},
	tllnaja = {
		{
		into = 'tlldemon',
		time = 10,
		},
		{
		into = 'tllchameleons',
		time = 10,
		},
	},
	tlldemon = {
		{
		into = 'tllnaja',
		time = 10,
		},
		{
		into = 'tllchameleons',
		time = 10,
		},
	},
	tllchameleons = {
		{
		into = 'tllnaja',
		time = 10,
		},
		{
		into = 'tlldemon',
		time = 10,
		},
	
	},

	----Kura added

	--ARM Laser Def
	armllt = {
		into = 'arm_beamer',
		time = 15,
		xp = 0.50,
		},
	arm_beamer = {
		into = 'armhlt',
		time = 30,
		xp = 1.00,
		},
	armhlt = {
		into = 'armanni',
		time = 30,
		xp = 1.00,
		},
	armanni = {
		into = 'armanni1',
		time = 30,
		xp = 1.00,
		},
	--ARM FLaser Def
	armfllt = {
		into = 'armfhlt',
		time = 30,
		xp = 0.50,
		},
	--ARM Claw>Pit Bull
	armclaw = {
		into = 'armpb',
		time = 15,
		xp = 0.50,
		},
	--ARM Artillery
	armguard = {
		into = 'armamb',
		time = 30,
		xp = 0.50,
		},
	armbrtha2 = {
		{
		into = 'armbrtha',
		time = 30,
		xp = 1.00,
		},
		{
		into = 'arm_emp_lrpt',
		time = 30,
		xp = 1.00,
		},
	},
	armbrtha = {
		{
		into = 'armvulc',
		time = 30,
		xp = 1.00,
		},
		{
		into = 'armbrtha1',
		time = 30,
		xp = 1.00,
		},
	},
	armvulc = {
		into = 'armvulc2',
		time = 30,
		xp = 1.00,
		},
	armvulc2 = {
		into = 'armvulc1',
		time = 30,
		xp = 1.00,
		},
	--ARM AA Def
	armrl = {
		into = 'armflak',
		time = 20,
		xp = 0.30,
		},
	armflak = {
		into = 'armhys',
		time = 20,
		xp = 0.30,
		},
	--ARM FAA
	armfrt = {
		{
		into = 'armfflak',
		time = 20,
		xp = 0.30,
		},
		{
		into = 'armfmercury',
		time = 20,
		xp = 0.30,
		},
	},
	--ARM AA Chainsaw
	armpack = {
		into = 'armcir',
		time = 20,
		xp = 0.30,
		},
	armcir = {
		into = 'armmercury',
		time = 20,
		xp = 0.30,
		},
	armmercury = {
		into = 'arm_ucir',
		time = 20,
		xp = 0.30,
		},
	--ARM Torp
	armtl = {
		into = 'armatl',
		time = 20,
		xp = 0.30,
		},
	--ARM Scout Bot
	armflea = {
		{
		into = 'armvader',
		time = 30,
		xp = 0.50,
		},
		{
		into = 'armamph',
		time = 30,
		xp = 0.50,
		},
		{
		into = 'armspider',
		time = 30,
		xp = 0.50,
		},
		{
		into = 'armspy',
		time = 30,
		xp = 0.50,
		},
	},
	--Peewee
	armpw = {
		{
		into = 'armwar',
		time = 10,
		xp = 0.30,
		},
		{
		into = 'armfast',
		time = 30,
		xp = 0.30,
		},
		{
		into = 'armmav',
		time = 30,
		xp = 0.30,
		},
		{
		into = 'armzeus',
		time = 30,
		xp = 0.30,
		},
		{
		into = 'armtaipan',
		time = 30,
		xp = 0.30,
		},
		{
		into = 'armsnipe',
		time = 30,
		xp = 0.30,
		},
	},
	armwar = {
		into = 'armraz',
		time = 30,
		xp = 0.50,
		},
	armraz = {
		into = 'armraptor',
		time = 30,
		xp = 0.50,
		},
	armzeus = {
		into = 'armbanth',
		time = 30,
		xp = 0.50,
		},
	armsnipe = {
		into = 'armbanth',
		time = 30,
		xp = 0.50,
		},
	armham = {
		{
		into = 'armvengence',
		time = 30,
		xp = 1.50,
		},
		{
		into = 'armfboy',
		time = 30,
		xp = 1.00,
		},
		{
		into = 'armfido',
		time = 30,
		xp = 1.00,
		},
	},
	armfboy = {
		into = 'armshock',
		time = 30,
		xp = 0.50,
		},
	armmav = {
		into = 'armmarauder',
		time = 25,
		xp = 1.00,
		},
	armmarauder = {
		into = 'armfox',
		time = 25,
		xp = 1.00,
		},
	armfast = {
		into = 'armjugg',
		time = 25,
		xp = 1.00,
		},
	armjugg = {
		into = 'armorco',
		time = 25,
		xp = 1.00,
		},
	armfido = {
		into = 'armfox',
		time = 25,
		xp = 1.00,
		},
	armrock = {
		into = 'armtarantula',
		time = 10,
		xp = 0.25,
		},
	armhobo = {
		into = 'armweaver',
		time = 60,
		xp = 1.00,
		},
	armtarantula = {
		into = 'armpraet',
		time = 60,
		xp = 1.00,
		},
	armweaver = {
		into = 'arm_bagheera',
		time = 60,
		xp = 1.00,
		},
	arm_bagheera = {
		into = 'armmygalo',
		time = 60,
		xp = 1.00,
		},
	--ARM VEHICLE--
	armpincer = {
		into = 'armcroc',
		time = 10,
		xp = 1.00,
		},
	armst = {
		into = 'armcroc',
		time = 10,
		xp = 1.00,
		},
	armcroc = {
		into = 'armrex',
		time = 25,
		xp = 1.00,
		},
	armjanus = {
		into = 'armtankanotor',
		time = 20,
		xp = 1.00,
		},
	armmh = {
		into = 'armmerl',
		time = 10,
		xp = 1.00,
		},
	armtankanotor = {
		into = 'armmlrs',
		time = 25,
		xp = 1.00,
		},
	armflash = {
		into = 'armstump',
		time = 10,
		xp = 1.00,
		},
	armstump = {
		into = 'armbull',
		time = 10,
		xp = 1.00,
		},
	armbull = {
		into = 'armthor',
		time = 35,
		xp = 1.00,
		},
	armshellshocker = {
		into = 'armmart',
		time = 10,
		xp = 1.00,
		},
	armmart = {
		{
		into = 'armmcv',
		time = 35,
		xp = 1.00,
		},
		{
		into = 'arm_avatar',
		time = 35,
		xp = 1.00,
		},
	},
	arm_avatar = {
		into = 'armolympus',
		time = 50,
		xp = 1.00,
		},
	armlatnk = {
		into = 'armchimera',
		time = 25,
		xp = 1.00,
		},
	armmanni = {
		{
		into = 'armkrypto',
		time = 25,
		xp = 1.00,
		},
		{
		into = 'armscpion',
		time = 25,
		xp = 1.00,
		},
	},
	--ARM HOVER--
	armsh = {
		into = 'armlhover',
		time = 15,
		xp = 1.00,
		},
	armlhover = {
		into = 'armhanni',
		time = 15,
		xp = 1.00,
		},
	armhanni = {
		into = 'armscpion',
		time = 15,
		xp = 1.00,
		},
	armanac = {
		into = 'armhplasma',
		time = 15,
		xp = 1.00,
		},
	armhplasma = {
		into = 'armtem',
		time = 25,
		xp = 1.00,
		},
	armtem = {
		into = 'armhcrus',
		time = 25,
		xp = 1.00,
		},
	--ARM AA
	armjeth = {
		{
		into = 'armaak',
		time = 30,
		xp = 1.00,
		},
		{
		into = 'armhuntsman',
		time = 30,
		xp = 1.00,
		},
	},
	armaak = {
		into = 'armeak',
		time = 30,
		xp = 1.00,
		},
	armhuntsman = {
		into = 'armeak',
		time = 30,
		xp = 1.00,
		},
	armsam = {
		into = 'armyork',
		time = 30,
		xp = 1.00,
		},
	armyork = {
		into = 'armeflak',
		time = 30,
		xp = 1.00,
		},
	armah = {
		into = 'armiguana',
		time = 30,
		xp = 1.00,
		},
	--ARM Aircraft
	armfig = {
		into = 'armhawk',
		time = 30,
		--xp = 1.00,
		},
	armhawk = {
		into = 'armwolf',
		time = 30,
		--xp = 1.00,
		},
	armwolf = {
		into = 'armstratus',
		time = 30,
		--xp = 1.00,
		},
	armpeep = {
		into = 'armawac',
		time = 30,
		},
	armawac = {
		into = 'armsr71',
		time = 30,
		},
	armatlas = {
		into = 'armdfly',
		time = 30,
		},
	armdfly = {
		into = 'armmuat',
		time = 30,
		},
	armmuat = {
		into = 'armlift',
		time = 30,
		},
	armkam = {
		into = 'armbrawl',
		time = 30,
		},
	armbrawl = {
		into = 'armpers',
		time = 30,
		},
	armthund = {
		{
		into = 'armpnix',
		time = 30,
		},
		{
		into = 'armgripn',
		time = 30,
		},
		{
		into = 'armlance',
		time = 30,
		},
	},
	armpnix = {
		{
		into = 'armcybr',
		time = 30,
		},
		{
		into = 'armorion',
		time = 30,
		},
		{
		into = 'armcyclone',
		time = 30,
		},
	},

	--ARM Boats
	armcarry = {
		into = 'armucar',
		time = 30,
		xp = 1.00,
		},
	armroy = {
		into = 'armbats',
		time = 30,
		xp = 1.00,
		},
	armbats = {
		into = 'armbc',
		time = 30,
		xp = 1.00,
		},
	armbc = {
		into = 'aseadragon',
		time = 30,
		xp = 1.00,
		},
	aseadragon = {
		into = 'armtrmph',
		time = 30,
		xp = 1.00,
		},
	armtrmph = {
		into = 'armcentrum',
		time = 30,
		xp = 1.00,
		},
	armdecade = {
		into = 'armcrus',
		time = 30,
		xp = 1.00,
		},
	armsub = {
		into = 'armsubk',
		time = 30,
		xp = 1.00,
		},
	armsubk = {
		into = 'armserpent',
		time = 30,
		xp = 1.00,
		},
	armserpent = {
		{
		into = 'armbsub',
		time = 30,
		xp = 1.00,
		},
		{
		into = 'armmarlin',
		time = 30,
		xp = 1.00,
		},
	},

	armpt = {
		into = 'armaas',
		time = 30,
		xp = 1.00,
		},
	--ARM Constructors
	armck = {
		{
		into = 'armack',
		time = 30,
		},
		{
		into = 'armcspider',
		time = 30,
		},
	},
	armack = {
		into = 'armsmc',
		time = 30,
		},
	armcspider = {
		into = 'armspid',
		time = 30,
		},
	--ARM Vehicle
	armcv = {
		into = 'armacv',
		time = 30,
		},
	armacv = {
		into = 'armecv',
		time = 30,
		},
	--ARM Aircraft
	armca = {
		into = 'armaca',
		time = 30,
		},
	armaca = {
		into = 'armeca',
		time = 30,
		},
	--ARM Hover
	armch = {
		into = 'armach',
		time = 30,
		},
	armach = {
		into = 'armecv',
		time = 30,
		},
	--ARM Boat
	armcs = {
		into = 'armacsub',
		time = 30,
		},
	armacsub = {
		into = 'armecs',
		time = 30,
		},
	armecs = {
		into = 'armuch',
		time = 30,
		},
	--ARM Radar
	armrad = {
		into = 'armarad',
		time = 30,
		},
	armarad = {
		into = 'armurad',
		time = 30,
		},
	--ARM Jam
	armjamt = {
		into = 'armveil',
		time = 30,
		},
	armveil = {
		into = 'armomni',
		time = 30,
		},
	--ARM Sonar
	armsonar = {
		into = 'armason',
		time = 30,
		},

	--CORE CrBot
	corck = {
		{
		into = 'corack',
		time = 30,
		},
		{
		into = 'corct',
		time = 30,
		},
	},
	corack = {
		into = 'corpinchy',
		time = 30,
		},
	corct = {
		into = 'corpinchy',
		time = 30,
		},
	corpinchy = {
		into = 'corcrab',
		time = 30,
		},
	--CORE CrVehicle
	corcv = {
		into = 'coracv',
		time = 30,
		},
	coracv = {
		into = 'corecv',
		time = 30,
		},
	--CORE CrPlane
	corca = {
		into = 'coraca',
		time = 30,
		},
	coraca = {
		into = 'coreca',
		time = 30,
		},
	--CORE CrHover
	corch = {
		into = 'corach',
		time = 30,
		},
	corach = {
		into = 'coruch',
		time = 30,
		},
	--CORE Infantry
	corak = {
		{
		into = 'corprot',
		time = 30,
		},
		{
		into = 'corgladiator',
		time = 30,
		},
		{
		into = 'corpyro',
		time = 30,
		},
		{
		into = 'corkrogtar',
		time = 30,
		},
		{
		into = 'coramph',
		time = 30,
		},
	},
	corprot = {
		into = 'cortroman',
		time = 30,
		},
	cortroman = {
		into = 'corkrog',
		time = 30,
		},
	corgladiator = {
		into = 'corcan',
		time = 30,
		},
	corcan = {
		into = 'corsumo',
		time = 30,
		},
	corsumo = {
		into = 'corgorg',
		time = 30,
		},
	corpyro = {
		into = 'coreavalanche',
		time = 30,
		},
	corkrogtar = {
		into = 'corgor',
		time = 30,
		},
	corgor = {
		into = 'corkrog',
		time = 30,
		},
	--CORE Cannon Bots
	corthud =	{
		{
		into = 'cormort',
		time = 30,
		},
		{
		into = 'cormenacer',
		time = 30,
		},
	},
	cormort = {
		into = 'corshiva',
		time = 30,
		},
	core_riptide = {
		into = 'core_turbulence',
		time = 30,
		},
	cormenacer = {
		{
		into = 'corhaboob',
		time = 30,
		},
		{
		into = 'core_riptide',
		time = 30,
		},
	},
	corhaboob = {
		into = 'corejudgement',
		time = 30,
		},
	corejudgement = {
		into = 'coradamantoise',
		time = 30,
		},
	--CORE AA Bots
	corcrash = {
		{
		into = 'coraak',
		time = 30,
		},
		{
		into = 'coraapod',
		time = 30,
		},
	},
	coraak = {
		into = 'coreak',
		time = 30,
		},
	coraapod = {
		into = 'cormonsta',
		time = 30,
		},
	cormonsta = {
		into = 'corpokie',
		time = 30,
		},
	corpokie = {
		into = 'cormkl',
		time = 30,
		},
	--CORE Light Bots
	corpunk = {
		{
		into = 'corsktl',
		time = 30,
		},
		{
		into = 'corspy',
		time = 30,
		},
	},
	corsktl = {
		into = 'coretnt',
		time = 30,
		},
	--CORE Rocket Bots
	corstorm = {
		{
		into = 'corkarg',
		time = 30,
		},
		{
		into = 'corhrk',
		time = 30,
		},
	},
	corhrk = {
		into = 'corraven',
		time = 30,
		},
	--CORE Vehicles
	corraid = {
		into = 'correap',
		time = 30,
		},
	correap = {
		into = 'corchamp',
		time = 30,
		},
	corchamp = {
		into = 'corminotaur',
		time = 30,
		},
	corwolv = {
		into = 'cormart',
		time = 30,
		},
	cormart = {
		into = 'cortremor',
		time = 30,
		},
	cortremor = {
		into = 'corsiege',
		time = 30,
		},
	corgarp = {
		into = 'corseal',
		time = 30,
		},
	corseal = {
		into = 'cortigre',
		time = 30,
		},
	cormist = {
		into = 'corsent',
		time = 30,
		},
	corsent = {
		into = 'coramist',
		time = 30,
		},
	corah = {
		into = 'corfrog',
		time = 30,
		},
	corgator = {
		into = 'corabsolutor',
		time = 30,
		},
	corsh = {
		into = 'corhalberd',
		time = 30,
		},
	corhalberd = {
		into = 'corlhover',
		time = 30,
		},
	corlhover = {
		into = 'coradon',
		time = 30,
		},
	coradon = {
		into = 'corhflag',
		time = 30,
		},
	corsnap = {
		into = 'corhgol',
		time = 30,
		},
	corhgol = {
		into = 'corhcrus',
		time = 30,
		},
	corlevlr = {
		into = 'corgol',
		time = 30,
		},
	corgol = {
		{
		into = 'cortigre',
		time = 30,
		},
		{
		into = 'corbt',
		time = 30,
		},
	},

	cormh = {
		{
		into = 'corvroc',
		time = 30,
		},
		{
		into = 'corbanisher',
		time = 30,
		},
		{
		into = 'coraegis',
		time = 30,
		},
	},
	--CORE Planes
	corfink = {
		into = 'corawac',
		time = 30,
		},
	corbladew = {
		{
		into = 'corarpe',
		time = 30,
		},
		{
		into = 'corape',
		time = 30,
		},
	},
	corarpe = {
		into = 'corcrw',
		time = 30,
		},
	corape = {
		into = 'corblackdawn',
		time = 30,
		},
	corveng = {
		into = 'corvamp',
		time = 30,
		},
	corvamp = {
		into = 'corshrike',
		time = 30,
		},
	corshrike = {
		into = 'corshock',
		time = 30,
		},
	corvalk = {
		into = 'corseahook',
		time = 30,
		},
	corseahook = {
		into = 'cormuat',
		time = 30,
		},
	cormuat = {
		into = 'corlift',
		time = 30,
		},
	corshad = {
		{
		into = 'corhurc',
		time = 30,
		},
		{
		into = 'cortitan',
		time = 30,
		},
	},
	corhurc = {
		{
		into = 'corsbomb',
		time = 30,
		},
		{
		into = 'coreclipse',
		time = 30,
		},
	},
	--CORE Radar
	corrad = {
		into = 'corarad',
		time = 30,
		},
	corarad = {
		into = 'corurad',
		time = 30,
		},
	--CORE Jam
	corjamt = {
		into = 'corshroud',
		time = 30,
		},
	corshroud = {
		into = 'coromni',
		time = 30,
		},
	coromni = {
		into = 'corujam',
		time = 30,
		},
	--CORE Defense
	cormaw = {
		into = 'corvipe',
		time = 30,
		},
	corllt = {
		into = 'corhllt',
		time = 30,
		},
	corhllt = {
		into = 'corhlt',
		time = 30,
		},
	corhlt = {
		into = 'cordoom',
		time = 30,
		},
	cordoom = {
		into = 'cordoom1',
		time = 30,
		},
	corpun = {
		into = 'cortoast',
		time = 30,
		},
	cortoast = {
		into = 'corspun',
		time = 30,
		},
	corint2 = {
		{
		into = 'corint',
		time = 30,
		},
		{
		into = 'core_emp_lrpt',
		time = 30,
		},
	},
	corint = {
		{
		into = 'corint1',
		time = 30,
		},
		{
		into = 'corbuzz',
		time = 30,
		},
	},
	corbuzz = {
		into = 'corbuzz2',
		time = 30,
		},
	corbuzz2 = {
		into = 'corbuzz1',
		time = 30,
		},
	corrl = {
		into = 'corflak',
		time = 30,
		},
	corflak = {
		into = 'corpre',
		time = 30,
		},
	corpre = {
		into = 'coruflak',
		time = 30,
		},
	corsam = {
		into = 'corerad',
		time = 30,
		},
	corerad = {
		into = 'corscreamer',
		time = 30,
		},
	corfllt = {
		into = 'corfhlt',
		time = 30,
		},
	corsonar = {
		into = 'corason',
		time = 30,
		},
	cortl = {
		into = 'coratl',
		time = 30,
		},
	corfrt = {
		{
		into = 'corenaa',
		time = 30,
		},
		{
		into = 'corfscreamer',
		time = 30,
		},
	},
	--CORE Boats
	corcarry = {
		into = 'corucar',
		time = 30,
		},
	corroy = {
		into = 'corbats',
		time = 30,
		},
	corbats = {
		into = 'cortyrnt',
		time = 30,
		},
	cortyrnt = {
		into = 'corurbanus',
		time = 30,
		},
	corsub = {
		into = 'corshark',
		time = 30,
		},
	corshark = {
		into = 'corssub',
		time = 30,
		},
	corssub = {
		{
		into = 'corbsub',
		time = 30,
		},
		{
		into = 'coruppercut',
		time = 30,
		},
	},
	coresupp = {
		into = 'corcrus',
		time = 30,
		},
	corcrus = {
		into = 'corblackhy',
		time = 30,
		},
	corblackhy = {
		into = 'corurbanus',
		time = 30,
		},
	corpt = {
		into = 'corarch',
		time = 30,
		},
	corarch = {
		into = 'cormship1',
		time = 30,
		},
	cormship = {
		into = 'cormship1',
		time = 30,
		},

	--TLL Builders
	tllck = {
		{
		into = 'tllack',
		time = 30,
		},
		{
		into = 'tllmusk',
		time = 30,
		},
	},
	tllack = {
		into = 'tlldoc',
		time = 30,
		},
	tllmusk = {
		into = 'tlldoc',
		time = 30,
		},
	tllcv = {
		into = 'tllacv',
		time = 30,
		},
	tllacv = {
		into = 'tllecv',
		time = 30,
		},
	tllecv = {
		into = 'tllucv',
		time = 30,
		},
	tllchover = {
		into = 'tllach',
		time = 30,
		},
	tllca = {
		into = 'tllaca',
		time = 30,
		},
	tllaca = {
		into = 'tlleca',
		time = 30,
		},
	tllcs = {
		into = 'tllacsub',
		time = 30,
		},
	tllacsub = {
		into = 'tllecs',
		time = 30,
		},
	tllecs = {
		into = 'tllucv',
		time = 30,
		},
	--TLL AA Bots
	tllfirestarter = {
		into = 'tllaak',
		time = 30,
		},
	tllaak = {
		into = 'tllloggerhead',
		time = 30,
		},
	tllloggerhead = {
		into = 'tlldilophosaurus',
		time = 30,
		},
	--TLL Cannon Bots
	tllpbot = {
		{
		into = 'tllsnakeneck',
		time = 30,
		},
		{
		into = 'tllartybot',
		time = 30,
		},
	},
	tllsnakeneck = {
		into = 'tllhailstorm',
		time = 30,
		},
	tllhailstorm = {
		into = 'tllheavyimpact',
		time = 30,
		},
	tllartybot = {
		{
		into = 'tllom',
		time = 30,
		},
		{
		into = 'tllmatamata',
		time = 30,
		},
	},
	tllom = {
		into = 'tllluth',
		time = 30,
		},
	tllmatamata = {
		into = 'tllluth',
		time = 30,
		},
	tllluth = {
		into = 'tllirritator',
		time = 30,
		},
	--TLL Scout
	tllbug = {
		{
		into = 'tllspy',
		time = 30,
		},
		{
		into = 'tllcrawlb',
		time = 30,
		},
	},
	--TLL Infantry
	tllprivate = {
		{
		into = 'tlllasbot',
		time = 30,
		},
		{
		into = 'tlltraq',
		time = 30,
		},
		{
		into = 'tllsniper',
		time = 30,
		},
		{
		into = 'tllamphibot',
		time = 30,
		},
		{
		into = 'tlldischarge',
		time = 30,
		},
		{
		into = 'tllhtml',
		time = 30,
		},
	},
	tlllasbot = {
		into = 'tllbind',
		time = 30,
		},
	tllbind = {
		into = 'tllblind',
		time = 30,
		},
	tllsniper = {
		into = 'tllgrim',
		time = 30,
		},
	tllamphibot = {
		into = 'tlldilophosaurus',
		time = 30,
		},
	tlldischarge = {
		into = 'tllhyperion',
		time = 30,
		},
	--TLL Rocket Bot
	tllfireraiser = {
		into = 'tllhtml',
		time = 30,
		},
	tllhtml = {
		into = 'tllsaurus',
		time = 30,
		},
	--TLL Assault Bot
	tllburner = {
		into = 'tllblind',
		time = 30,
		},
	--TLL Plasma Vehicle
	tllhplasma = {
		into = 'tllthumper',
		time = 30,
		},
	tllthumper = {
		into = 'tllinsulator',
		time = 30,
		},
	--TLL Missile Vehicle
	tllhoverrocket = {
		{
		into = 'tllconvincer',
		time = 30,
		},
		{
		into = 'tlldimetrodon',
		time = 30,
		},
	},
	tllconvincer = {
		{
		into = 'tllacid',
		time = 30,
		},
		{
		into = 'tlldemon',
		time = 30,
		},
	},
	tlldimetrodon = {
		{
		into = 'tllacid',
		time = 30,
		},
		{
		into = 'tlldemon',
		time = 30,
		},
	},
	--TLL Assault Vehicle
	tllhovergauss = {
		into = 'tlltelsatnk',
		time = 30,
		},
	tlltelsatnk = {
		into = 'tllmcv',
		time = 30,
		},
	--TLL Scout/Paralyse
	tllhoverlight = {
		into = 'tllanvil',
		time = 30,
		},
	tllgladius = {
		into = 'tllanvil',
		time = 30,
		},
	--TLL Hover AA
	tllhovermissile = {
		into = 'tllhflak',
		time = 30,
		},
	tllhflak = {
		into = 'tllmantis',
		time = 30,
		},
	--TLL Vehicle AA
	tllhoplit = {
		into = 'tllpuncher',
		time = 30,
		},
	tllpuncher = {
		into = 'tllmantis',
		time = 30,
		},
	--TLL Artillery
	tllshaker = {
		into = 'tllloki',
		time = 30,
		},
	tllloki = {
		into = 'tllleopard',
		time = 30,
		},
	tllleopard = {
		into = 'tllmlrpc',
		time = 30,
		},
	--TLL Amph Tank
	tllsalamander = {
		into = 'tllcenturion',
		time = 30,
		},
	tllcenturion = {
		into = 'tllinsulator',
		time = 30,
		},
	--TLL Riot Tank
	tllriot = {
		{
		into = 'tlllochness',
		time = 30,
		},
		{
		into = 'tllroaster',
		time = 30,
		},
	},
	tlllochness = {
		into = 'tllmosasaurus',
		time = 30,
		},
	tllroaster = {
		into = 'tllmosasaurus',
		time = 30,
		},
	--TLL Assault Tank
	tllares = {
		into = 'tllariman',
		time = 30,
		},
	tllariman = {
		into = 'tllcoyote',
		time = 30,
		},
	tllcoyote = {
		into = 'tllhcrus',
		time = 30,
		},
	--TLL Air Scout
	tllprob = {
		into = 'tllrsplane',
		time = 30,
		},
	--TLL Fighter
	tllfight = {
		into = 'tlladvfight',
		time = 30,
		},
	tlladvfight = {
		into = 'tllshu',
		time = 30,
		},
	tllshu = {
		into = 'tllcondor',
		time = 30,
		},
	--TLL Transport
	tlltplane = {
		into = 'tllrobber',
		time = 30,
		},
	tllrobber = {
		into = 'tllbtrans',
		time = 30,
		},
	--TLL Bomber
	tllbomber = {
		{
		into = 'tllabomber',
		time = 30,
		},
		{
		into = 'tlltorpp',
		time = 30,
		},
	},
	tllabomber = {
		{
		into = 'tllanhur',
		time = 30,
		},
		{
		into = 'tllaether',
		time = 30,
		},
	},
	--TLL Gunship
	tll_wasp = {
		{
		into = 'tllcopter',
		time = 30,
		},
		{
		into = 'tllpterodactyl',
		time = 30,
		},
	},
	tllcopter = {
		into = 'tllnuada',
		time = 30,
		},
	--TLL Radar
	tllradar = {
		into = 'tllarad',
		time = 30,
		},
	tllarad = {
		into = 'tllurad',
		time = 30,
		},
	--TLL Jam
	tlljam = {
		into = 'tllajam',
		time = 30,
		},
	tllajam = {
		into = 'tllomni',
		time = 30,
		},
	tllomni = {
		into = 'tllujam',
		time = 30,
		},
	--TLL Lightning
	tllllt = {
		into = 'tllhlt',
		time = 30,
		},
	tllhlt = {
		into = 'tllpulaser',
		time = 30,
		},
	tllpulaser = {
		into = 'tllrlrpc',
		time = 30,
		},
	--TLL Plasma
	tlllbt = {
		into = 'tllplasma',
		time = 30,
		},
	--TLL LPlasma
	tlllrpt2 = {
		{
		into = 'tlllrpt',
		time = 30,
		},
		{
		into = 'tll_emp_lrpt',
		time = 30,
		},
	},
	tlllrpt = {
		{
		into = 'tlllrpt1',
		time = 30,
		},
		{
		into = 'tll_hydre',
		time = 30,
		},
	},
	tll_hydre = {
		into = 'tll_hydre2',
		time = 30,
		},
	tll_hydre2 = {
		into = 'tll_hydre1',
		time = 30,
		},
	--TLL AA
	tlllmt = {
		into = 'tllflak',
		time = 30,
		},
	tllflak = {
		into = 'tlldb',
		time = 30,
		},
	tlldb = {
		into = 'tlluflak',
		time = 30,
		},
	tllsam = {
		{
		into = 'tlltetanos',
		time = 30,
		},
		{
		into = 'tllhmt',
		time = 30,
		},
	},
	tlltetanos = {
		into = 'tlldb',
		time = 30,
		},
	--TLL Gauss
	tll_obliterator1 = {
		into = 'tll_obliterator2',
		time = 30,
		},
	--TLL Sonar
	tllsonar = {
		into = 'tllasonar',
		time = 30,
		},
	--TLL Floating
	tllfllt = {
		into = 'tllhltns',
		time = 30,
		},
	tlltorp = {
		into = 'tllatorp',
		time = 30,
		},
	tllmtns = {
		into = 'tllfflak',
		time = 30,
		},
	tllnssam = {
		into = 'tllfhmt',
		time = 30,
		},
	--TLL Boats
	tllviolator = {
		into = 'tllequalizer',
		time = 30,
		},
	tllequalizer = {
		{
		into = 'tllmako',
		time = 30,
		},
		{
		into = 'tllviking',
		time = 30,
		},
	},
	tllmako = {
		into = 'tllasgard',
		time = 30,
		},
	tllviking = {
		into = 'tllasgard',
		time = 30,
		},
	tllasgard = {
		into = 'tllcaps',
		time = 30,
		},
	tllcaps = {
		into = 'tllpliosaurus',
		time = 30,
		},
	tllplunger = {
		{
		into = 'tllorc',
		time = 30,
		},
		{
		into = 'tllmanta',
		time = 30,
		},
	},
	tllorc = {
		{
		into = 'tllswordfish',
		time = 30,
		},
		{
		into = 'tllbsub',
		time = 30,
		},
	},
	tllmanta = {
		{
		into = 'tllswordfish',
		time = 30,
		},
		{
		into = 'tllbsub',
		time = 30,
		},
	},

	tllotter = {
		into = 'tllsting',
		time = 30,
		},
	tllvisitor = {
		into = 'tllhcar',
		time = 30,
		},
	tllhcar = {
		into = 'tllucar',
		time = 30,
		},
	tllcarry = {
		into = 'tllhcar',
		time = 30,
		},
	--TALON Builders
	talon_psyker = {
		into = 'talon_ack',
		time = 30,
		},
	talon_ack = {
		into = 'talon_eck',
		time = 30,
		},
	talon_cv = {
		into = 'talon_acv',
		time = 30,
		},
	talon_acv = {
		into = 'talon_ech',
		time = 30,
		},
	talon_ca = {
		into = 'talon_aca',
		time = 30,
		},
	talon_aca = {
		into = 'talon_eca',
		time = 30,
		},
	talon_ch = {
		into = 'talon_ach',
		time = 30,
		},
	talon_ach = {
		into = 'talon_ech',
		time = 30,
		},
	talon_ech = {
		into = 'talon_uch',
		time = 30,
		},
	--TALON Lightning Bot
	talon_luridae = {
		into = 'talon_scorpion',
		time = 30,
		},
	talon_crusader = {
		into = 'talon_crab',
		time = 30,
		},
	--TALON Long Range Bot
	talon_sniper = {
		{
		into = 'talon_collier',
		time = 30,
		},
		{
		into = 'talon_hollander',
		time = 30,
		},
	},
	--Bomb Range Bot
	talon_sphere = {
		into = 'talon_herison',
		time = 30,
		},
	--Bomb Assault Bot
	talon_mercenary = {
		into = 'talon_wolf',
		time = 30,
		},
	talon_wolf = {
		{
		into = 'talon_opal',
		time = 30,
		},
		{
		into = 'talon_berserker',
		time = 30,
		},
	},
	talon_opal = {
		into = 'talon_talos',
		time = 30,
		},
	talon_berserker = {
		into = 'talon_talos',
		time = 30,
		},
	--TALON Infantry
	talon_infantry = {
		into = 'talon_fdog',
		time = 30,
		},
	talon_fdog = {
		into = 'talon_boxer',
		time = 30,
		},
	--TALON AA Bot
	talon_rebel = {
		into = 'talon_striker',
		time = 30,
		},
	talon_striker = {
		into = 'talon_eak',
		time = 30,
		},
	talon_eak = {
		into = 'talon_javelin',
		time = 30,
		},
	--TALON HGravitank
	talon_basilisk = {
		into = 'talon_dutchman',
		time = 30,
		},
	--TALON MGTank
	talon_obsidian = {
		{
		into = 'talon_shieldgen',
		time = 30,
		},
		{
		into = 'talon_squarepants',
		time = 30,
		},
	},
	talon_shieldgen = {
		into = 'talon_seth',
		time = 30,
		},
	talon_squarepants = {
		into = 'talon_azul',
		time = 30,
		},
	--TALON Rocket Vehicle
	talon_lupa = {
		{
		into = 'talon_november',
		time = 30,
		},
		{
		into = 'talon_thingyness',
		time = 30,
		},
	},
	talon_november = {
		into = 'talon_armadillo',
		time = 30,
		},
	talon_thingyness = {
		into = 'talon_armadillo',
		time = 30,
		},
	talon_armadillo = {
		into = 'talon_crystal',
		time = 30,
		},
	--TALON AA Vehicle
	talon_sheatiped = {
		into = 'talon_vanguard',
		time = 30,
		},
	talon_vanguard = {
		into = 'talon_expanse',
		time = 30,
		},
	talon_cataphract = {
		into = 'talon_hydra',
		time = 30,
		},
	talon_hydra = {
		into = 'talon_expanse',
		time = 30,
		},
	--TALON LL Vehicle
	talon_topaz = {
		into = 'talon_jewel',
		time = 30,
		},
	talon_jewel = {
		into = 'talon_visitant',
		time = 30,
		},
	talon_visitant = {
		into = 'talon_sirius',
		time = 30,
		},
	talon_snitch = {
		into = 'talon_gorgon',
		time = 30,
		},
	talon_gorgon = {
		into = 'talon_visitant',
		time = 30,
		},
	--TALON Plasma Vehicle
	talon_salamander = {
		into = 'talon_abaddon',
		time = 30,
		},
	--TALON Artillery
	talon_nunchuck = {
		into = 'talon_annubis',
		time = 30,
		},
	--TALON Assault Tank
	talon_xeon = {
		into = 'talon_carbuncle',
		time = 30,
		},
	talon_carbuncle = {
		into = 'talon_grenat',
		time = 30,
		},
	--TALON Scout Plane
	talon_recon = {
		into = 'talon_vigilante',
		time = 30,
		},
	--TALON Gunship
	talon_drone = {
		into = 'talon_vulture',
		time = 30,
		},
	talon_vulture = {
		{
		into = 'talon_ceddral',
		time = 30,
		},
		{
		into = 'talon_pampa',
		time = 30,
		},
	},
	talon_ceddral = {
		into = 'talon_pepper',
		time = 30,
		},
	--TALON Fighter
	talon_token = {
		into = 'talon_echelon',
		time = 30,
		},
	talon_echelon = {
		into = 'talon_hornet',
		time = 30,
		},
	--TALON Transport
	talon_wyvern = {
		into = 'talon_rukh',
		time = 30,
		},
	talon_rukh = {
		into = 'talon_tau',
		time = 30,
		},
	talon_tau = {
		into = 'talon_plutor',
		time = 30,
		},
	--TALON Bomber
	talon_shade = {
		{
		into = 'talon_eclipse',
		time = 30,
		},
		{
		into = 'talon_trident',
		time = 30,
		},
	},
	talon_eclipse = {
		{
		into = 'talon_spirit',
		time = 30,
		},
		{
		into = 'talon_handgod',
		time = 30,
		},
	},
	--TALON Radar
	talon_rad = {
		into = 'talon_arad',
		time = 30,
		},
	talon_arad = {
		into = 'talon_urad',
		time = 30,
		},
	--TALON Jam
	talon_conspiracy = {
		into = 'talon_conspiracy1',
		time = 30,
		},
	talon_conspiracy1 = {
		into = 'talon_conspiracy2',
		time = 30,
		},
	talon_conspiracy2 = {
		into = 'talon_talpax',
		time = 30,
		},
	--TALON Laser
	talon_llt = {
		into = 'talon_hlt',
		time = 30,
		},
	talon_hlt = {
		into = 'talon_sprinkler',
		time = 30,
		},
	--TALON Rocket
	talon_kevlar = {
		into = 'talon_solarwind',
		time = 30,
		},
	--TALON Artillery
	talon_painless = {
		into = 'talon_slinger',
		time = 30,
		},
	talon_slinger = {
		into = 'talon_lrpt',
		time = 30,
		},
	talon_lrpt = {
		{
		into = 'talon_lrpt1',
		time = 30,
		},
		{
		into = 'talon_veloute',
		time = 30,
		},
	},
	talon_veloute = {
		into = 'talon_veloute2',
		time = 30,
		},
	talon_veloute2 = {
		into = 'talon_veloute1',
		time = 30,
		},
	--TALON AA Defense
	talon_rl = {
		{
		into = 'talon_cir',
		time = 30,
		},
		{
		into = 'talon_popcorn',
		time = 30,
		},
	},
	talon_cir = {
		into = 'talon_ptr',
		time = 30,
		},
	talon_popcorn = {
		into = 'talon_popcorn1',
		time = 30,
		},
	--TALON Tachyon
	talon_blt = {
		into = 'talon_blt1',
		time = 30,
		},
	--TALON Boat Builder
	talon_cs = {
		into = 'talon_acs',
		time = 30,
		},
	talon_acs = {
		into = 'talon_ecs',
		time = 30,
		},
	talon_ecs = {
		into = 'talon_uch',
		time = 30,
		},
	--TALON Missile Boat
	talon_vasculitis = {
		into = 'talon_hcar',
		time = 30,
		},
	talon_hcar = {
		into = 'talon_ucar',
		time = 30,
		},
	--TALON Battleship
	talon_mainstay = {
		{
		into = 'talon_crus',
		time = 30,
		},
		{
		into = 'talon_zamak',
		time = 30,
		},
		{
		into = 'talon_imperator',
		time = 30,
		},
	},
	talon_crus = {
		into = 'talon_dread',
		time = 30,
		},
	talon_zamak = {
		into = 'talon_dread',
		time = 30,
		},
	talon_imperator = {
		into = 'talon_dread',
		time = 30,
		},
	talon_dread = {
		into = 'talon_paladium',
		time = 30,
		},
	--TALON Sub
	talon_sub = {
		into = 'talon_coral',
		time = 30,
		},
	talon_coral = {
		{
		into = 'talon_lancelet',
		time = 30,
		},
		{
		into = 'talon_frigate',
		time = 30,
		},
	},
	--TALON Boat AA
	talon_charon = {
		into = 'talon_aas',
		time = 30,
		},
	--TALON Sonar
	talon_sonar = {
		into = 'talon_asonar',
		time = 30,
		},
	--TALON Torp
	talon_tl = {
		into = 'talon_atl',
		time = 30,
		},
	--TALON FAA
	talon_frl = {
		{
		into = 'talon_kernel',
		time = 30,
		},
		{
		into = 'talon_fptr',
		time = 30,
		},
	},
	--TALON FAA
	talon_fhlt = {
		into = 'talon_fsprinkler',
		time = 30,
		},
	--GOK Builder
	gok_ck = {
		into = 'gok_ack',
		time = 30,
		},
	gok_ack = {
		into = 'gok_eck',
		time = 30,
		},
	gok_eck = {
		into = 'gok_ucp',
		time = 30,
		},
	gok_cb = {
		into = 'gok_acv',
		time = 30,
		},
	gok_acv = {
		into = 'gok_ech',
		time = 30,
		},
	gok_ca = {
		into = 'gok_aca',
		time = 30,
		},
	gok_aca = {
		into = 'gok_eca',
		time = 30,
		},
	gok_ch = {
		into = 'gok_ach',
		time = 30,
		},
	gok_ach = {
		into = 'gok_ech',
		time = 30,
		},
	gok_ech = {
		into = 'gok_uch',
		time = 30,
		},
	--GOK Lightning Bot
	gok_psyker = {
		into = 'gok_archon',
		time = 30,
		},
	--GOK Missile/Arty Bot
	gok_withering = {
		into = 'gok_blackcoconut',
		time = 30,
		},
	gok_blackcoconut = {
		{
		into = 'gok_artycrab',
		time = 30,
		},
		{
		into = 'gok_amon',
		time = 30,
		},
	},
	--GOK Melee Bot
	gok_disciple = {
		{
		into = 'gok_mask',
		time = 30,
		},
		{
		into = 'gok_zealot',
		time = 30,
		},
	},
	gok_mask = {
		into = 'gok_antichrist',
		time = 30,
		},
	gok_zealot = {
		into = 'gok_antichrist',
		time = 30,
		},
	gok_antichrist = {
		into = 'gok_satan',
		time = 30,
		},
	--GOK Flame Bot
	gok_negator = {
		into = 'gok_hellfire',
		time = 30,
		},
	gok_hellfire = {
		into = 'gok_ifrit',
		time = 30,
		},
	--GOK AA Bot
	gok_stung = {
		into = 'gok_harbinger',
		time = 30,
		},
	gok_harbinger = {
		into = 'gok_curred',
		time = 30,
		},
	gok_curred = {
		into = 'gok_pandora',
		time = 30,
		},
	--GOK Infantry Bot
	gok_bloodletter = {
		{
		into = 'gok_immortal',
		time = 30,
		},
		{
		into = 'gok_valkyrie',
		time = 30,
		},
		{
		into = 'gok_junglenaut',
		time = 30,
		},
	},
	gok_immortal = {
		into = 'gok_hellspawn',
		time = 30,
		},
	gok_valkyrie = {
		into = 'gok_snipe',
		time = 30,
		},
	gok_junglenaut = {
		into = 'gok_asmodee',
		time = 30,
		},
	gok_hellspawn = {
		into = 'gok_azaroth',
		time = 30,
		},
	--GOK AntiSub Veh
	gok_exorcist = {
		into = 'gok_cancer',
		time = 30,
		},
	--GOK AA Veh
	gok_seastrike = {
		into = 'gok_seastrike1',
		time = 30,
		},
	gok_seastrike1 = {
		into = 'gok_nahash',
		time = 30,
		},
	gok_earthstrike = {
		into = 'gok_pains',
		time = 30,
		},
	gok_pains = {
		into = 'gok_nahash',
		time = 30,
		},
	--GOK Melee Veh
	gok_cut = {
		into = 'gok_cut1',
		time = 30,
		},
	--GOK Beam Veh
	gok_faerie = {
		into = 'gok_avatar',
		time = 30,
		},
	gok_avatar = {
		{
		into = 'gok_gagmamoz',
		time = 30,
		},
		{
		into = 'gok_nightfall',
		time = 30,
		},
	},
	gok_gagmamoz = {
		into = 'gok_abyss',
		time = 30,
		},
	gok_nightfall = {
		into = 'gok_pound',
		time = 30,
		},
	--GOK Flame Veh
	gok_hellbiker = {
		{
		into = 'gok_agrat',
		time = 30,
		},
		{
		into = 'gok_mahlat',
		time = 30,
		},
	},
	gok_agrat = {
		into = 'gok_godsword',
		time = 30,
		},
	gok_mahlat = {
		into = 'gok_godsword',
		time = 30,
		},
	--GOK Rocket Veh
	gok_moonstrike = {
		into = 'gok_sunstrike',
		time = 30,
		},
	--GOK Assault Tank
	gok_godhammer = {
		into = 'gok_imp',
		time = 30,
		},
	gok_imp = {
		{
		into = 'gok_cacodemon',
		time = 30,
		},
		{
		into = 'gok_jocond',
		time = 30,
		},
	},
	gok_cacodemon = {
		into = 'gok_diablo',
		time = 30,
		},
	gok_jocond = {
		into = 'gok_mlrpt',
		time = 30,
		},
	--GOK Scout Plane
	gok_vision = {
		into = 'gok_demoneye',
		time = 30,
		},
	--GOK Fighter
	gok_angel = {
		into = 'gok_sucub',
		time = 30,
		},
	gok_sucub = {
		into = 'gok_wraith',
		time = 30,
		},
	gok_wraith = {
		into = 'gok_zakul',
		time = 30,
		},
	--GOK Transport
	gok_chariot = {
		into = 'gok_wordbearer',
		time = 30,
		},
	gok_wordbearer = {
		into = 'gok_benne',
		time = 30,
		},
	gok_benne = {
		into = 'gok_lift',
		time = 30,
		},
	--GOK Bomber
	gok_dirgesinger = {
		{
		into = 'gok_hookah',
		time = 30,
		},
		{
		into = 'gok_revenant',
		time = 30,
		},
	},
	gok_hookah = {
		into = 'gok_nurgle',
		time = 30,
		},
	--GOK Gunship
	gok_specter = {
		{
		into = 'gok_spook',
		time = 30,
		},
		{
		into = 'gok_nosferatu',
		time = 30,
		},
	},
	gok_spook = {
		into = 'gok_dvergar',
		time = 30,
		},
	--GOK AA Def
	gok_rl = {
		{
		into = 'gok_flak',
		time = 30,
		},
		{
		into = 'gok_cir',
		time = 30,
		},
	},
	gok_cir = {
		{
		into = 'gok_ptr',
		time = 30,
		},
		{
		into = 'gok_ucir',
		time = 30,
		},
	},
	gok_flak = {
		into = 'gok_eflak',
		time = 30,
		},
	--GOK Radar
	gok_rad = {
		into = 'gok_arad',
		time = 30,
		},
	gok_arad = {
		into = 'gok_urad',
		time = 30,
		},
	--GOK Jam
	gok_jam = {
		into = 'gok_jam1',
		time = 30,
		},
	gok_jam1 = {
		into = 'gok_ejam',
		time = 30,
		},
	gok_ejam = {
		into = 'gok_ujam',
		time = 30,
		},
	--GOK Laser Def
	gok_llt = {
		into = 'gok_slesh',
		time = 30,
		},
	gok_slesh = {
		into = 'gok_slesh1',
		time = 30,
		},
	--GOK Plasma Def
	gok_blackdawn = {
		into = 'gok_orchid',
		time = 30,
		},
	gok_orchid = {
		into = 'gok_lrpt',
		time = 30,
		},
	gok_lrpt = {
		into = 'gok_lrpt1',
		time = 30,
		},
	--GOK Meteor
	gok_meteor = {
		into = 'gok_meteor2',
		time = 30,
		},
	gok_meteor2 = {
		into = 'gok_meteor1',
		time = 30,
		},
	--GOK WAA
	gok_frl = {
		into = 'gok_fflak',
		time = 30,
		},
	--GOK Torp
	gok_tl = {
		into = 'gok_atl',
		time = 30,
		},
	--GOK Sonar
	gok_sonar = {
		into = 'gok_asonar',
		time = 30,
		},
	--GOK Destroyer
	gok_roy = {
		into = 'gok_crus',
		time = 30,
		},
	gok_crus = {
		into = 'gok_bats',
		time = 30,
		},
	gok_bats = {
		into = 'gok_valefor',
		time = 30,
		},
	--GOK Sub
	gok_sub = {
		into = 'gok_drac',
		time = 30,
		},
	gok_drac = {
		into = 'gok_bsub',
		time = 30,
		},
	gok_bsub = {
		into = 'gok_tzenth',
		time = 30,
		},
	--GOK AA/Missile Boat
	gok_corvette = {
		{
		into = 'gok_aas',
		time = 30,
		},
		{
		into = 'gok_mship',
		time = 30,
		},
	},
	--GOK Beam Boat
	gok_kafka = {
		into = 'gok_valefor',
		time = 30,
		},
	--GOK (anti)-Nuke
	gok_carry = {
		into = 'gok_hcar',
		time = 30,
		},
	gok_hcar = {
		into = 'gok_ucar',
		time = 30,
		},
	--RUMAD Builders
	rumad_ck = {
		into = 'rumad_ack',
		time = 30,
		},
	rumad_ack = {
		into = 'rumad_eck',
		time = 30,
		},
	rumad_cv = {
		into = 'rumad_acv',
		time = 30,
		},
	rumad_acv = {
		into = 'rumad_ecv',
		time = 30,
		},
	rumad_ecv = {
		into = 'rumad_uck',
		time = 30,
		},
	rumad_ca = {
		into = 'rumad_aca',
		time = 30,
		},
	rumad_aca = {
		into = 'rumad_eca',
		time = 30,
		},
	--RUMAD Rocket Bot
	rumad_camel = {
		into = 'rumad_macm',
		time = 30,
		},
	rumad_macm = {
		into = 'rumad_howie',
		time = 30,
		},
	rumad_howie = {
		into = 'rumad_oasis',
		time = 30,
		},
	--RUMAD Arty/Assault Bot
	rumad_templar = {
		{
		into = 'rumad_lightartybot',
		time = 30,
		},
		{
		into = 'rumad_vergenten',
		time = 30,
		},
	},
	rumad_lightartybot = {
		into = 'rumad_artybot',
		time = 30,
		},
	rumad_vergenten = {
		into = 'rumad_zorga',
		time = 30,
		},
	rumad_artybot = {
		{
		into = 'rumad_gala',
		time = 30,
		},
		{
		into = 'rumad_mklrpt',
		time = 30,
		},
	},
	rumad_zorga = {
		into = 'rumad_macross',
		time = 30,
		},
	rumad_macross = {
		{
		into = 'rumad_mirage',
		time = 30,
		},
		{
		into = 'rumad_mongol',
		time = 30,
		},
	},
	--RUMAD AA Bot
	rumad_ak = {
		into = 'rumad_aak',
		time = 30,
		},
	rumad_aak = {
		into = 'rumad_eak',
		time = 30,
		},
	--RUMAD Missile Veh
	rumad_bliz = {
		into = 'rumad_rottweiler',
		time = 30,
		},
	rumad_rottweiler = {
		into = 'rumad_garuda',
		time = 30,
		},
	rumad_garuda = {
		{
		into = 'rumad_sahara',
		time = 30,
		},
		{
		into = 'rumad_fennek',
		time = 30,
		},
	},
	rumad_sahara = {
		into = 'rumad_mcv',
		time = 30,
		},
	--RUMAD Scout Plane
	rumad_ascout_lvl1 = {
		into = 'rumad_ascout_lvl2',
		time = 30,
		},
	--RUMAD Fighter
	rumad_fighter_lvl1 = {
		into = 'rumad_fighter_lvl2',
		time = 30,
		},
	rumad_fighter_lvl2 = {
		into = 'rumad_fighter_lvl3',
		time = 30,
		},
	--RUMAD Transport
	rumad_airtrans_lvl1 = {
		into = 'rumad_airtrans_lvl2',
		time = 30,
		},
	--RUMAD Gunship
	rumad_gunship_lvl1 = {
		into = 'rumad_gunship_lvl2',
		time = 30,
		},
	rumad_gunship_lvl2 = {
		into = 'rumad_gunship_lvl3',
		time = 30,
		},
	--RUMAD Bomber
	rumad_bomber_lvl1 = {
		into = 'rumad_bomber_lvl2',
		time = 30,
		},
	rumad_bomber_lvl2 = {
		into = 'rumad_bomber_lvl3',
		time = 30,
		},
	rumad_bomber_lvl3 = {
		into = 'rumad_overlord',
		time = 30,
		},
	--RUMAD Radar
	rumad_rad = {
		into = 'rumad_arad',
		time = 30,
		},
	rumad_arad = {
		into = 'rumad_urad',
		time = 30,
		},
	--RUMAD Jam
	rumad_jam = {
		into = 'rumad_jam1',
		time = 30,
		},
	rumad_jam1 = {
		into = 'rumad_ejam',
		time = 30,
		},
	rumad_ejam = {
		into = 'rumad_ujam',
		time = 30,
		},
	--RUMAD Missile Def
	rumad_llt = {
		into = 'rumad_hotshot',
		time = 30,
		},
	rumad_hotshot = {
		into = 'rumad_hotshot1',
		time = 30,
		},
	--RUMAD Plasma Def
	rumad_pt = {
		into = 'rumad_triton',
		time = 30,
		},
	rumad_triton = {
		into = 'rumad_rainfire',
		time = 30,
		},
	rumad_rainfire = {
		into = 'rumad_rainfire2',
		time = 30,
		},
	--RUMAD Arty Def
	rumad_mortor = {
		into = 'rumad_lrpt',
		time = 30,
		},
	rumad_lrpt = {
		into = 'rumad_lrpt1',
		time = 30,
		},
	--RUMAD AA Def
	rumad_rl = {
		{
		into = 'rumad_sam',
		time = 30,
		},
		{
		into = 'rumad_flak',
		time = 30,
		},
	},
	rumad_flak = {
		into = 'rumad_erl',
		time = 30,
		},
	rumad_sam = {
		into = 'rumad_cir',
		time = 30,
		},
	rumad_cir = {
		{
		into = 'rumad_ptr',
		time = 30,
		},
		{
		into = 'rumad_erl',
		time = 30,
		},
	},
	rumad_erl = {
		into = 'rumad_rlrpt',
		time = 30,
		},
}

--
-- Here's an example of why active configuration
-- scripts are better then static TDF files...
--

--
-- devolution, babe  (useful for testing)
--
if (devolution) then
  local devoDefs = {}
  for src,data in pairs(morphDefs) do
    devoDefs[data.into] = { into = src, time = 10, metal = 1, energy = 1 }
  end
  for src,data in pairs(devoDefs) do
    morphDefs[src] = data
  end
end


return morphDefs

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------