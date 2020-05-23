/datum/language/tajaran
	name = LANGUAGE_SIIK_MAAS
	desc = "The traditionally employed tongue of Ahdomai, composed of expressive yowls and chirps. Native to the Tajaran."
	speech_verb = "mrowls"
	ask_verb = "mrowls"
	exclaim_verb = "yowls"
	colour = "tajaran"
	key = "j"
	flags = WHITELISTED
	syllables = list("mrr","rr","tajr","kir","raj","kii","mir","kra","ahk","nal","vah","khaz","jri","ran","darr",
	"mi","jri","dynh","manq","rhe","zar","rrhaz","kal","chur","eech","thaa","dra","jurl","mah","sanu","dra","ii'r",
	"ka","aasi","far","wa","baq","ara","qara","zir","sam","mak","hrar","nja","rir","khan","jun","dar","rik","kah",
	"hal","ket","jurl","mah","tul","cresh","azu","ragh","mro","mra","mrro","mrra")
	shorthand = "TJ"

/datum/language/tajsign
	name = LANGUAGE_SIIK_TAJR
	desc = "A type of sign language mostly based on tail movements that is used during the Tajaran rebellion."
	signlang_verb = list("uses their tail to convey", "gestures with their tail", "gestures with their tail elaborately")
	colour = "tajaran"
	key = "i"
	flags = WHITELISTED | SIGNLANG | NO_STUTTER | NONVERBAL
	shorthand = "TS"