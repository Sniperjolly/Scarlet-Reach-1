/datum/status_effect/debuff
	status_type = STATUS_EFFECT_REFRESH

///////////////////////////

/datum/status_effect/debuff/hungryt1
	id = "hungryt1"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/hungryt1
	effectedstats = list("constitution" = -1)
	duration = 100

/atom/movable/screen/alert/status_effect/debuff/hungryt1
	name = "Hungry"
	desc = "Hunger weakens this living body."
	icon_state = "hunger1"

/datum/status_effect/debuff/hungryt2
	id = "hungryt2"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/hungryt2
	effectedstats = list("strength" = -2, "constitution" = -2, "endurance" = -1)
	duration = 100

/atom/movable/screen/alert/status_effect/debuff/hungryt2
	name = "Hungry"
	desc = "This living body suffers heavily from hunger."
	icon_state = "hunger2"

/datum/status_effect/debuff/hungryt3
	id = "hungryt3"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/hungryt3
	effectedstats = list("strength" = -5, "constitution" = -3, "endurance" = -2)
	duration = 100

/atom/movable/screen/alert/status_effect/debuff/hungryt3
	name = "Hungry"
	desc = "My body can barely hold it!"
	icon_state = "hunger3"

//SILVER DAGGER EFFECT

/datum/status_effect/debuff/silver_curse
	id = "silver_curse"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/silver_curse
	effectedstats = list("strength" = -2,"perception" = -2,"intelligence" = -2, "constitution" = -2, "endurance" = -2, "speed" = -2)
	duration = 45 SECONDS

/atom/movable/screen/alert/status_effect/debuff/silver_curse
	name = "Silver Curse"
	desc = "My BANE!"
	icon_state = "hunger3"

/datum/status_effect/debuff/silver_curse_weaker
	id = "silver_curse_weaker"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/silver_curse_weaker
	effectedstats = list("strength" = -1,"perception" = -1,"intelligence" = -1, "speed" = -1)
	duration = 20 SECONDS

/atom/movable/screen/alert/status_effect/debuff/silver_curse_weaker
	name = "Silver Curse, Lesser"
	desc = "My BANE!"
	icon_state = "hunger3"

////////////////////


/datum/status_effect/debuff/thirstyt1
	id = "thirsty1"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/thirstyt1
	effectedstats = list("endurance" = -1)
	duration = 100

/atom/movable/screen/alert/status_effect/debuff/thirstyt1
	name = "Thirsty"
	desc = "I need water."
	icon_state = "thirst1"

/datum/status_effect/debuff/thirstyt2
	id = "thirsty2"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/thirstyt2
	effectedstats = list("speed" = -1, "endurance" = -2)
	duration = 100

/atom/movable/screen/alert/status_effect/debuff/thirstyt2
	name = "Thirsty"
	desc = "My mouth feels much drier."
	icon_state = "thirst2"

/datum/status_effect/debuff/thirstyt3
	id = "thirsty3"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/thirstyt3
	effectedstats = list("strength" = -1, "speed" = -2, "endurance" = -3)
	duration = 100

/atom/movable/screen/alert/status_effect/debuff/thirstyt3
	name = "Thirsty"
	desc = "I urgently need water!"
	icon_state = "thirst3"

/////////

/datum/status_effect/debuff/uncookedfood
	id = "uncookedfood"
	effectedstats = null
	duration = 1

/datum/status_effect/debuff/uncookedfood/on_apply()
	if(HAS_TRAIT(owner, TRAIT_NASTY_EATER) || HAS_TRAIT(owner, TRAIT_ORGAN_EATER) || HAS_TRAIT(owner, TRAIT_WILD_EATER))
		return ..()
	if(iscarbon(owner))
		var/mob/living/carbon/C = owner
		C.add_nausea(100)
	return ..()

/datum/status_effect/debuff/badmeal
	id = "badmeal"
	effectedstats = null
	duration = 1

/datum/status_effect/debuff/badmeal/on_apply()
	owner.add_stress(/datum/stressevent/badmeal)
	return ..()

/datum/status_effect/debuff/burnedfood
	id = "burnedfood"
	effectedstats = null
	duration = 1

/datum/status_effect/debuff/burnedfood/on_apply()
	if(HAS_TRAIT(owner, TRAIT_NASTY_EATER))
		return ..()
	owner.add_stress(/datum/stressevent/burntmeal)
	if(iscarbon(owner))
		var/mob/living/carbon/C = owner
		C.add_nausea(100)
	return ..()

/datum/status_effect/debuff/rotfood
	id = "rotfood"
	effectedstats = null
	duration = 1

/datum/status_effect/debuff/rotfood/on_apply()
	if(HAS_TRAIT(owner, TRAIT_NASTY_EATER) || HAS_TRAIT(owner, TRAIT_ROT_EATER))
		return ..()
	owner.add_stress(/datum/stressevent/rotfood)
	if(iscarbon(owner))
		var/mob/living/carbon/C = owner
		C.add_nausea(200)
	return ..()

/datum/status_effect/debuff/bleeding
	id = "bleedingt1"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/bleedingt1
	effectedstats = list("speed" = -1)
	duration = -1

/atom/movable/screen/alert/status_effect/debuff/bleedingt1
	name = "Dizzy"
	desc = ""
	icon_state = "bleed1"

/datum/status_effect/debuff/bleedingworse
	id = "bleedingt2"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/bleedingt2
	effectedstats = list("strength" = -1, "speed" = -2)
	duration = -1

/atom/movable/screen/alert/status_effect/debuff/bleedingt2
	name = "Faint"
	desc = ""
	icon_state = "bleed2"

/datum/status_effect/debuff/bleedingworst
	id = "bleedingt3"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/bleedingt3
	effectedstats = list("strength" = -3, "speed" = -4)
	duration = -1

/atom/movable/screen/alert/status_effect/debuff/bleedingt3
	name = "Drained"
	desc = ""
	icon_state = "bleed3"

/datum/status_effect/debuff/sleepytime
	id = "sleepytime"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/sleepytime

/atom/movable/screen/alert/status_effect/debuff/netted
	name = "Net"
	desc = "A net was thrown on me.. how can I move?"
	icon_state = "muscles"

/datum/status_effect/debuff/netted
	id = "net"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/netted
	effectedstats = list("speed" = -5, "endurance" = -2)
	duration = 3 MINUTES

/datum/status_effect/debuff/netted/on_apply()
		. = ..()
		var/mob/living/carbon/C = owner
		C.add_movespeed_modifier(MOVESPEED_ID_NET_SLOWDOWN, multiplicative_slowdown = 3)

/datum/status_effect/debuff/netted/on_remove()
	. = ..()
	if(iscarbon(owner))
		var/mob/living/carbon/C = owner
		C.legcuffed = null
		C.update_inv_legcuffed()
		C.remove_movespeed_modifier(MOVESPEED_ID_NET_SLOWDOWN)

/atom/movable/screen/alert/status_effect/debuff/sleepytime
	name = "Tired"
	desc = "I should get some rest."
	icon_state = "sleepy"

/datum/status_effect/debuff/muscle_sore
	id = "muscle_sore"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/muscle_sore
	effectedstats = list("strength" = -1, "endurance" = -1)

/atom/movable/screen/alert/status_effect/debuff/muscle_sore
	name = "Muscle Soreness"
	desc = "My muscles need some sleep to recover."
	icon_state = "muscles"

/datum/status_effect/debuff/devitalised
	id = "devitalised"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/devitalised
	effectedstats = list("strength" = -1, "endurance" = -1, "constitution" = -1, "speed" = -1, "fortune" = -1)	//Slightly punishing.
	duration = 15 MINUTES	//Punishing, same time as revival, but mildly less punishing than revival itself.

/atom/movable/screen/alert/status_effect/debuff/devitalised
	name = "Devitalised"
	desc = "Something has been taken from me, and it will take time to recover."

/datum/status_effect/debuff/vamp_dreams
	id = "sleepytime"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/vamp_dreams

/atom/movable/screen/alert/status_effect/debuff/vamp_dreams
	name = "Insight"
	desc = "With some sleep in a coffin I feel like I could become better."
	icon_state = "sleepy"

/// SURRENDERING DEBUFFS

/datum/status_effect/debuff/breedable
	id = "breedable"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/breedable
	duration = 30 SECONDS

/datum/status_effect/debuff/breedable/on_apply()
	. = ..()
	ADD_TRAIT(owner, TRAIT_CRITICAL_RESISTANCE, id)

/datum/status_effect/debuff/breedable/on_remove()
	. = ..()
	REMOVE_TRAIT(owner, TRAIT_CRITICAL_RESISTANCE, id)

/atom/movable/screen/alert/status_effect/debuff/breedable
	name = "Obedient"
	desc = "They won't hurt me too much..."

/datum/status_effect/debuff/submissive
	id = "submissive"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/submissive
	duration = 60 SECONDS

/datum/status_effect/debuff/submissive/on_apply()
	. = ..()
	owner.add_movespeed_modifier("SUBMISSIVE", multiplicative_slowdown = 4)

/datum/status_effect/debuff/submissive/on_remove()
	. = ..()
	owner.remove_movespeed_modifier("SUBMISSIVE")

/atom/movable/screen/alert/status_effect/debuff/submissive
	name = "Conformable"
	desc = "Falling in line is my only choice."

/datum/status_effect/debuff/chilled
	id = "chilled"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/chilled
	effectedstats = list("speed" = -5, "strength" = -2, "endurance" = -2)
	duration = 15 SECONDS

/atom/movable/screen/alert/status_effect/debuff/chilled
	name = "Chilled"
	desc = "I can barely feel my limbs!"
	icon_state = "chilled"


/datum/status_effect/debuff/ritesexpended
	id = "ritesexpended"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/ritesexpended
	duration = 30 MINUTES

/atom/movable/screen/alert/status_effect/debuff/ritesexpended
	name = "Rites Complete"
	desc = "It will take time before I can next perform a rite."
	icon_state = "ritesexpended"

/datum/status_effect/debuff/call_to_arms
	id = "call_to_arms"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/call_to_arms
	effectedstats = list("endurance" = -2, "constitution" = -2)
	duration = 2.5 MINUTES

/atom/movable/screen/alert/status_effect/debuff/call_to_arms
	name = "Ravox's Call to Arms"
	desc = "His voice keeps ringing in your ears, rocking your soul.."
	icon_state = "call_to_arms"

/datum/status_effect/debuff/ravox_burden
	id = "ravox_burden"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/ravox_burden
	effectedstats = list("speed" = -2, "endurance" = -3)
	duration = 12 SECONDS
/*
/datum/status_effect/debuff/ravox_burden/on_apply()
	if(owner.mob_biotypes & MOB_UNDEAD)
		effectedstats = list("speed" -= 1,)
		effectedstats = list("endurance" -= 1)
	. = ..()
*/
/atom/movable/screen/alert/status_effect/debuff/ravox_burden
	name = "Ravox's Burden"
	desc = "My arms and legs are restrained by divine chains!\n"
	icon_state = "restrained"

/datum/status_effect/debuff/call_to_slaughter
	id = "call_to_slaughter"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/call_to_slaughter
	effectedstats = list("endurance" = -2, "constitution" = -2)
	duration = 2.5 MINUTES

/atom/movable/screen/alert/status_effect/debuff/call_to_slaughter
	name = "Call to Slaughter"
	desc = "A putrid rotting scent fills your nose as Graggar's call for slaughter rattles you to your core.."
	icon_state = "call_to_slaughter"

//For revive - your body DIDN'T rot, but it did suffer damage. Unlike being rotted, this one is only timed. Not forever.
/datum/status_effect/debuff/revived
	id = "revived"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/revived
	effectedstats = list("strength" = -1, "perception" = -1, "intelligence" = -1, "endurance" = -1, "constitution" = -1, "speed" = -1, "fortune" = -1)
	duration = 15 MINUTES		//Should be long enough to stop someone from running back into battle. Plus, this stacks with body-rot debuff. RIP.

/atom/movable/screen/alert/status_effect/debuff/revived
	name = "Revival Sickness"
	desc = "You felt lyfe itself course through you, restoring your lux and your essance. You.. live - but your body aches. It still needs time to recover.."
	icon_state = "revived"

//For de-rot - your body ROTTED. Harsher penalty for longer, can be fully off-set with a cure-rot potion.
/datum/status_effect/debuff/rotted
	id = "rotted_body"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/rotted
	effectedstats = list("strength" = -2, "perception" = -2, "intelligence" = -2, "endurance" = -2, "constitution" = -2, "speed" = -2, "fortune" = -2)
	duration = 30 MINUTES	//Back to a temporary 30 min duration. It hurts.

/atom/movable/screen/alert/status_effect/debuff/rotted
	name = "Body Rot Paralysis"
	desc = "You came back from death, but everything aches.. you can feel it in your muscles. Even in your nose, you can smell something putrid and foul. You live yet, but at what cost..?"
	icon_state = "rotted_body"

//Replaces the flat-stat change, this should ONLY apply to zombies who have been dead for some time. Makes them easier to kill.
/datum/status_effect/debuff/rotted_zombie
	id = "rotted_zombie"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/rotted_zombie
	effectedstats = list("constitution" = -8)
	//No duration = infinate in time - this is removed on de-rot miricle OR de-rot surgery. Won't be applied unless you've been a zombie for ~20 min.

/atom/movable/screen/alert/status_effect/debuff/rotted_zombie
	name = "Decomposing Corpse"
	desc = "You've been dead for some time.. your body is finally starting to give out on you."
	icon_state = "rotted_body"	//Temp holdover, no idea what I'd do for a new icon for this.

/datum/status_effect/debuff/dazed
	id = "dazed"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/dazed
	effectedstats = list("perception" = -2, "intelligence" = -2)
	duration = 15 SECONDS
	status_type = STATUS_EFFECT_REFRESH

/datum/status_effect/debuff/dazed/shield
	effectedstats = list("perception" = -3, "fortune" = -1)
	duration = 8 SECONDS

/atom/movable/screen/alert/status_effect/debuff/dazed
	name = "Dazed"
	desc = "You've been smacked on the head very hard. Which way is left, again?"
	icon_state = "dazed"

/*/atom/movable/screen/alert/status_effect/debuff/dazed/shield
	name = "Dazed by fencer's wrap"
	desc = "That stupid piece of cloth is so distracting! It pisses me off!"
	icon_state = "dazed" */

/datum/status_effect/debuff/staggered
	id = "staggered"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/staggered
	effectedstats = list("perception" = -2, "speed" = -2, "constitution" = -2)
	duration = 10 SECONDS

/atom/movable/screen/alert/status_effect/debuff/staggered
	name = "Staggered"
	desc = "You've been smacked by something big. The force of impact has left you staggered."
	icon_state = "dazed"

/datum/status_effect/debuff/staggered/on_apply()
		. = ..()
		var/mob/living/carbon/C = owner
		C.add_movespeed_modifier(MOVESPEED_ID_DAMAGE_SLOWDOWN, multiplicative_slowdown = 1.5)

/datum/status_effect/debuff/staggered/on_remove()
	. = ..()
	if(iscarbon(owner))
		var/mob/living/carbon/C = owner
		C.remove_movespeed_modifier(MOVESPEED_ID_DAMAGE_SLOWDOWN)

/atom/movable/screen/alert/status_effect/emberwine
	name = "Aphrodesiac"
	desc = "The warmth is spreading through my body..."
	icon_state = "emberwine"

/datum/status_effect/debuff/emberwine
	id = "emberwine"
	effectedstats = list("strength" = -1, "endurance" = -2, "speed" = -2, "intelligence" = -3)
	duration = 1 MINUTES
	alert_type = /atom/movable/screen/alert/status_effect/emberwine

/datum/status_effect/debuff/knockout
	id = "knockout"
	effectedstats = null
	alert_type = null
	duration = 12 SECONDS
	var/time = 0

/datum/status_effect/debuff/knockout/tick()
	time += 1
	switch(time)
		if(3)
			if(prob(50)) //You don't always know...
				var/msg = pick("I feel sleepy...", "I feel relaxed.", "My eyes feel a little heavy.")
				to_chat(owner, span_warn(msg))

		if(5)
			if(prob(50))
				owner.Slowdown(20)
			else
				owner.Slowdown(10)
		if(8)
			if(iscarbon(owner))
				var/mob/living/carbon/C = owner
				var/msg = pick("yawn", "cough", "clearthroat")
				C.emote(msg, forced = TRUE)
		if(12)
			// it's possible that stacking effects delay this.
			// If we hit 12 regardless we end
			Destroy()


/datum/status_effect/debuff/knockout/on_remove()
	if(iscarbon(owner))
		var/mob/living/carbon/C = owner
		if(C.IsSleeping()) //No need to add more it's already pretty long.
			return ..()
		C.SetSleeping(20 SECONDS)
	..()

/atom/movable/screen/alert/status_effect/debuff/knockout
	name = "Drowsy"

/datum/status_effect/debuff/excomm
	id = "Excommunicated follower of Ten!"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/excomm
	effectedstats = list("fortune" = -2, "intelligence" = -2, "speed" = -1, "endurance" = -1, "constitution" = -1)
	duration = 999 MINUTES

/atom/movable/screen/alert/status_effect/debuff/excomm
	name = "Excommunicated follower of Ten!"
	desc = "The Ten have forsaken me!"
	icon_state = "muscles"
	color ="#6d1313"

/datum/status_effect/debuff/apostasy
	id = "Apostasy!"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/apostasy
	effectedstats = list("fortune" = -5, "intelligence" = -3, "perception" = -2 , "speed" = -2, "endurance" = -2, "constitution" = -2)
	duration = 999 MINUTES

/atom/movable/screen/alert/status_effect/debuff/apostasy
	name = "Apostasy!"
	desc = "Shame upon the member of clergy!"
	icon_state = "debuff"
	color ="#7a0606"

/datum/status_effect/debuff/hereticsermon
	id = "Heretic on sermon!"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/hereticsermon
	effectedstats = list("intelligence" = -2, "speed" = -2, "fortune" = -2)
	duration = 20 MINUTES

/atom/movable/screen/alert/status_effect/debuff/hereticsermon
	name = "Heretic on sermon!"
	desc = "I was on the sermon. My patron is not proud of me."
	icon_state = "debuff"
	color ="#af9f9f"

/datum/status_effect/debuff/cold
	id = "Frostveiled"
	alert_type =  /atom/movable/screen/alert/status_effect/debuff/cold
	effectedstats = list("speed" = -2)
	duration = 12 SECONDS

/datum/status_effect/debuff/cold/on_apply()
	. = ..()
	var/mob/living/target = owner
	var/newcolor = rgb(136, 191, 255)
	target.add_atom_colour(newcolor, TEMPORARY_COLOUR_PRIORITY)
	addtimer(CALLBACK(target, TYPE_PROC_REF(/atom, remove_atom_colour), TEMPORARY_COLOUR_PRIORITY, newcolor), 12 SECONDS)

/atom/movable/screen/alert/status_effect/debuff/cold
	name = "Cold"
	desc = "Something has chilled me to the bone! It's hard to move."
	icon_state = "muscles"

///////////////////////
/// CLIMBING STUFF ///
/////////////////////

/// OPEN SPACE TURF BASED CLIMBING, MOB DRAG-DROP TILE
/datum/status_effect/debuff/climbing_lfwb
	id = "climbing_lfwb"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/climbing_lfwb
	tick_interval = 10
	var/stamcost = 30
	var/stamcost_final = 30
	var/mob/living/carbon/human/climber

/datum/status_effect/debuff/climbing_lfwb/on_creation(mob/living/new_owner, new_stamcost)
    stamcost = new_stamcost
    return ..()

/datum/status_effect/debuff/climbing_lfwb/on_apply()
	. = ..()
	climber = owner
	climber.climbing = TRUE
	climber.put_in_hands(new /obj/item/clothing/wall_grab, TRUE, FALSE, TRUE) // gotta have new before /obj/... , otherwise its gonna die

/datum/status_effect/debuff/climbing_lfwb/tick() // do we wanna do this shit every single second? I guess we do boss
	. = ..()
	climber = owner
	if((istype(climber.backr, /obj/item/clothing/climbing_gear)) || (istype(climber.backl, /obj/item/clothing/climbing_gear)))
		stamcost_final = stamcost / 2
		climber.stamina_add(stamcost_final) // every tick interval this much stamina is deducted
	else
		stamcost_final = stamcost
		climber.stamina_add(stamcost_final) // every tick interval this much stamina is deducted
//	to_chat(climber, span_warningbig("[stamcost_final] REMOVED!")) // debug msg
	var/turf/tile_under_climber = climber.loc
	var/list/random_shit_under_climber = list()
	for(var/obj/structure/flora/newbranch/branch in climber.loc)
		random_shit_under_climber += branch
	for(var/obj/machinery/light/rogue/chand/chandelier in climber.loc)
		random_shit_under_climber += chandelier
	for(var/obj/structure/kybraxor/fucking_hatch in climber.loc)
		random_shit_under_climber += fucking_hatch
	if(!istype(tile_under_climber, /turf/open/transparent/openspace))// if we aren't on open space turf, remove debuff (aka our feet are on solid shi or water)
		climber.remove_status_effect(/datum/status_effect/debuff/climbing_lfwb)
	if(random_shit_under_climber.len) // branches dont remove open space turf, so we have to check for it separately
		climber.remove_status_effect(/datum/status_effect/debuff/climbing_lfwb)
	else if(climber.stamina >= climber.max_stamina) // if we run out of green bar stamina, we fall
		to_chat(climber, span_dead("I can't hold onto the ledge for any longer!"))
		climber.remove_status_effect(/datum/status_effect/debuff/climbing_lfwb)
		tile_under_climber.zFall(climber)


/datum/status_effect/debuff/climbing_lfwb/on_remove()
	. = ..()
	climber = owner
	climber.climbing = FALSE
	climber.reset_offsets("wall_press")
	if(climber.is_holding_item_of_type(/obj/item/clothing/wall_grab)) // the slop slops itself holy shit
		for(var/obj/item/clothing/wall_grab/I in climber.held_items)
			if(istype(I, /obj/item/clothing/wall_grab))
				qdel(I)
				return

/atom/movable/screen/alert/status_effect/debuff/climbing_lfwb
	name = "Climbing..."
	desc = ""
	icon_state = "muscles"

/////////////////////////
///HARPY FLIGHT STUFF///
///////////////////////

/datum/status_effect/debuff/harpy_flight
	id = "harpy_flight"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/harpy_flight
	tick_interval = 10
	var/obj/effect/flyer_shadow/shadow
	var/mob/living/carbon/human/harpy
	var/mob/living/carbon/human/passenger
	var/stamcost = 9
	var/obj/item/organ/wings/harpy/harpy_wings

/datum/status_effect/debuff/harpy_flight/on_creation(mob/living/new_owner, new_stamcost)
	stamcost = new_stamcost
	harpy_wings = new_owner.getorganslot(ORGAN_SLOT_WINGS)
	return ..()

/datum/status_effect/debuff/harpy_flight/on_apply()
	. = ..()
	harpy = owner
	animate(harpy, pixel_y = harpy.pixel_y + 3, time = 6, loop = -1) // thank you shadowdeath6
	animate(pixel_y = harpy.pixel_y - 3, time = 6) // thank you oog
	harpy.drop_all_held_items()
	for(var/obj/item/rogueweapon/huntingknife/idagger/harpy_talons/talons in harpy_wings.nullspace_items)
		var/talons_final = talons
		harpy.put_in_hands(talons_final, TRUE, FALSE, TRUE)
		break
	harpy.movement_type |= FLYING
	harpy.dna.species.speedmod += 0.3
	harpy.add_movespeed_modifier(MOVESPEED_ID_SPECIES, TRUE, 100, override=TRUE, multiplicative_slowdown = harpy.dna.species.speedmod)
	harpy.apply_status_effect(/datum/status_effect/debuff/flight_sound_loop)
	ADD_TRAIT(harpy, TRAIT_SPELLCOCKBLOCK, ORGAN_TRAIT)
	init_signals()

/datum/status_effect/debuff/harpy_flight/tick()
	. = ..()
	harpy = owner
	var/stamcost_final = stamcost
	if(harpy.pulling)
		stamcost_final = stamcost * 2
	harpy.stamina_add(stamcost_final)
//	to_chat(harpy, span_warningbig("[stamcost_final] REMOVED!")) // debug msg
	if(harpy.pulledby)
		passenger = harpy.pulling
		if(harpy.pulledby != passenger)
			to_chat(harpy, span_bloody("I can't fly while someone's grabbing me like this, AGHH!!"))
			harpy.remove_status_effect(/datum/status_effect/debuff/harpy_flight)
	if(harpy.buckled)
		to_chat(harpy, span_bloody("Ha-ha, time to rest my wings!"))
		harpy.remove_status_effect(/datum/status_effect/debuff/harpy_flight)
	if(harpy.mind)
		harpy.mind.add_sleep_experience(/datum/skill/misc/athletics, (harpy.STAINT*0.03), FALSE)
	if(!(harpy.mobility_flags & MOBILITY_STAND))
		to_chat(harpy, span_bloody("I can't flap my wings while imbalanced like this! AGHH!!"))
		harpy.remove_status_effect(/datum/status_effect/debuff/harpy_flight)
	if(harpy.stamina >= harpy.max_stamina)
		to_chat(harpy, span_bloody("I can't flap my wings for much more! AGHH!!"))
		harpy.remove_status_effect(/datum/status_effect/debuff/harpy_flight)

/datum/status_effect/debuff/harpy_flight/on_remove()
	. = ..()
	harpy = owner
	if(harpy.pulling)
		harpy.stop_pulling()
	harpy.remove_status_effect(/datum/status_effect/debuff/flight_sound_loop)
	harpy.dna.species.speedmod -= 0.3
	harpy.remove_movespeed_modifier(MOVESPEED_ID_SPECIES, TRUE)
	var/turf/tile_under_harpy = harpy.loc
	harpy.movement_type &= ~FLYING
	tile_under_harpy.zFall(harpy)
	remove_signals()
	animate(harpy)
	REMOVE_TRAIT(harpy, TRAIT_SPELLCOCKBLOCK, ORGAN_TRAIT)
	if(harpy.is_holding_item_of_type(/obj/item/rogueweapon/huntingknife/idagger/harpy_talons))
		for(var/obj/item/rogueweapon/huntingknife/idagger/harpy_talons/talons in harpy.held_items)
			harpy.dropItemToGround(talons, TRUE)
			return

/atom/movable/screen/alert/status_effect/debuff/harpy_flight
	name = "Flying..."
	desc = "Tehee!!"
	icon_state = "muscles"

/obj/effect/flyer_shadow
	name = "humanoid shadow"
	desc = "A shadow cast from something flying above."
	icon = 'icons/effects/effects.dmi'
	icon_state = "shadow"
	anchored = TRUE
	layer = BELOW_MOB_LAYER
	alpha = 130
	pixel_y = -5
	var/datum/weakref/flying_ref

/obj/effect/flyer_shadow/Initialize(mapload, flying_mob)
	. = ..()
	if(flying_mob)
		flying_ref = WEAKREF(flying_mob)
	transform = matrix() * 0.8 // Make the shadow slightly smaller

/obj/effect/flyer_shadow/Destroy()
	flying_ref = null
	return ..()

/datum/status_effect/debuff/harpy_flight/proc/init_signals()
	RegisterSignal(owner, COMSIG_MOVABLE_MOVED, PROC_REF(check_movement))

/datum/status_effect/debuff/harpy_flight/proc/check_movement(datum/source) // rewritten by @tmyqlfpir
    SIGNAL_HANDLER

    var/turf/cur_turf = get_turf(owner)
    if(!cur_turf)
        return
    if(!shadow)
        shadow = new /obj/effect/flyer_shadow(cur_turf, owner)
    while(isopenspace(cur_turf))
        var/turf/temp_turf = GET_TURF_BELOW(cur_turf)
        if(!temp_turf || isclosedturf(temp_turf))
            break
        cur_turf = temp_turf
    shadow.forceMove(cur_turf)

/datum/status_effect/debuff/harpy_flight/proc/remove_signals()
	UnregisterSignal(owner, list(
		COMSIG_MOVABLE_MOVED,
	))
	if(shadow)
		QDEL_NULL(shadow)

/datum/status_effect/debuff/harpy_passenger
	id = "harpy_passenger"
	alert_type = /atom/movable/screen/alert/status_effect/debuff/harpy_passenger
	tick_interval = 5
	var/mob/living/carbon/human/passenger
	var/mob/living/carbon/human/harpy

/datum/status_effect/debuff/harpy_passenger/on_apply()
	. = ..()
	passenger = owner
	animate(passenger, pixel_y = passenger.pixel_y + 3, time = 6, loop = -1) // thank you shadowdeath6
	animate(pixel_y = passenger.pixel_y - 3, time = 6) // thank you oog
	passenger.movement_type |= FLYING
	passenger.drop_all_held_items() // think fast chucklenuts
	passenger.put_in_hands(new /obj/item/harpy_leg, TRUE, FALSE, TRUE) // will have to make it so ppl can't dismount themselves

/datum/status_effect/debuff/harpy_passenger/tick()
	. = ..()
	passenger = owner
	if(!passenger.pulledby)
		passenger.remove_status_effect(/datum/status_effect/debuff/harpy_passenger)

/datum/status_effect/debuff/harpy_passenger/on_remove()
	. = ..()
	passenger = owner
	animate(passenger)
	if(passenger.is_holding_item_of_type(/obj/item/harpy_leg))
		for(var/obj/item/harpy_leg/I in passenger.held_items)
			if(istype(I, /obj/item/harpy_leg))
				qdel(I)
	if(passenger.pulledby)
		harpy = passenger.pulledby
		harpy.stop_pulling()
	var/turf/tile_under_passenger = passenger.loc
	passenger.movement_type &= ~FLYING
	tile_under_passenger.zFall(passenger)

/atom/movable/screen/alert/status_effect/debuff/harpy_passenger
	name = "Being carried..."
	desc = "ARGHHHH GET ME DOWN!!"
	icon_state = "muscles"

//////////////////////////////////////
///FLIGHT SOUND LOOP STATUS EFFECT///
////////////////////////////////////

///I MEAN it's the easiest fucking way to do so in my mind LOL
/datum/status_effect/debuff/flight_sound_loop
	id = "flight_sound_loop"
	tick_interval = 16
	alert_type = null
	var/list/wing_flap_sound = list(
		'sound/foley/footsteps/flight_sounds/wingflap1.ogg',
		'sound/foley/footsteps/flight_sounds/wingflap2.ogg',
		'sound/foley/footsteps/flight_sounds/wingflap3.ogg',
		'sound/foley/footsteps/flight_sounds/wingflap4.ogg',
		'sound/foley/footsteps/flight_sounds/wingflap5.ogg',
		'sound/foley/footsteps/flight_sounds/wingflap6.ogg',
	)

/datum/status_effect/debuff/flight_sound_loop/tick()
	. = ..()
	var/mob/living/carbon/human/harpy = owner
	playsound(harpy, pick(wing_flap_sound), 100)

/////////////////////////////
///HARPY FLIGHT STUFF END///
///////////////////////////
