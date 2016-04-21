SelectMission("m2")

SetMissionResetPlayerInCar("m2_homercarstart")
SetDynaLoadData("l1z1.p3dl1r1.p3dl1r7.p3d")

UsePedGroup( 0 ) 

AddStage(0)
	RESET_TO_HERE()
	AddObjective("goto")
		SetDestination("m2_homercarstart","carsphere")
	CloseObjective()
CloseStage()

AddStage(1)
	AddStageVehicle("marge_v","m2_margecarstart","target","missions\\level01\\M6dump.con", "marge")
	SetStageMessageIndex(16)
	SetVehicleAIParams( "marge_v", -10, -9 )   -- no shortcuts
	AddStageWaypoint( "" )
	AddStageWaypoint( "" )
	AddStageWaypoint( "" )
	AddStageWaypoint( "" )
	AddStageWaypoint( "" )
	AddToCountdownSequence( "3", 1000 ) -- duration time in milliseconds
	AddToCountdownSequence( "2", 1000 ) -- duration time in milliseconds
	AddToCountdownSequence( "1",  1000 ) -- duration time in milliseconds
	AddToCountdownSequence( "GO",  400 ) -- duration time in milliseconds
	SetStageTime(180)
	AddObjective("dump","neither")
	SetObjTargetVehicle("marge_v")		
		AddCollectible("bonestorm","")
		AddCollectible("bonestorm","")
		AddCollectible("bonestorm","")
		AddCollectible("bonestorm","")
		AddCollectible("bonestorm","")
		AddCollectible("bonestorm","")
	CloseObjective()
	AddCondition("timeout")
		SetHitNRun()
	CloseCondition()
	AddCondition("outofvehicle")
		SetCondTime( 10000 )
	CloseCondition()
	SetFadeOut(1.0)
	ShowStageComplete()
CloseStage()

CloseMission()
