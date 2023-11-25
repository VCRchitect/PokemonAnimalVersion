	object_const_def
	const GUIDEGENTSHOUSE_GRAMPS

GuideGentsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

GuideGentsHouseGuideGent:
	faceplayer
	refreshscreen
	opentext
	trainerpic OLDMAN
	randomtext OldmanTextTable
	waitbutton
	closetrainpic
	closetext
	end

GuideGentsHouseBookshelf:
	jumpstd MagazineBookshelfScript

GuideGentsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CHERRYGROVE_CITY, 4
	warp_event  3,  7, CHERRYGROVE_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, GuideGentsHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, GuideGentsHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GuideGentsHouseGuideGent, EVENT_GUIDE_GENT_VISIBLE_IN_CHERRYGROVE
