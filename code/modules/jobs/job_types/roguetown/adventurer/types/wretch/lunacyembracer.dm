/datum/advclass/wretch/lunacyembracer
	name = "Lunacy Embracer"
	tutorial = "You have rejected and terrorized civilization in the name of nature. You run wild under the moon, a terror to the townsfolk and a champion of Dendor's wild domain."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	disallowed_races = list(
		/datum/species/harpy,
	)
	outfit = /datum/outfit/job/roguetown/wretch/lunacyembracer
	category_tags = list(CTAG_WRETCH)

	traits_applied = list(
		TRAIT_NUDIST,
		TRAIT_CRITICAL_RESISTANCE,
		TRAIT_NOPAIN,
		TRAIT_DODGEEXPERT,
		TRAIT_CIVILIZEDBARBARIAN,
		TRAIT_STRONGBITE,
		TRAIT_WOODWALKER,
		TRAIT_NASTY_EATER,
		TRAIT_CALTROPIMMUNE,
		TRAIT_LONGSTRIDER,
		TRAIT_OUTDOORSMAN,
		TRAIT_WOODSMAN

	)
	subclass_stats = list(
		STATKEY_STR = 3,
		STATKEY_CON = 2,
		STATKEY_END = 2,
		STATKEY_SPD = 2,
		STATKEY_LCK = 2,
		STATKEY_INT = -2,
		STATKEY_PER = -2
	)

	subclass_skills = list(
		/datum/skill/combat/wrestling = SKILL_LEVEL_MASTER,
		/datum/skill/combat/unarmed = SKILL_LEVEL_MASTER,
		/datum/skill/misc/athletics = SKILL_LEVEL_EXPERT,
		/datum/skill/misc/sewing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/tanning = SKILL_LEVEL_APPRENTICE,
		/datum/skill/labor/farming = SKILL_LEVEL_MASTER,
		/datum/skill/craft/carpentry = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/climbing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/misc/swimming = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/tracking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/crafting = SKILL_LEVEL_APPRENTICE,
		/datum/skill/craft/masonry = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/alchemy = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/cooking = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/labor/fishing = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/magic/holy = SKILL_LEVEL_JOURNEYMAN,
	)

/datum/outfit/job/roguetown/wretch/lunacyembracer/pre_equip(mob/living/carbon/human/H)
	var/datum/devotion/C = new /datum/devotion(H, H.patron)
	C.grant_miracles(H, cleric_tier = CLERIC_T3, passive_gain = CLERIC_REGEN_MAJOR)

	H.cmode_music = 'sound/music/combat_berserker.ogg'
	to_chat(H, span_danger("You have abandoned your humanity to run wild under the moon. The call of nature fills your soul!"))
	wretch_select_bounty(H)
		// -- Start of section for god specific bonuses --
	// if(H.patron?.type == /datum/patron/divine/astrata) I'm too lasy to ban Astratan LE but I'm certainly not dumb enough to give them +1 holy
	//	H.adjust_skillrank(/datum/skill/magic/holy, 1, TRUE)
	if(H.patron?.type == /datum/patron/divine/dendor)
	//	H.adjust_skillrank(/datum/skill/labor/farming, 1, TRUE) LE already has master farming for some reason? I'm not going to add to it.
		H.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
	if(/datum/patron/inhumen/graggar)
		H.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
		ADD_TRAIT(H, TRAIT_NOSTINK, TRAIT_GENERIC)
	if(/datum/patron/inhumen/matthios)
		H.grant_language(/datum/language/thievescant)
		H.adjust_skillrank(/datum/skill/labor/stealing, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/lockpicking, 1, TRUE)
	if(/datum/patron/inhumen/zizo)
		H.adjust_skillrank(/datum/skill/misc/alchemy, 1, TRUE)
		ADD_TRAIT(H, TRAIT_NOSTINK, TRAIT_GENERIC)
	if(/datum/patron/inhumen/baotha)
		H.adjust_skillrank(/datum/skill/misc/music, 1, TRUE)
		H.adjust_skillrank(/datum/skill/craft/alchemy, 2, TRUE)
	if(H.patron?.type == /datum/patron/divine/noc)
		H.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE) // Really good at reading... almost actually useful for LE.
		H.adjust_skillrank(/datum/skill/craft/alchemy, 1, TRUE)
		H.adjust_skillrank(/datum/skill/magic/arcane, 1, TRUE)
	if(H.patron?.type == /datum/patron/divine/abyssor)
		H.adjust_skillrank(/datum/skill/labor/fishing, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		ADD_TRAIT(H, TRAIT_WATERBREATHING, TRAIT_GENERIC)
	if(H.patron?.type == /datum/patron/divine/necra)
		ADD_TRAIT(H, TRAIT_NOSTINK, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_SOUL_EXAMINE, TRAIT_GENERIC)
	if(H.patron?.type == /datum/patron/divine/pestra)
		H.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.adjust_skillrank(/datum/skill/craft/alchemy, 1, TRUE)
		ADD_TRAIT(H, TRAIT_NOSTINK, TRAIT_GENERIC)
	if(H.patron?.type == /datum/patron/divine/eora)
		ADD_TRAIT(H, TRAIT_BEAUTIFUL, TRAIT_GENERIC)
		ADD_TRAIT(H, TRAIT_EMPATH, TRAIT_GENERIC)
	if(H.patron?.type == /datum/patron/divine/malum) // lol, lmao
		H.adjust_skillrank(/datum/skill/craft/blacksmithing, 1, TRUE)
		H.adjust_skillrank(/datum/skill/craft/armorsmithing, 1, TRUE)
		H.adjust_skillrank(/datum/skill/craft/weaponsmithing, 1, TRUE)
		H.adjust_skillrank(/datum/skill/craft/smelting, 1, TRUE)
	if(H.patron?.type == /datum/patron/divine/ravox)
		H.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
	if(H.patron?.type == /datum/patron/divine/xylix)
		H.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/lockpicking, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/music, 1, TRUE)
	// -- End of section for god specific bonuses --
