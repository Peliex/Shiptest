/datum/species/experiment
	// Fox/dog/rat creatures tthat NT considers heavily dispensable
	name = "\improper Experiment"
	id = SPECIES_EXPERIMENT
	default_color = "333333"
	species_age_max = 30
	species_traits = list(EMOTE_OVERLAY)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID
	mutant_bodyparts = list("tail_experiment", "experiment_headspikes")
	mutant_organs = list(/obj/item/organ/tail/experiment)
	default_features = list("tail_experiment" = "Default", "experiment_headspikes" = "Default")
	coldmod = 1.5
	heatmod = 0.67
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN
	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	skinned_type = /obj/item/stack/sheet/animalhide/corgi
	exotic_bloodtype = "L"
	disliked_food = GORE | CLOTH | GROSS
	liked_food = GORE | MEAT
	deathsound = 'sound/voice/lizard/deathsound.ogg'
	species_language_holder = /datum/language_holder/lizard
	mutanteyes = /obj/item/organ/eyes/experiment
	sclera_color = "#fffec4"
	blush_color = COLOR_BLUSH_PINK

	species_limbs = list(
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/experiment,
		BODY_ZONE_HEAD = /obj/item/bodypart/head/experiment,
		BODY_ZONE_L_ARM = /obj/item/bodypart/l_arm/experiment,
		BODY_ZONE_R_ARM = /obj/item/bodypart/r_arm/experiment,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/experiment/digitigrade,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/experiment/digitigrade,
	)

	species_robotic_limbs = list(
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/robot/human,
		BODY_ZONE_HEAD = /obj/item/bodypart/head/robot/human,
		BODY_ZONE_L_ARM = /obj/item/bodypart/l_arm/robot/surplus/human,
		BODY_ZONE_R_ARM = /obj/item/bodypart/r_arm/robot/surplus/human,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/robot/surplus/human,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/robot/surplus/human,
	)

	robotic_eyes = /obj/item/organ/eyes/robotic/glow

	loreblurb = "The Sarathi are a cold-blooded reptilian species originating from the planet Kalixcis, where they evolved alongside the Elzuosa. Kalixcian culture places no importance on blood-bonds, and those from it tend to consider their family anyone they are sufficiently close to, and choose their own names."

	ass_image = 'icons/ass/assmale.png'

/datum/species/experiment/random_name(gender,unique,lastname)
	if(unique)
		return random_unique_name(gender)

	var/randname = lizard_name(gender)

	if(lastname)
		randname += " [lastname]"

	return randname
