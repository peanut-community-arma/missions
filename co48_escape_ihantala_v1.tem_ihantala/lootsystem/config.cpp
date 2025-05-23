//____________________________________________
// LSS Config.cpp
// Author: Dodzh
//____________________________________________

class CfgLootSettings
{
	spawnAtStart = 1; //if 1 will will created a task that spawn loot on an interval based on lootInterval to every player
	lootInterval = 20; //time in seconds how often loot is created, only used if spawnAtStart = 1
	spawnRange = 80; //in meters, this is only used if spawnAtStart is 1, a manual range can bet set if [<pos>,<range>] spawn LSS_fnc_spawn_loot; is used
	maxLootTime = 60*15; //time in seconds the loot will last at any given spot
	maxPleyerSpeed = 50; //only used only used if spawnAtStart is 1, determines if loot should be spawned based on the speed of player 

	cleanAtStart = 1; //starts a thread cleaning every "cleanupInterval", if 0 then manual cleanup is required [] spawn LSS_fnc_cleanup;
	cleanupInterval = 20; //time in seconds how often is check to deleted expired loot, only used if cleanAtStart = 1

	useModelPositions = 1; //if the building is not defined under CfgBuildings will try to spawn loot on predefined points on building model
	fillBackPacks = 1; //if true backpacks will be filled with items from the items[] section. values 0=false 1=true 
	
	maxLootPositions = 7; //max loot position per building
	maxLootPercentile = 0.40; //porcentage based on the maxed loot spots per building
	minLootPerSpot = 2;
    maxLootPerSpot = 8; //max items per loot position
	
	minMagazinesPerWeapon = 2;
	maxMagazinesPerWeapon = 5;
	
	debug = 0; //if 1 will create marker and helpers on the map
};

class CfgLootTables
{
    class Military
    {
        ratio[] = 
		{
			"weapons",3,
			"backpacks",1,
			"vests",1,
			"items",2,
			"mission",0.5
		};
		weapons[] = 
		{
			"CUP_sgun_CZ584",4,
			"CUP_srifle_Remington700",4,
			"rhs_weap_M590_5RD",4,
			"rhs_weap_m14",2,
			"srifle_EBR_F",1,
			"hgun_PDW2000_F",3,
			"hlc_rifle_sg5104",2,
			"CUP_sgun_AA12",1,
			"CUP_sgun_M1014",1,
			"fwa_weap_type56",2,
			"fwa_weap_aa52_nf1",0.5,
			"SMG_01_F",3,
			"CUP_arifle_CZ805_A1",1
        };
		backpacks[] = 
		{
			"B_AssaultPack_dgtl",2,
			"B_AssaultPack_ocamo",2,
			"B_AssaultPack_khk",2,
			"B_AssaultPack_mcamo",2,
			"B_AssaultPack_sgg",2,
			"B_Carryall_oli",1,
			"B_FieldPack_ocamo",3
        };        
		items[] = 
		{
			"FirstAidKit",10,
			"Medikit",1,
			"ItemGPS",0.5,
			"ACE_DAGR",1,
			"ACE_microDAGR",0.5,
			"muzzle_snds_acp",1,
			"muzzle_snds_L",1,
			"muzzle_snds_H",1,
			"muzzle_snds_B",1,
			"muzzle_snds_338_black",1,
			"acc_flashlight",5,
			"ACE_HandFlare_Green",3,
			"ACE_HandFlare_Red",3,
			"ACE_HandFlare_Yellow",3,
			"ACE_HandFlare_White",3,
			"ACE_M84",2,
			"ACRE_PRC343",1,
			"ACE_suture",4,
			
        };
		vests[] = 
		{
			"CUP_V_I_Guerilla_Jacket",1,
			"ptv_vest_m16_cbr",1,
			"aegis_smersh_grn",1,
			"V_Chestrig_blk",1,
			"aegis_modular_carrier_heavy_latpat_wdl",0.5,
			"V_PlateCarrier2_rgr",0.5
        };
		mission[] =
		{
			"Land_CanisterFuel_F",0.5
		};
    };

	class defaults //dont delete this table as any building not defined will spawn items based on this table
    {
        ratio[] = 
		{
			"weapons",2,
			"backpacks",1,
			"vests",1,
			"items",3,
			"mission",0.5
		};
		weapons[] = 
		{
			"CUP_sgun_CZ584",4,
			"CUP_srifle_Remington700",4,
			"rhs_weap_M590_5RD",4,
			"rhs_weap_m14",2,
			"srifle_EBR_F",1,
			"hgun_PDW2000_F",3,
			"hlc_rifle_sg5104",2,
			"CUP_sgun_AA12",1,
			"CUP_sgun_M1014",1,
			"fwa_weap_type56",2,
			"fwa_weap_aa52_nf1",0.5,
			"SMG_01_F",3,
			"CUP_arifle_CZ805_A1",0.5
        };
		backpacks[] = 
		{
			"B_AssaultPack_blk",2,
			"B_AssaultPack_cbr",2,
			"B_AssaultPack_rgr",2,
			"B_FieldPack_blk",3,
			"B_FieldPack_cbr",3,
			"B_Carryall_oli",0.5,
			"B_FieldPack_ocamo",1
        };        
		items[] = 
		{
			"FirstAidKit",10,
			"Medikit",1,
			"ItemGPS",5,
			"acc_flashlight",2,
			"acc_pointer_IR",2,
			"muzzle_snds_acp",1,
			"muzzle_snds_L",1,
			"muzzle_snds_H",1,
			"muzzle_snds_B",1,
			"muzzle_snds_338_black",1,
			"muzzle_snds_H_khk_F",1,
			"bipod_01_F_khk",2,
			"NVGoggles",2,
			"ACE_HandFlare_Green",3,
			"ACE_HandFlare_Red",3,
			"ACE_HandFlare_Yellow",3,
			"ACE_HandFlare_White",3,
			"ACE_M84",2,
			"ACRE_PRC343",1,
			"ACE_suture",4,
        };
		vests[] = 
		{
			"CUP_V_I_Guerilla_Jacket",1,
			"ptv_vest_m16_cbr",1,
			"aegis_smersh_grn",1,
			"V_Chestrig_blk",1,
			"aegis_modular_carrier_heavy_latpat_wdl",0.5
        };
		mission[] =
		{
			"Land_CanisterFuel_F",0.5
		};
    };
};

class CfgBuildings //custom position relative the the model, some buildings dont have positions defined on the model or simply you want your own spots
{
	class Land_ReservoirTank_01_military_F
	{
		table = "Military";
		positions[] = {{2.7417,-0.0241699,-12.8064}};
	};
	class Land_Cargo_HQ_V2_F
	{
		table = "Military";
		positions[] = {{5.74951,3.25366,-0.748884},{-2.55518,3.20703,-0.748884},{0.236328,-4.02856,-0.748882},{-2.67139,-4.0647,-0.748882},{5.98291,-1.45459,-0.748886},{3.06836,5.26074,-3.15331},{6.16895,5.42603,-3.15331},{6.39893,0.840576,-3.27373},{3.59473,-4.11914,-3.27373},{-3.3252,-4.12549,-3.27373},{0.660156,3.3689,-3.27373},{0.754883,-0.134521,-3.27373},{-3.31006,3.11841,-3.27373},{2.61328,0.24707,-3.27373},{-3.30176,-1.0144,-3.27373}};
	};
	class Land_Cargo_Tower_V2_F
	{
		table = "Military";
		positions[] = {{1.80029,3.31763,-8.24477},{3.45508,1.31689,-8.24477},{-3.44092,3.32056,-4.29724},{-3.6748,1.3252,-4.29724},{4.90479,4.46387,-0.121563},{5.07764,1.10986,-0.121563},{1.86133,4.47314,-0.121563},{3.08154,-3.55664,-0.121563},{0.62207,-3.60669,-0.121563},{-1.76855,-3.65308,-0.121563},{-4.23535,-3.73315,-0.121563},{-5.12598,-0.748291,-0.121563},{-4.79785,3.15039,-0.121563},{-0.812012,1.66113,-0.121563},{1.24902,-0.407227,-0.121563},{4.62695,-0.599854,2.47844},{4.61133,1.95337,2.47844},{4.13574,4.18506,2.47844},{1.48486,4.20142,2.47844},{-1.29346,4.26929,2.47844},{-4.69092,4.44653,2.47844},{-4.59912,-0.644043,2.47844},{-4.69727,-3.38037,2.47844},{-1.32324,-3.16797,2.47844},{-1.24121,-0.493896,2.47844},{1.09619,-0.510742,2.47844},{0.783691,-0.350586,5.07844},{0.694336,1.99951,5.07844},{3.30713,-2.54272,5.00328},{3.34619,1.42407,5.00327},{-3.23096,4.14575,5.00327},{-3.91797,-1.04956,5.00328},{-2.64355,-3.75854,5.00327}};
	};
	class Land_Cargo_Patrol_V2_F
	{
		table = "Military";
		positions[] = {{1.80908,0.709717,-2.9121},{-0.723633,-0.871826,-0.560959},{1.37061,-0.908936,-0.560959}};
	};
	class Land_Cargo_House_V2_F
	{
		table = "Military";
		positions[] = {{-1.83496,0.863281,-0.0971875},{-1.68408,3.19653,0.0388474},{1.54785,3.15283,0.0388479},{1.69727,0.873535,-0.0971875}};
		};
	class Land_Bunker_01_small_F 
	{
		table = "Military";
		positions[] = {{-1.60449,-1.27905,0.207207},{-1.36182,0.58374,0.206603},{2.1123,-1.18457,0.206436},{0.729004,0.86499,0.206631},{0.189453,-1.22314,0.206728}};
	};
	class Land_Bunker_01_tall_F
	{
		table = "Military";
		positions[] = {{0.728516,1.24634,-3.436},{-2.11279,-0.811523,-3.436},{-0.32959,-1.80518,-2.35649},{1.43896,-2.16724,-2.35649},{1.57861,1.78467,-0.741341},{-2.57471,1.83643,1.45843},{-2.35889,-0.065918,1.45788},{-0.337402,0.0864258,1.45731},{1.55518,0.210205,1.45731},{1.55713,-1.98022,1.45731},{-0.635254,-1.8999,1.4622}};
	};
	class Land_Bunker_01_big_F
	{
		table = "Military";
		positions[] = {{-1.92822,1.40356,0.0184798},{-1.78662,-2.46851,0.0184798},{-3.85986,-0.902344,0.0184798},{-4.0752,-4.59375,0.0184798},{-1.38965,-5.22314,0.0184798},{-0.00830078,-6.50781,0.0184798},{1.5874,-5.44604,0.0184803},{3.82861,-6.47192,0.0184798},{3.87012,-4.08276,0.0184798},{1.32178,-2.97485,0.0184798},{4.20313,-1.66821,0.0184803},{1.26318,-0.998779,0.0184798},{1.28174,1.06885,0.0184798}};
	};
	class Land_Bunker_01_HQ_F
	{
		table = "Military";
		positions[] = {{4.32227,3.8999,-0.981861},{-4.2373,-1.78516,-0.981861},{-4.19482,2.62354,-0.981861},{-1.88867,2.02515,-0.981861},{-0.66748,-0.768066,-0.981861},{0.747559,-0.144287,-0.981861},{4.7417,-0.727783,-0.981861},{3.8208,-1.77661,-0.981861},{2.54541,-3.79883,-0.981861},{0.975586,-4.30322,-0.981861},{-1.20898,-3.58276,-0.981861},{-4.72314,0.76123,-0.981861}};
	};
};

