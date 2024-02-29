
function onInit()
	-- Only load if Chat Aestheics Configuration is laoded
	if DrowbeCAC then
		-- Add custom themes and icons here. Make a call for each theme
		-- "Human Readable Name in settings", "appended identifier"
		DrowbeCAC.addIconTheme("Icon Example", "custom1")
		DrowbeCAC.addFontTheme("Font Example", "custom1")
		DrowbeCAC.addGMPortrait("Dungeon Master", "custom1")

	end

	local aSpells = {
		'alarm',
		'antilifeshell',
		'antimagicfield',
		'armsofhadar',
		'auraoflife',
		-- 'auraofprotection',
		'auraofpurity',
		'auraofvitality',
		'beaconofhope',
		'hand',
		'bladebarriersphere',
		-- 'bladebarrier',
		'bonesoftheearth',
		'bonfire',
		'calllightning',
		'calmemotions',
		'circleofdeath',
		'circleofpower',
		'cloudofdaggers',
		'cloudkill',
		-- 'coneofcold',
		'controlwinds',
		'crownofmadness',
		'crownofstars',
		'dansemacarbre',
		'darkness',
		'dawn',
		'daylight',
		'delayedblastfireball',
		'demiplane',
		'destructivewave',
		'divinefavor',
		'dragonbreath',
		'druidgrove',
		'dustdevil',
		'earthbind',
		'ensnaringstrike',
		'entangle',
		'eruptingearth',
		'blacktentacles',
		'fariefire',
		'fireshieldcold',
		'fireshieldhot',
		'fireball',
		'firestorm',
		'flamingsphere',
		'fogcloud',
		'forcecage',
		'gate',
		'globeofinvulnerability',
		'graspingvine',
		'grease',
		'guardianoffaith',
		-- 'gustofwind',
		'hailofthorns',
		'hallow',
		'healingspirit',
		'holyaura',
		'holyweapon',
		'hungarofhadar',
		'hypnoticpattern',
		'iceknife',
		'icestorm',
		'illusorydragon',
		'illusorydragonbreath',
		'immolation',
		'incendarycloud',
		'insectplague',
		'investitureofflame',
		'investitureofice',
		'investitureofstone',
		'investitureofwind',
		'tinyhut',
		-- 'lightningbolt',
		'maddeningdarkness',
		'maelstrom',
		'magehand',
		'magiccircle',
		'magicmouth',
		'earthengrasp',
		'minutemeteors',
		'mightyfortress',
		'moonbeam',
		'faithfulhound',
		'magnificentmansion',
		'sword',
		'privatesanctum',
		'resilientsphere',
		'primsmaticwallsphere',
		-- 'primsmaticwall',
		'ropetrick',
		'shadowofmoil',
		'shatter',
		'sickeningradiance',
		'silence',
		'sleep',
		'sleetstorm',
		'snare',
		'snowballswarm',
		'spikegrowth',
		'spiritguardians',
		'spiritualweapon',
		'stinkingcloud',
		'stormsphere',
		-- 'sunbeam',
		'sunburst',
		'synapticstatic',
		'templeofthegodsevil',
		'templeofthegodsgood',
		'floatingdisk',
		'thunderwave',
		-- 'tidlewave',
		'tinyservant',
		'transmuterock',
		'walloffiresphere',
		-- 'walloffire',
		'wallofforcesphere',
		-- 'wallofforce',
		'walloficesphere',
		-- 'wallofice',
		-- 'walloflight',
		-- 'wallofsand',
		-- 'wallofstone',
		'wallofthornssphere',
		-- 'wallofthorns',
		'wallofwatersphere',
		-- 'wallofwater',
		'wardingwind',
		'waterysphere',
		'web',
		'whirlwind',
		-- 'windwall',
		'wrathofnature',
		'zoneoftruth'
	}

	if AuraVis then
		for _,sSpell in ipairs(aSpells) do
			AuraVis.registerCustomAura(sSpell, 'AURA_' .. sSpell);
		end
		--use dragonbreath for burninghands
		-- AuraVis.registerCustomAura('burninghands', 'AURA_dragonbreath');
	end
end