/datum/species/tajaran
	name = SPECIES_TAJ
	name_plural = "Tajara"
	icobase = 'modular_mithra/icons/mob/human_races/species/tajaran/body.dmi'
	deform = 'modular_mithra/icons/mob/human_races/species/tajaran/deformed_body.dmi'
	husk_icon = 'modular_mithra/icons/mob/human_races/species/tajaran/husk.dmi'
	preview_icon = 'modular_mithra/icons/mob/human_races/species/tajaran/preview.dmi'
	modular_tail = 'modular_mithra/icons/mob/human_races/species/tajaran/tail.dmi'
	tail = "tajtail"
	default_ears = /datum/sprite_accessory/ears/tajhc //Variable seems to not work anyway.
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE


	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp, /datum/unarmed_attack/claws)

	description = "The Tajaran are a mammalian species resembling roughly felines, hailing from Meralar in the Rarkajar system. \
	While reaching to the stars independently from outside influences, the humans engaged them in peaceful trade contact \
	and have accelerated the fledgling culture into the interstellar age. Their history is full of war and highly fractious \
	governments, something that permeates even to today's times. They prefer colder, tundra-like climates, much like their \
	home worlds and speak a variety of languages, especially Siik and Akhani."

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	sexybits_location = BP_GROIN

	cold_level_1 = 200 //Default 260
	cold_level_2 = 140 //Default 200
	cold_level_3 = 80  //Default 120

	heat_level_1 = 330 //Default 360
	heat_level_2 = 380 //Default 400
	heat_level_3 = 800 //Default 1000

	heat_discomfort_level = 292
	heat_discomfort_strings = list(
		"Your fur prickles in the heat.",
		"You feel uncomfortably warm.",
		"Your overheated skin itches."
		)
	cold_discomfort_level = 275

	available_cultural_info = list( //I can do ANYTHING! Placeholder until the loreboys come and figure out what Tajara do
		TAG_CULTURE = list(
			CULTURE_HUMAN_SPACER,
			CULTURE_HUMAN_SPAFRO,
			CULTURE_HUMAN_OTHER
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_MOGHES   //temp
		),
		TAG_FACTION = list(
			FACTION_SOL_CENTRAL,
			FACTION_NANOTRASEN
		),
		TAG_RELIGION =  list(
			RELIGION_UNATHI_LIGHTS,  //Temps
			RELIGION_OTHER
		)
	)

/datum/species/tajaran/proc/handle_coco(var/mob/living/carbon/human/M, var/datum/reagent/nutriment/coco, var/efficiency = 1)
	var/effective_dose = efficiency * M.chem_doses[coco.type]
	if(effective_dose < 5)
		return
	M.druggy = max(M.druggy, 10)
	M.add_chemical_effect(CE_PULSE, -1)
	if(effective_dose > 15 && prob(7))
		M.emote(pick("twitch", "drool"))
	if(effective_dose > 20 && prob(10))
		M.SelfMove(pick(GLOB.cardinal))