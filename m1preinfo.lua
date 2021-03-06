SelectMission("m1sd")

SetMissionResetPlayerOutCar("level1_homer_start", "level1_carstart")
SetDynaLoadData("l1z1.p3d;l1r1.p3d;l1r7.p3d;")

UsePedGroup( 0 ) 

AddStage(0)
	SetMaxTraffic(2)
	SetStageMessageIndex(217)
	AddObjective( "goto" )
		AddNPC("marge", "m1_marge_sd")
		SetDestination( "m2_simpsonhouse_sd", "carsphere")
		SetCollectibleEffect("wrench_collect")
	CloseObjective()
CloseStage()

AddStage(0)
	RESET_TO_HERE()
	SetStageMessageIndex(00)
	AddObjective("talkto","both")
		AddNPC("marge", "m1_marge_sd")
		AddObjectiveNPCWaypoint( "marge", "marge_walk_1" )
		AddObjectiveNPCWaypoint( "marge", "marge_walk_2" )
		SetTalkToTarget("marge", 0, 0.2)
	CloseObjective()
CloseStage()

AddStage(1)
	AddObjective("dialogue")
		SetPresentationBitmap( "art/frontend/dynaload/images/mis01_01.p3d" )
		AmbientAnimationRandomize( 1, 0 )
		AmbientAnimationRandomize( 0, 0 )
		SetConversationCam( 0, "npc_far" )
		SetConversationCam( 1, "pc_near" )
		SetConversationCam( 2, "npc_far" )
		SetConversationCam( 3, "pc_near" )
		AddAmbientNpcAnimation( "dialogue_open_arm_hand_gesture" )
		AddAmbientNpcAnimation( "none" )
		AddAmbientNpcAnimation( "dialogue_thinking" )
		AddAmbientPcAnimation( "none" )
		AddAmbientPcAnimation( "dialogue_yes" )
		AddAmbientPcAnimation( "none" )
		AddAmbientPcAnimation( "dialogue_hands_in_air" )
		SetConversationCamNpcName("npc_far")
		SetConversationCamPcName("pc_far")
		SetDialogueInfo("homer","marge","project",0)
		SetCamBestSide("bestside_m1")
		SetDialoguePositions("level1_homer_walkto","m1_marge_sd","level1_carstart")
	CloseObjective()
CloseStage()

CloseMission()
