/*
	Enemy Spawning System (ESS) - by Enigx

	ESS_Units.sqf
	
	List of units and vehicles to be used to generate the ESS zone in file ESS_Call.sqf. 
	Add in the arrays below the classnames of wanted units. Description of the arrays:
	-) _UnitListFac:	classnames of infantry units
	-) _StaticListFac: classnames of static turrets
	-) _LgtVehListFac: classnames of light vehicles
	-) _HvyVehListFac classnames of heavy vehicles

*/

private ["_UnitListFac","_StaticListFac","_LgtVehListFac","_HvyVehListFac"];
_faction = (_this select 0);

// ** CSAT Vanilla
	if (_faction==0) then {
	_UnitListFac = ["O_SoldierU_SL_F","O_soldierU_repair_F","O_soldierU_medic_F","O_sniper_F","O_Soldier_A_F","O_Soldier_AA_F","O_Soldier_AAA_F","O_Soldier_AAR_F","O_Soldier_AAT_F","O_Soldier_AR_F","O_Soldier_AT_F","O_soldier_exp_F","O_Soldier_F","O_engineer_F","O_engineer_U_F","O_medic_F","O_recon_exp_F","O_recon_F","O_recon_JTAC_F","O_recon_LAT_F","O_recon_M_F","O_recon_medic_F","O_recon_TL_F"];
	_StaticListFac = ["O_HMG_01_F","O_HMG_01_high_F","O_Mortar_01_F","O_static_AT_F","O_static_AA_F"];
	_LgtVehListFac = ["O_Truck_02_covered_F","O_Truck_02_transport_F","O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_Truck_02_medical_F"];
	_HvyVehListFac = ["O_APC_Tracked_02_AA_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_MBT_02_arty_F","O_MBT_02_cannon_F"];
}; 

// ** Islamic State Classnames Project OPFOR
	if (_faction==1) then {
	_UnitListFac = ["LOP_ISTS_OPF_Infantry_Engineer","LOP_ISTS_OPF_Infantry_Corpsman","LOP_ISTS_OPF_Infantry_TL","LOP_ISTS_OPF_Infantry_Rifleman_5","LOP_ISTS_OPF_Infantry_GL","LOP_ISTS_OPF_Infantry_Rifleman_6","LOP_ISTS_OPF_Infantry_Rifleman_4","LOP_ISTS_OPF_Infantry_Rifleman_3","LOP_ISTS_OPF_Infantry_Rifleman_7","LOP_ISTS_OPF_Infantry_AR_Asst_2","LOP_ISTS_OPF_Infantry_AR_2","LOP_ISTS_OPF_Infantry_AR_Asst","LOP_ISTS_OPF_Infantry_AR","LOP_ISTS_OPF_Infantry_Rifleman_9","LOP_ISTS_OPF_Infantry_Marksman","LOP_ISTS_OPF_Infantry_Rifleman_8","LOP_ISTS_OPF_Infantry_AT","LOP_ISTS_OPF_Infantry_SL"];  
	_StaticListFac = ["LOP_ISTS_OPF_Static_AT4","LOP_ISTS_OPF_AGS30_TriPod","LOP_ISTS_OPF_Static_DSHKM","LOP_ISTS_OPF_Kord","LOP_ISTS_OPF_Kord_High","LOP_ISTS_OPF_Static_M2","LOP_ISTS_OPF_Static_M2_MiniTripod","LOP_ISTS_OPF_Static_Mk19_TriPod","LOP_ISTS_OPF_Static_SPG9","LOP_ISTS_OPF_Static_ZU23"];
	_LgtVehListFac = ["LOP_ISTS_OPF_Landrover_M2","LOP_ISTS_OPF_M1025_W_M2","LOP_ISTS_OPF_Nissan_PKM","LOP_ISTS_OPF_Offroad_M2"];
	_HvyVehListFac = ["LOP_ISTS_OPF_T34","LOP_ISTS_OPF_T55","LOP_ISTS_OPF_T72BA","LOP_ISTS_OPF_BMP1","LOP_ISTS_OPF_BMP2","LOP_ISTS_OPF_ZSU234","LOP_ISTS_OPF_BTR60","LOP_ISTS_OPF_M113_W"];
	}; 

// ** Middle Eastern Militia Classnames Project OPFOR
	if (_faction==2) then {
	_UnitListFac = ["LOP_AM_Infantry_AR","LOP_AM_Infantry_AR_Asst","LOP_AM_Infantry_AT","LOP_AM_Infantry_AT_Asst","LOP_AM_Infantry_Corpsman","LOP_AM_Infantry_Engineer","LOP_AM_Infantry_GL","LOP_AM_Infantry_Marksman","LOP_AM_Infantry_Rifleman","LOP_AM_Infantry_Rifleman_2","LOP_AM_Infantry_Rifleman_3","LOP_AM_Infantry_Rifleman_4","LOP_AM_Infantry_Rifleman_5","LOP_AM_Infantry_Rifleman_6","LOP_AM_Infantry_SL","LOP_AM_Infantry_TL"];
	_StaticListFac = ["LOP_AM_AGS30_TriPod","LOP_AM_Igla_AA_pod","LOP_AM_Kord","LOP_AM_Kord_High","LOP_AM_NSV_TriPod","LOP_AM_Static_AT4","LOP_AM_Static_DSHKM","LOP_AM_Static_M2","LOP_AM_Static_M2_MiniTripod","LOP_AM_Static_Mk19_TriPod","LOP_AM_Static_SPG9","LOP_AM_Static_ZU23"];
	_LgtVehListFac = ["LOP_AM_BM21","LOP_AM_Landrover","LOP_AM_Landrover_M2","LOP_AM_Landrover_SPG9","LOP_AM_Nissan_PKM","LOP_AM_Offroad","LOP_AM_Offroad_M2"];
	_HvyVehListFac = ["LOP_AM_BTR60","LOP_AM_M113_W","LOP_AM_T72BA"];
	}; 

// ** Armed Forces of the Russian Federation RHS-AFR - Infantry (EMR) RUSSIA (VDV) RHS
	if (_faction==3) then {
	_UnitListFac = ["rhs_vdv_rifleman","rhs_vdv_rifleman_asval","rhs_vdv_grenadier_alt","rhs_vdv_rifleman_lite","rhs_vdv_LAT","rhs_vdv_arifleman","rhs_vdv_grenadier_rpg","rhs_vdv_medic","rhs_vdv_machine,unner","rhs_vdv_sergeant"];
	_StaticListFac = [];
	_LgtVehListFac = ["RHS_UAZ_MSV_01","rhs_tigr_sts_msv"];
	_HvyVehListFac = [];
	}; 

// ** Armed Forces of the Russian Federation CUP (Modern MSV) 
	if (_faction==4) then {
	_UnitListFac = ["CUP_O_RU_Soldier_M_EMR","CUP_O_RU_Soldier_Saiga_M_EMR","CUP_O_RU_Soldier_MG_M_EMR","CUP_O_RU_Soldier_AR_M_EMR","CUP_O_RU_Engineer_VDV_M_EMR","CUP_O_RU_Soldier_GL_M_EMR","CUP_O_RU_Medic_M_EMR","CUP_O_RU_Soldier_SL_M_EMR"];
	_StaticListFac = [];
	_LgtVehListFac = ["CUP_O_UAZ_Unarmed_RU","CUP_O_GAZ_Vodnik_PK_RU"];
	_HvyVehListFac = [];
	}; 

// ** African Militia Classnames Project OPFOR
	if (_faction==5) then {
	_UnitListFac = ["LOP_AFR_Infantry_AR","LOP_AFR_Infantry_AR_Asst","LOP_AFR_Infantry_AT","LOP_AFR_Infantry_AT_Asst","LOP_AFR_Infantry_Corpsman","LOP_AFR_Infantry_GL","LOP_AFR_Infantry_IED","LOP_AFR_Infantry_Marksman","LOP_AFR_Infantry_Rifleman","LOP_AFR_Infantry_Rifleman_2","LOP_AFR_Infantry_Rifleman_3","LOP_AFR_Infantry_Rifleman_4","LOP_AFR_Infantry_SL","LOP_AFR_Infantry_TL"];
	_StaticListFac = ["LOP_AFR_AGS30_TriPod","LOP_AFR_Igla_AA_pod","LOP_AFR_Kord","LOP_AFR_Kord_High","LOP_AFR_NSV_TriPod","LOP_AFR_Static_AT4","LOP_AFR_Static_DSHKM","LOP_AFR_Static_M2","LOP_AFR_Static_M2_MiniTripod","LOP_AFR_Static_Mk19_TriPod","LOP_AFR_Static_SPG9","LOP_AFR_Static_ZU23"];
	_LgtVehListFac = ["LOP_AFR_Landrover","LOP_AFR_Landrover_M2","LOP_AFR_Landrover_SPG9","LOP_AFR_Nissan_PKM","LOP_AFR_Offroad","LOP_AFR_Offroad_M2"];
	_HvyVehListFac = ["LOP_AFR_BTR60","LOP_AFR_M113_W","LOP_AFR_T72BA","LOP_AFR_T72BB"];
	}; 
                                         
// ** Vietcong Classnames Unsung
	if (_faction==6) then {
	_UnitListFac = ["uns_men_VC_regional_AT","uns_men_VC_regional_AT2","uns_men_VC_regional_AS1","uns_men_VC_regional_AS3","uns_men_VC_regional_AS6","uns_men_VC_regional_AS2","uns_men_VC_regional_AS5","uns_men_VC_regional_AS4","uns_men_VC_regional_LMG","uns_men_VC_regional_MGS","uns_men_VC_regional_HMG","uns_men_VC_regional_nco","uns_men_VC_regional_off","uns_men_VC_regional_RTO","uns_men_VC_regional_Ra1","uns_men_VC_regional_Ra2","uns_men_VC_regional_Rmed","uns_men_VC_regional_Rmg","uns_men_VC_regional_Roff","uns_men_VC_regional_Rmrk","uns_men_VC_regional_RF1","uns_men_VC_regional_RF7","uns_men_VC_regional_RF3","uns_men_VC_regional_RF6","uns_men_VC_regional_RF5","uns_men_VC_regional_RF2","uns_men_VC_regional_SAP","uns_men_VC_regional_SAP2","uns_men_VC_regional_MRK2","uns_men_VC_regional_MRK","uns_men_VC_regional_TRI"];
	_StaticListFac = [];
	_LgtVehListFac = ["uns_nvatruck_open","Type 55 APC"];
	_HvyVehListFac = [];
	}; 

// ** CUP Takistan Militia
	if (_faction==7) then {
	_UnitListFac =["CUP_O_TK_INS_Soldier_AA","CUP_O_TK_INS_Soldier_AR","CUP_O_TK_INS_Guerilla_Medic","CUP_O_TK_INS_Soldier_MG","CUP_O_TK_INS_Bomber","CUP_O_TK_INS_Mechanic","CUP_O_TK_INS_Soldier_GL","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_FNFAL","CUP_O_TK_INS_Soldier_Enfield","CUP_O_TK_INS_Soldier_AAT","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Sniper","CUP_O_TK_INS_Soldier_TL","CUP_O_TK_INS_Commander"];
	_StaticListFac = ["CUP_O_ZU23_TK_INS","CUP_O_D30_TK_INS","CUP_O_D30_AT_TK_INS","CUP_O_DSHKM_TK_INS","CUP_O_DSHkM_MiniTriPod_TK_INS","CUP_O_2b14_82mm_TK_INS","CUP_O_SPG9_TK_INS","CUP_O_AGS_TK_INS"];
	_LgtVehListFac = ["CUP_O_LR_MG_TKA","CUP_O_LR_SPG9_TKA","CUP_O_UAZ_MG_TKA","CUP_O_UAZ_AGS30_TKA","CUP_O_UAZ_SPG9_TKA"];
	_HvyVehListFac = ["CUP_O_T72_TKA","CUP_O_M113_TKA","CUP_O_T55_TK","CUP_O_T72_TKA","CUP_O_T55_TK","CUP_O_M113_TKA","CUP_O_ZSU23_TK"];
	}; 

// ** CUP Takistan Army
	if (_faction==8) then {
	_UnitListFac = ["CUP_O_TK_Soldier_AA","CUP_O_TK_Soldier_AAT","CUP_O_TK_Soldier_AMG","CUP_O_TK_Soldier_HAT","CUP_O_TK_Soldier_AR","CUP_O_TK_Story_Aziz","CUP_O_TK_Commander","CUP_O_TK_Engineer","CUP_O_TK_Soldier_GL","CUP_O_TK_Soldier_MG","CUP_O_TK_Medic","CUP_O_TK_Officer","CUP_O_TK_Pilot","CUP_O_TK_Soldier","CUP_O_TK_Soldier_Backpack","CUP_O_TK_Soldier_LAT","CUP_O_TK_Soldier_AT","CUP_O_TK_Sniper","CUP_O_TK_Sniper_KSVK","CUP_O_TK_Soldier_AKS_74_GOSHAWK","CUP_O_TK_Spotter","CUP_O_TK_Soldier_SL","CUP_O_TK_SpecOps_MG","CUP_O_TK_SpecOps","CUP_O_TK_SpecOps_TL"];
	_StaticListFac = ["CUP_O_ZU23_TK","O_HMG_01_high_F","CUP_O_AGS_TK","CUP_O_2b14_82mm_TK","CUP_O_D30_TK","CUP_O_D30_AT_TK","CUP_O_SPG9_TK"];
	_LgtVehListFac = ["CUP_O_BRDM2_TKA","CUP_O_LR_MG_TKA","CUP_O_LR_SPG9_TKA","CUP_O_BTR60_TK","CUP_O_UAZ_MG_TKA","CUP_O_UAZ_AGS30_TKA","CUP_O_UAZ_SPG9_TKA","CUP_O_Ural_ZU23_TKA","CUP_O_BTR40_MG_TKA"];
	_HvyVehListFac = ["CUP_O_BMP2_ZU_TKA","CUP_O_BMP_HQ_TKA","CUP_O_BMP1_TKA","CUP_O_BMP1P_TKA","CUP_O_BMP2_TKA","CUP_O_T34_TKA","CUP_O_T55_TK","CUP_O_T72_TKA","CUP_O_M113_TKA","CUP_O_ZSU23_TK"];
	}; 

// ** Boko Haram Classnames Project OPFOR
	if (_faction==9) then {
	_UnitListFac = ["LOP_BH_Infantry_Driver","LOP_BH_Infantry_Rifleman","LOP_BH_Infantry_AR_2","LOP_BH_Infantry_AR_Asst_2","LOP_BH_Infantry_IED","LOP_BH_Infantry_Corpsman","LOP_BH_Infantry_SL","LOP_BH_Infantry_AR","LOP_BH_Infantry_AR_Asst"];
	_StaticListFac = [];
	_LgtVehListFac = ["LOP_BH_Landrover","LOP_BH_Landrover_M2"];
	_HvyVehListFac = [];
	}; 

// ************* ADD IN THE FOLLOWING SECTION OTHER FACTIONS CLASSNAME TO BE USED FOR THE MISSION

// ** USER DEFINED 1
// INSERTED FACTION - NAPA independent RHS-GREF
	if (_faction==10) then {
	_UnitListFac = ["rhsgref_nat_rifleman","rhsgref_nat_machinegunner_mg42","rhsgref_nat_rifleman_mp44","rhsgref_nat_commander","rhsgref_nat_machinegunner","rhsgref_nat_rifleman_akms"];
	_StaticListFac = [];
	_LgtVehListFac = ["rhsgref_nat_uaz","rhsgref_nat_uaz_dshkm"];
	_HvyVehListFac = [];
	};

// ** USER DEFINED 2
// INSERTED FACTION - FIA independent Vanilla
	if (_faction==11) then {
	_UnitListFac = ["I_G_Soldier_F","I_G_Soldier_exp_F","I_G_Soldier_lite_F","I_G_Soldier_AR_F","I_G_engineer_F","I_G_Soldier_SL_F","I_G_medic_F","I_G_Soldier_M_F"];
	_StaticListFac = ["B_G_Mortar_01_F"];
	_LgtVehListFac = ["B_G_Offroad_01_F","B_G_Offroad_01_armed_F","B_G_Van_01_transport_F","B_G_Van_01_fuel_F"];
	_HvyVehListFac = [];
	};

// ** USER DEFINED 3
// INSERTED FACTION - Ihantala Zombie Kill Team
	if (_faction==12) then {
	_UnitListFac = ["I_Soldier_LAT_F","I_Soldier_AR_F","I_Soldier_TL_F","I_Soldier_GL_F","I_soldier_F","I_Soldier_SL_F","I_Soldier_M_F","I_medic_F"],;
	_StaticListFac = [];
	_LgtVehListFac = [];
	_HvyVehListFac = [];
	};

// ** USER DEFINED 4
// INSERTED FACTION - 
	if (_faction==13) then {
	_UnitListFac = [];
	_StaticListFac = [];
	_LgtVehListFac = [];
	_HvyVehListFac = [];
	};

// *************************************

//  ###### temporary array (DO NOT MODIFY!) #########################
_temparrayFac = [_UnitListFac,_StaticListFac,_LgtVehListFac,_HvyVehListFac];
_temparrayFac
// ###############################################################

/* LIST OF ADDITIONAL CLASSNAMES OF FACTIONS. If needed, Copy and Paste **CLASSNAMES** into "USER DEFINED" slots

// ** Insurgents Classnames OPTRE Halo
	_UnitListFac=	["OPTRE_Ins_ER_Assassin","OPTRE_Ins_ER_Farmer","OPTRE_Ins_ER_Hacker","OPTRE_Ins_ER_Insurgent_BR","OPTRE_Ins_ER_Militia_MG","OPTRE_Ins_ER_Terrorist","OPTRE_Ins_ER_Guerilla_AR"];	
	_StaticListFac = ["OPTRE_Static_M41_Ins"];
	_LgtVehListFac = ["OPTRE_M12_FAV_ins","OPTRE_M12_LRV_ins"];
	_HvyVehListFac = [];

// ** Battlejumpers Classnames OPTRE Halo
	_UnitListFac=	["OPTRE_Ins_BJ_Soldier_Automatic_Rifleman","OPTRE_Ins_BJ_Soldier_Corpsman","OPTRE_Ins_BJ_Soldier_Engineer","OPTRE_Ins_BJ_Soldier_Rifleman_BR","OPTRE_Ins_BJ_Soldier_Rifleman_AR","OPTRE,Ins_BJ_Soldier_TeamLeader","OPTRE_Ins_BJ_Soldier_Marksman"];	
	_StaticListFac = ["OPTRE_Static_M41_Ins"];
	_LgtVehListFac = ["OPTRE_M12_FAV_ins","OPTRE_M12_LRV_ins"];
	_HvyVehListFac = [];

// ** Urf Classnames OPTRE Halo
	_UnitListFac=	["OPTRE_Ins_URF_Rifleman_BR","OPTRE_Ins_URF_Rifleman_Light","OPTRE_Ins_URF_Rifleman_AR","OPTRE_Ins_URF_SquadLead","OPTRE_Ins_ER_MAdvisor","OPTRE_Ins_URF_Medic","OPTRE_Ins_URF_Marksman","OPTRE_Ins_URF_Autorifleman","OPTRE_Ins_URF_Assist_Autorifleman"];	
	_StaticListFac = ["OPTRE_Static_M41_Ins"];
	_LgtVehListFac = ["OPTRE_M12_FAV_ins","OPTRE_M12_LRV_ins"];
	_HvyVehListFac = [];
	
// ** NAPA independent RHS-GREF	
	_UnitListFac = ["rhsgref_nat_rifleman","rhsgref_nat_machinegunner_mg42","rhsgref_nat_rifleman_mp44","rhsgref_nat_commander","rhsgref_nat_machinegunner","rhsgref_nat_rifleman_akms"];
	_StaticListFac = [];
	_LgtVehListFac = ["rhsgref_nat_uaz","rhsgref_nat_uaz_dshkm"];
	_HvyVehListFac = [];

// ** NAPA independent RHS-GREF - Paramilitaries
	_UnitListFac = ["rhsgref_nat_pmil_rifleman","rhsgref_nat_pmil_rifleman_akm","rhsgref_nat_pmil_rifleman_aksu","rhsgref_nat_pmil_medic","rhsgref_nat_pmil_grenadier","rhsgref_nat_pmil_machinegunner","rhsgref_nat_pmil_saboteur","rhsgref_nat_pmil_hunter","rhsgref_nat_pmil_commander"];
	_StaticListFac = [];
	_LgtVehListFac = ["rhsgref_nat_uaz","rhsgref_nat_uaz_dshkm"];
	_HvyVehListFac = [];

// ** FIA independent Vanilla
	_UnitListFac = ["I_G_Soldier_F","I_G_Soldier_exp_F","I_G_Soldier_lite_F","I_G_Soldier_AR_F","I_G_engineer_F","I_G_Soldier_SL_F","I_G_medic_F","I_G_Soldier_M_F"];
	_StaticListFac = ["B_G_Mortar_01_F"];
	_LgtVehListFac = ["B_G_Offroad_01_F","B_G_Offroad_01_armed_F","B_G_Van_01_transport_F","B_G_Van_01_fuel_F"];
	_HvyVehListFac = [];

// ** CUP Iraq Repubblican Guard
	_UnitListFac = ["CFP_O_IQARMY_RG_Rifleman_01","CFP_O_IQARMY_RG_Explosive_Specialist_01","CFP_O_IQARMY_RG_Auto_Rifleman_01","CFP_O_IQARMY_RG_Asst_Machine_Gunner_01","CFP_O_IQARMY_RG_Rifleman_AT_01","CFP_O_IQARMY_RG_Medic_01","CFP_O_IQARMY_RG_Team_Leader_01"];
	_StaticListFac = [];
	_LgtVehListFac = ["CUP_O_LR_Transport_TKA","CUP_O_LR_MG_TKA"];
	_HvyVehListFac = [];

// ** Armed Forces of the Russian Federation CUP (MSV - TTsKO) 
	_UnitListFac = ["CUP_O_RU_Soldier","CUP_O_RU_Soldier_MG","CUP_O_RU_Soldier_SL","CUP_O_RU_Soldier_Saiga","CUP_O_RU_Medic","CUP_O_RU_Soldier_AR","CUP_O_RU_Explosive_Specialist","CUP_O_RU_Engineer"];
	_StaticListFac = [];
	_LgtVehListFac = ["CUP_O_UAZ_Unarmed_RU","CUP_O_UAZ_MG_RU"];
	_HvyVehListFac = [];

// ** Armed Forces of the Russian Federation CUP (Spetsnaz - Summer)
	_UnitListFac = ["CUP_O_RUS_SpecOps","CUP_O_RUS_SpecOps_Scout_Night","CUP_O_RUS_Soldier_TL","CUP_O_RUS_Soldier_Marksman","CUP_O_RUS_SpecOps_SD","CUP_O_RUS_SpecOps_Scout","CUP_O_RUS_Saboteur"];
	_StaticListFac = [];
	_LgtVehListFac = ["CUP_O_UAZ_Unarmed_RU","CUP_O_GAZ_Vodnik_PK_RU"];
	_HvyVehListFac = []; 

// ** Sahrani Liberation Army CUP (Urban)
	_UnitListFac = ["CUP_O_sla_Soldier_urban","CUP_O_sla_Soldier_AMG_urban","CUP_O_sla_Engineer_urban","CUP_O_sla_Soldier_MG_urban","CUP_O_sla_Medic_urban","CUP_O_sla_Soldier_AR_urban","CUP_O_SLA_Spotter_urban","CUP_O_sla_Soldier_SL_urban"];
	_StaticListFac = [];
	_LgtVehListFac = ["CUP_O_UAZ_Unarmed_SLA","CUP_O_UAZ_MG_SLA"];
	_HvyVehListFac = [];
		
// ** Sahrani Liberation Army CUP (Desert)
	_UnitListFac = ["CUP_O_sla_soldier_desert","CUP_O_sla_Soldier_AR_desert","CUP_O_sla_Engineer_desert","CUP_O_sla_Medic_desert","CUP_O_sla_Soldier_AMG_desert","CUP_O_sla_Soldier_MG_desert","CUP_O_SLA_Spotter_desert","CUP_O_sla_Soldier_SL_desert"];
	_StaticListFac = [];
	_LgtVehListFac = ["CUP_O_UAZ_Open_SLA","CUP_O_UAZ_MG_SLA"];
	_HvyVehListFac = [];

// ** Syndikat independent Classnames Syndikat - Paramilitaries
	_UnitListFac = ["I_C_Soldier_Para_1_F","I_C_Soldier_Para_2_F","I_C_Soldier_Para_3_F","I_C_Soldier_Para_4_F","I_C_Soldier_Para_6_F","I_C_Soldier_Para_7_F","I_C_Soldier_Para_8_F"];
	_StaticListFac = [];
	_LgtVehListFac = ["I_INDCF_Technical_01","I_INDCF_Technical_50_01"];
	_HvyVehListFac = [];

// ** Syndikat independent Classnames Syndikat - bandits
	_UnitListFac = ["I_C_Soldier_Bandit_1_F","I_C_Soldier_Bandit_3_F","I_C_Soldier_Bandit_4_F","I_C_Soldier_Bandit_5_F","I_C_Soldier_Bandit_7_F","I_C_Soldier_Bandit_8_F"];
	_StaticListFac = [];
	_LgtVehListFac = ["I_INDCF_Technical_01","I_INDCF_Technical_50_01"];
	_HvyVehListFac = [];

// ** Chernarussian Movement of the Red Star Classnames CUP
	_UnitListFac = ["CUP_O_INS_Soldier","CUP_O_INS_Soldier_AK74","CUP_O_INS_Medic","CUP_O_INS_Officer","CUP_O_INS_Soldier_AR","CUP_O_INS_Soldier_Exp","CUP_O_INS_Soldier_Engineer","CUP_O_INS_Soldier_MG","CUP_O_INS_Soldier_Ammo"];
	_StaticListFac = [];
	_LgtVehListFac = ["CUP_O_UAZ_Unarmed_CHDKZ","CUP_O_UAZ_MG_CHDKZ"];
	_HvyVehListFac = [];

// ** Chernarussian Movement of the Red Star Classnames CUP - armed civilians
	_UnitListFac = ["CUP_O_INS_Villager3","CUP_O_INS_Villager4","CUP_O_INS_Woodlander2","CUP_O_INS_Worker2","CUP_O_INS_Woodlander3","CUP_O_INS_Woodlander1",];
	_StaticListFac = [];
	_LgtVehListFac = ["CUP_O_Datsun_4seat","CUP_O_Datsun_PK_Random"];
	_HvyVehListFac = [];

// ** ION PMC independent Classnames CUP
	_UnitListFac = ["CUP_I_PMC_Soldier","CUP_I_PMC_Soldier_M4A3","CUP_I_PMC_Bodyguard_M4","CUP_I_PMC_Soldier_MG","CUP_I_PMC_Contractor1","CUP_I_PMC_Contractor2","CUP_I_PMC_Medic","CUP_I_PMC_Soldier_MG_PKM","CUP_I_PMC_Engineer",];
	_StaticListFac = [];
	_LgtVehListFac = ["CUP_I_MATV_ION","CUP_I_RG31_M2_ION"];
	_HvyVehListFac = [];
//CUP_I_PMC_Crew
//CUP_I_PMC_Sniper
//CUP_I_PMC_Sniper_KSVK
//CUP_I_PMC_Soldier_GL
//CUP_I_PMC_Bodyguard_AA12
//CUP_I_PMC_Soldier_AT
//CUP_I_PMC_Soldier_TL

// ** ION PMC Winter independent Classnames CUP
	_UnitListFac = ["CUP_I_PMC_Winter_Soldier","CUP_I_PMC_Winter_Soldier_M4A3","CUP_I_PMC_Winter_Engineer","CUP_I_PMC_Winter_Crew","CUP_I_PMC_Winter_Medic","CUP_I_PMC_Winter_Soldier_MG","CUP_I_PMC_Winter_Soldier_TL","CUP_I_PMC_Winter_Sniper_KSVK","CUP_I_PMC_Winter_Soldier_MG_PKM"];
	_StaticListFac = [];
	_LgtVehListFac = ["CUP_I_MATV_ION","CUP_I_RG31_M2_W_ION"];
	_HvyVehListFac = [];
//CUP_I_PMC_Winter_Sniper
//CUP_I_PMC_Winter_Soldier_GL
//CUP_I_PMC_Winter_Soldier_AT

// ** HEZBOLLAH Community Faction Project CPF
	_UnitListFac = ["CFP_O_HEZBOLLAH_Militia_Rifleman_01","CFP_O_HEZBOLLAH_Militia_Medic_01","CFP_O_HEZBOLLAH_Militia_Explosive_Specialist_01","CFP_O_HEZBOLLAH_Asst_Gunner_DShKM_01","CFP_O_HEZBOLLAH_Gunner_SPG_01","CFP_O_HEZBOLLAH_Militia_Rifleman_01","CFP_O_HEZBOLLAH_Militia_Squad_Leader_01","CFP_O_HEZBOLLAH_Asst_Gunner_Metis_01","CFP_O_HEZBOLLAH_Militia_Machine_Gunner_01"];
	_StaticListFac = [];
	_LgtVehListFac = ["cfp_o_is_LR_Unarmed","cfp_o_is_LR_M2"];
	_HvyVehListFac = [];


// ** Somali rebels Community Faction Project CPF
	_UnitListFac = ["CFP_O_SOREBEL_Asst_Gunner_DShKM_01","CFP_O_SOREBEL_Asst_Gunner_Mortar_01","CFP_O_SOREBEL_Asst_Gunner_SPG_01","CFP_O_SOREBEL_Autorifleman_01","CFP_O_SOREBEL_Bombmaker_2_01","CFP_O_SOREBEL_Bombmaker_01","CFP_O_SOREBEL_Bonesetter_01","CFP_O_SOREBEL_Gunner_DShKM_High_01","CFP_O_SOREBEL_Gunner_DShKM_Low_01","CFP_O_SOREBEL_Gunner_Mortar_01","CFP_O_SOREBEL_Gunner_SPG_01","CFP_O_SOREBEL_Autorifleman_2_01","CFP_O_SOREBEL_Marksman_01","CFP_O_SOREBEL_Rifleman_01","CFP_O_SOREBEL_Rifleman_Light_01","CFP_O_SOREBEL_Sharpshooter_01"];
	_StaticListFac = ["CFP_O_SOREBEL_DShKM_01","CFP_O_SOREBEL_DShKM_Low_01"];
	_LgtVehListFac = ["CFP_O_CFRebels_Hilux_DShKM_01","CFP_O_CFRebels_Technical_PK_01"];
	_HvyVehListFac = [];

CFP_O_SOREBEL_Grenadier_01
CFP_O_SOREBEL_Rifleman_AT_01
CFP_O_SOREBEL_Warlord_01
offroad
CFP_O_CFRebels_Hilux_01
CFP_O_CFRebels_Offroad_Repair_01


// ** Central African Rebels Community Faction Project CPF
	_UnitListFac = ["CFP_O_CFRebels_Assistant_Gunner_HMG_01","CFP_O_CFRebels_Assistant_Gunner_Mortar_01","CFP_O_CFRebels_Autorifleman_RPK_01","CFP_O_CFRebels_Ex_FACA_Autorifleman_01","CFP_O_CFRebels_Ex_FACA_Rifleman_01","CFP_O_CFRebels_Ex_FACA_Team_Leader_01","CFP_O_CFRebels_Gunner_HMG_01","CFP_O_CFRebels_Gunner_Mortar_01","CFP_O_CFRebels_Machinegunner_PKM_01","CFP_O_CFRebels_Militiaman_01","CFP_O_CFRebels_Rifleman_01","CFP_O_CFRebels_Sharpshooter_01","CFP_O_CFRebels_Squad_Leader_01","CFP_O_CFRebels_Surgeon_01","CFP_O_CFRebels_Team_Leader_01"];
	_StaticListFac = ["CFP_O_SOREBEL_DShKM_01","CFP_O_SOREBEL_DShKM_Low_01"];
	_LgtVehListFac = ["CFP_O_CFRebels_Hilux_DShKM_01","CFP_O_CFRebels_Technical_PK_01"];
	_HvyVehListFac = [];
	
CFP_O_CFRebels_Demo_Specialist_01
CFP_O_CFRebels_Grenadier_01
CFP_O_CFRebels_RPG_Gunner_01


// ** ChDKZ Faction RHS GREF
	_UnitListFac = ["rhsgref_ins_rifleman","rhsgref_ins_rifleman_akm","rhsgref_ins_rifleman_aks74","rhsgref_ins_rifleman_aksu","rhsgref_ins_rifleman_RPG26","rhsgref_ins_engineer","rhsgref_ins_medic","rhsgref_ins_militiaman_mosin","rhsgref_ins_machinegunner","rhsgref_ins_spotter","rhsgref_ins_saboteur","rhsgref_ins_squadleader"];
	_StaticListFac = ["rhsgref_ins_DSHKM","rhsgref_ins_DSHKM_Mini_TriPod","rhsgref_ins_NSV_TriPod"];
	_LgtVehListFac = ["rhsgref_ins_uaz","rhsgref_ins_uaz_dshkm"];
	_HvyVehListFac = ["rhsgref_ins_btr60","rhsgref_ins_btr70"];

"rhsgref_ins_grenadier",

// ** WAGNER Security contractor Community Faction Project CPF
	_UnitListFac = ["CFP_O_WAGNER_Bodyguard_1_WDL_01","CFP_O_WAGNER_Bodyguard_2_WDL_01","CFP_O_WAGNER_Contractor_1_WDL_01","CFP_O_WAGNER_Contractor_2_WDL_01","CFP_O_WAGNER_Field_Medic_WDL_01","CFP_O_WAGNER_Field_Specialist_RPK_WDL_01","CFP_O_WAGNER_Field_Specialist_PKM_WDL_01","CFP_O_WAGNER_Field_Specialist_RPG_18_WDL_01","CFP_O_WAGNER_Field_Technician_WDL_01","CFP_O_WAGNER_Marksman_WDL_01","CFP_O_WAGNER_Security_Contractor_AKMN_WDL_01","CFP_O_WAGNER_Security_Contractor_AK74_GL_WDL_01","CFP_O_WAGNER_Security_Contractor_SVD_WDL_01","CFP_O_WAGNER_Tactical_Driver_WDL_01","CFP_O_WAGNER_Tactical_Specialist_Igla_WDL_01","CFP_O_WAGNER_Team_Coordinator_WDL_01"];
	_StaticListFac = ["CFP_O_WAGNER_DShKM_WDL_01","CFP_O_WAGNER_DShKM_Low_WDL_01"];
	_LgtVehListFac = ["CFP_O_WAGNER_UAZ_WDL_01","CFP_O_WAGNER_UAZ_Open_WDL_01","CFP_O_WAGNER_Hilux_DShKM_WDL_01","CFP_O_WAGNER_Hilux_DShKM_WDL_01"];
	_HvyVehListFac = ["CFP_O_WAGNER_BTR_80_WDL_01"];

// ** WAGNER Security contractor WINTER Community Faction Project CPF
	_UnitListFac = ["CFP_O_WAGNER_Bodyguard_1_WIN_01","CFP_O_WAGNER_Bodyguard_2_WIN_01","CFP_O_WAGNER_Contractor_1_WIN_01","CFP_O_WAGNER_Contractor_2_WIN_01","CFP_O_WAGNER_Field_Medic_WIN_01","CFP_O_WAGNER_Field_Specialist_RPK_WIN_01","CFP_O_WAGNER_Field_Specialist_PKM_WIN_01","CFP_O_WAGNER_Field_Specialist_RPG_18_WIN_01","CFP_O_WAGNER_Field_Technician_WIN_01","CFP_O_WAGNER_Marksman_WIN_01","CFP_O_WAGNER_Security_Contractor_AKMN_WIN_01","CFP_O_WAGNER_Security_Contractor_AK74_GL_WIN_01","CFP_O_WAGNER_Security_Contractor_SVD_WIN_01","CFP_O_WAGNER_Tactical_Driver_WIN_01","CFP_O_WAGNER_Tactical_Specialist_Igla_WIN_01","CFP_O_WAGNER_Team_Coordinator_WIN_01"];
	_StaticListFac = ["CFP_O_WAGNER_DShKM_WIN_01","CFP_O_WAGNER_DShKM_Low_WIN_01"];
	_LgtVehListFac = ["CFP_O_WAGNER_Hilux_DShKM_WIN_01","CFP_O_WAGNER_Hilux_WIN_01","CFP_O_WAGNER_UAZ_WIN_01"];
	_HvyVehListFac = ["CFP_O_WAGNER_BTR_80_WIN_01"];

// ** Western Ultranationalists Community Faction Project CPF
	_UnitListFac = ["CFP_I_WestUltra_Marksman_01","CFP_I_WestUltra_Medic_01","CFP_I_WestUltra_Rifleman_01","CFP_I_WestUltra_Specialist_01","CFP_I_WestUltra_Team_Leader_01","CFP_I_WestUltra_Gunner_01"];
	_StaticListFac = [];
	_LgtVehListFac = ["CFP_I_WestUltra_4WD_01","CFP_I_WestUltra_Offroad_01"];
	_HvyVehListFac = [];















