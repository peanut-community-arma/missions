// ACE Advanced Ballistics
force ace_advanced_ballistics_ammoTemperatureEnabled = true;
force ace_advanced_ballistics_barrelLengthInfluenceEnabled = true;
force ace_advanced_ballistics_bulletTraceEnabled = true;
force ace_advanced_ballistics_enabled = true;
force ace_advanced_ballistics_muzzleVelocityVariationEnabled = true;
force ace_advanced_ballistics_simulationInterval = 0.05;

// ACE Advanced Fatigue
force ace_advanced_fatigue_enabled = true;
force ace_advanced_fatigue_enableStaminaBar = true;
ace_advanced_fatigue_fadeStaminaBar = true;
force ace_advanced_fatigue_loadFactor = 0.2;
force ace_advanced_fatigue_performanceFactor = 2;
force ace_advanced_fatigue_recoveryFactor = 2;
force ace_advanced_fatigue_swayFactor = 0;
force ace_advanced_fatigue_terrainGradientFactor = 0.2;

// ACE Advanced Throwing
force ace_advanced_throwing_enabled = true;
force ace_advanced_throwing_enablePickUp = true;
force ace_advanced_throwing_enablePickUpAttached = true;
ace_advanced_throwing_showMouseControls = true;
ace_advanced_throwing_showThrowArc = true;

// ACE Arsenal
force ace_arsenal_allowDefaultLoadouts = false;
force ace_arsenal_allowSharedLoadouts = true;
ace_arsenal_camInverted = false;
force ace_arsenal_enableIdentityTabs = false;
ace_arsenal_enableModIcons = true;
ace_arsenal_EnableRPTLog = false;
ace_arsenal_fontHeight = 4.5;

// ACE Artillery
force ace_artillerytables_advancedCorrections = true;
force ace_artillerytables_disableArtilleryComputer = false;
force ace_mk6mortar_airResistanceEnabled = true;
force ace_mk6mortar_allowCompass = true;
force ace_mk6mortar_allowComputerRangefinder = true;
force ace_mk6mortar_useAmmoHandling = true;

// ACE Captives
force ace_captives_allowHandcuffOwnSide = true;
force ace_captives_allowSurrender = true;
force ace_captives_requireSurrender = 1;
force ace_captives_requireSurrenderAi = false;

// ACE Common
force ace_common_allowFadeMusic = true;
force ace_common_checkPBOsAction = 0;
force ace_common_checkPBOsCheckAll = false;
force ace_common_checkPBOsWhitelist = "[]";
ace_common_displayTextColor = [0,0,0,0.1];
ace_common_displayTextFontColor = [1,1,1,1];
ace_common_settingFeedbackIcons = 1;
ace_common_settingProgressBarLocation = 0;
force ace_noradio_enabled = true;
ace_parachute_hideAltimeter = true;

// ACE Cook off
force ace_cookoff_ammoCookoffDuration = 0.5;
force ace_cookoff_enable = 0;
force ace_cookoff_enableAmmobox = true;
force ace_cookoff_enableAmmoCookoff = true;
force ace_cookoff_probabilityCoef = 0.8;

// ACE Crew Served Weapons
force ace_csw_ammoHandling = 2;
force ace_csw_defaultAssemblyMode = true;
ace_csw_dragAfterDeploy = false;
force ace_csw_handleExtraMagazines = true;
force ace_csw_progressBarTimeCoefficent = 1;

// ACE Explosives
force ace_explosives_explodeOnDefuse = true;
force ace_explosives_punishNonSpecialists = true;
force ace_explosives_requireSpecialist = false;

// ACE Fragmentation Simulation
force ace_frag_enabled = true;
force ace_frag_maxTrack = 10;
force ace_frag_maxTrackPerFrame = 10;
force ace_frag_reflectionsEnabled = true;
force ace_frag_spallEnabled = true;

// ACE Goggles
force ace_goggles_effects = 0;
ace_goggles_showClearGlasses = false;
force ace_goggles_showInThirdPerson = false;

// ACE Hearing
force ace_hearing_autoAddEarplugsToUnits = false;
force ace_hearing_disableEarRinging = true;
force ace_hearing_earplugsVolume = 0.5;
force ace_hearing_enableCombatDeafness = false;
force ace_hearing_enabledForZeusUnits = true;
force ace_hearing_unconsciousnessVolume = 0.4;

// ACE Interaction
force ace_interaction_disableNegativeRating = true;
ace_interaction_enableMagazinePassing = true;
force ace_interaction_enableTeamManagement = true;

// ACE Interaction Menu
ace_gestures_showOnInteractionMenu = 2;
ace_interact_menu_actionOnKeyRelease = true;
ace_interact_menu_addBuildingActions = false;
ace_interact_menu_alwaysUseCursorInteraction = false;
ace_interact_menu_alwaysUseCursorSelfInteraction = false;
ace_interact_menu_colorShadowMax = [0,0,0,1];
ace_interact_menu_colorShadowMin = [0,0,0,0.25];
ace_interact_menu_colorTextMax = [1,1,1,1];
ace_interact_menu_colorTextMin = [1,1,1,0.25];
ace_interact_menu_cursorKeepCentered = false;
ace_interact_menu_cursorKeepCenteredSelfInteraction = false;
ace_interact_menu_menuAnimationSpeed = 0;
ace_interact_menu_menuBackground = 0;
ace_interact_menu_menuBackgroundSelf = 0;
ace_interact_menu_selectorColor = [1,0,0];
ace_interact_menu_shadowSetting = 2;
ace_interact_menu_textSize = 2;
ace_interact_menu_useListMenu = false;
ace_interact_menu_useListMenuSelf = false;

// ACE Logistics
force ace_cargo_enable = true;
force ace_cargo_loadTimeCoefficient = 5;
force ace_cargo_paradropTimeCoefficent = 2.5;
force ace_rearm_distance = 30;
force ace_rearm_level = 0;
force ace_rearm_supply = 0;
force ace_refuel_hoseLength = 30;
force ace_refuel_rate = 1;
force ace_repair_addSpareParts = true;
force ace_repair_autoShutOffEngineWhenStartingRepair = false;
force ace_repair_consumeItem_toolKit = 0;
ace_repair_displayTextOnRepair = true;
force ace_repair_engineerSetting_fullRepair = 2;
force ace_repair_engineerSetting_repair = 1;
force ace_repair_engineerSetting_wheel = 0;
force ace_repair_fullRepairLocation = 3;
force ace_repair_fullRepairRequiredItems = ["ToolKit"];
force ace_repair_miscRepairRequiredItems = ["ToolKit"];
force ace_repair_repairDamageThreshold = 0.8;
force ace_repair_repairDamageThreshold_engineer = 0.6;
force ace_repair_wheelRepairRequiredItems = [];

// ACE Magazine Repack
force ace_magazinerepack_timePerAmmo = 1;
force ace_magazinerepack_timePerBeltLink = 8;
force ace_magazinerepack_timePerMagazine = 2;

// ACE Map
force ace_map_BFT_Enabled = false;
force ace_map_BFT_HideAiGroups = true;
force ace_map_BFT_Interval = 20;
force ace_map_BFT_ShowPlayerNames = false;
force ace_map_DefaultChannel = 1;
force ace_map_mapGlow = true;
force ace_map_mapIllumination = false;
force ace_map_mapLimitZoom = false;
force ace_map_mapShake = false;
force ace_map_mapShowCursorCoordinates = false;
force ace_markers_moveRestriction = 0;

// ACE Map Gestures
ace_map_gestures_defaultColor = [1,0.88,0,0.7];
ace_map_gestures_defaultLeadColor = [1,0.88,0,0.95];
force ace_map_gestures_enabled = true;
force ace_map_gestures_interval = 0.03;
force ace_map_gestures_maxRange = 8;
ace_map_gestures_nameTextColor = [0.2,0.2,0.2,0.3];

// ACE Map Tools
ace_maptools_drawStraightLines = true;
ace_maptools_rotateModifierKey = 1;

// ACE Medical
force ace_medical_ai_enabledFor = 0;
force ace_medical_AIDamageThreshold = 1;
force ace_medical_bleedingCoefficient = 1;
force ace_medical_blood_bloodLifetime = 600;
force ace_medical_blood_enabledFor = 1;
force ace_medical_blood_maxBloodObjects = 100;
force ace_medical_fatalDamageSource = 1;
ace_medical_feedback_bloodVolumeEffectType = 0;
ace_medical_feedback_painEffectType = 0;
force ace_medical_fractureChance = 0.25;
force ace_medical_fractures = 1;
ace_medical_gui_enableActions = 0;
ace_medical_gui_enableMedicalMenu = 1;
ace_medical_gui_enableSelfActions = true;
force ace_medical_gui_maxDistance = 4;
ace_medical_gui_openAfterTreatment = true;
force ace_medical_ivFlowRate = 3;
force ace_medical_limping = 1;
force ace_medical_painCoefficient = 0.8;
force ace_medical_playerDamageThreshold = 2;
force ace_medical_spontaneousWakeUpChance = 0.8;
force ace_medical_spontaneousWakeUpEpinephrineBoost = 2;
force ace_medical_statemachine_AIUnconsciousness = false;
force ace_medical_statemachine_cardiacArrestTime = 150;
force ace_medical_statemachine_fatalInjuriesAI = 0;
force ace_medical_statemachine_fatalInjuriesPlayer = 0;
force ace_medical_treatment_advancedBandages = 2;
force ace_medical_treatment_advancedDiagnose = true;
force ace_medical_treatment_advancedMedication = true;
force ace_medical_treatment_allowLitterCreation = true;
force ace_medical_treatment_allowSelfIV = 1;
force ace_medical_treatment_allowSelfPAK = 1;
force ace_medical_treatment_allowSelfStitch = 1;
force ace_medical_treatment_allowSharedEquipment = 1;
force ace_medical_treatment_clearTraumaAfterBandage = false;
force ace_medical_treatment_consumePAK = 1;
force ace_medical_treatment_consumeSurgicalKit = 0;
force ace_medical_treatment_convertItems = 0;
force ace_medical_treatment_cprSuccessChance = 0.8;
force ace_medical_treatment_holsterRequired = 0;
force ace_medical_treatment_litterCleanupDelay = 600;
force ace_medical_treatment_locationEpinephrine = 0;
force ace_medical_treatment_locationPAK = 0;
force ace_medical_treatment_locationsBoostTraining = true;
force ace_medical_treatment_locationSurgicalKit = 0;
force ace_medical_treatment_maxLitterObjects = 500;
force ace_medical_treatment_medicEpinephrine = 0;
force ace_medical_treatment_medicIV = 0;
force ace_medical_treatment_medicPAK = 0;
force ace_medical_treatment_medicSurgicalKit = 1;
force ace_medical_treatment_timeCoefficientPAK = 1;

// ACE Name Tags
ace_nametags_defaultNametagColor = [0.75,0.5,0.08,1];
ace_nametags_nametagColorBlue = [0.67,0.67,1,1];
ace_nametags_nametagColorGreen = [0.67,1,0.67,1];
ace_nametags_nametagColorMain = [1,1,1,1];
ace_nametags_nametagColorRed = [1,0.67,0.67,1];
ace_nametags_nametagColorYellow = [1,1,0.67,1];
force ace_nametags_playerNamesMaxAlpha = 0.75;
force ace_nametags_playerNamesViewDistance = 6;
force ace_nametags_showCursorTagForVehicles = false;
ace_nametags_showNamesForAI = false;
ace_nametags_showPlayerNames = 2;
ace_nametags_showPlayerRanks = false;
ace_nametags_showSoundWaves = 1;
ace_nametags_showVehicleCrewInfo = true;
ace_nametags_tagSize = 1;

// ACE Nightvision
force ace_nightvision_aimDownSightsBlur = 0;
force ace_nightvision_disableNVGsWithSights = false;
force ace_nightvision_effectScaling = 1;
force ace_nightvision_fogScaling = 0.5;
force ace_nightvision_noiseScaling = 0.5;
ace_nightvision_shutterEffects = true;

// ACE Overheating
force ace_overheating_displayTextOnJam = true;
force ace_overheating_enabled = false;
force ace_overheating_overheatingDispersion = false;
force ace_overheating_showParticleEffects = true;
force ace_overheating_showParticleEffectsForEveryone = false;
force ace_overheating_unJamFailChance = 0;
force ace_overheating_unJamOnreload = false;

// ACE Pointing
force ace_finger_enabled = true;
ace_finger_indicatorColor = [0.83,0.68,0.21,0.75];
ace_finger_indicatorForSelf = true;
force ace_finger_maxRange = 6;

// ACE Pylons
force ace_pylons_enabledForZeus = true;
force ace_pylons_enabledFromAmmoTrucks = true;
force ace_pylons_rearmNewPylons = true;
force ace_pylons_requireEngineer = false;
force ace_pylons_requireToolkit = true;
force ace_pylons_searchDistance = 20;
force ace_pylons_timePerPylon = 5;

// ACE Quick Mount
force ace_quickmount_distance = 4;
force ace_quickmount_enabled = true;
ace_quickmount_enableMenu = 3;
ace_quickmount_priority = 0;
force ace_quickmount_speed = 18;

// ACE Respawn
force ace_respawn_removeDeadBodiesDisconnected = true;
force ace_respawn_savePreDeathGear = false;

// ACE Scopes
force ace_scopes_correctZeroing = true;
force ace_scopes_deduceBarometricPressureFromTerrainAltitude = false;
force ace_scopes_defaultZeroRange = 300;
force ace_scopes_enabled = true;
force ace_scopes_forceUseOfAdjustmentTurrets = false;
force ace_scopes_overwriteZeroRange = false;
force ace_scopes_simplifiedZeroing = false;
force ace_scopes_useLegacyUI = false;
force ace_scopes_zeroReferenceBarometricPressure = 1013.25;
force ace_scopes_zeroReferenceHumidity = 0;
force ace_scopes_zeroReferenceTemperature = 15;

// ACE Spectator
force ace_spectator_enableAI = true;
ace_spectator_maxFollowDistance = 5;
force ace_spectator_restrictModes = 0;
force ace_spectator_restrictVisions = 0;

// ACE Switch Units
force ace_switchunits_enableSafeZone = true;
force ace_switchunits_enableSwitchUnits = false;
force ace_switchunits_safeZoneRadius = 100;
force ace_switchunits_switchToCivilian = false;
force ace_switchunits_switchToEast = false;
force ace_switchunits_switchToIndependent = false;
force ace_switchunits_switchToWest = false;

// ACE Uncategorized
force ace_fastroping_requireRopeItems = false;
force ace_gforces_enabledFor = 1;
force ace_hitreactions_minDamageToTrigger = 0.1;
ace_inventory_inventoryDisplaySize = 0;
force ace_laser_dispersionCount = 2;
force ace_microdagr_mapDataAvailable = 2;
force ace_microdagr_waypointPrecision = 3;
ace_optionsmenu_showNewsOnMainMenu = true;
force ace_overpressure_distanceCoefficient = 1;
ace_tagging_quickTag = 1;

// ACE User Interface
force ace_ui_allowSelectiveUI = true;
ace_ui_ammoCount = false;
ace_ui_ammoType = true;
ace_ui_commandMenu = true;
ace_ui_firingMode = true;
ace_ui_groupBar = false;
ace_ui_gunnerAmmoCount = true;
ace_ui_gunnerAmmoType = true;
ace_ui_gunnerFiringMode = true;
ace_ui_gunnerLaunchableCount = true;
ace_ui_gunnerLaunchableName = true;
ace_ui_gunnerMagCount = true;
ace_ui_gunnerWeaponLowerInfoBackground = true;
ace_ui_gunnerWeaponName = true;
ace_ui_gunnerWeaponNameBackground = true;
ace_ui_gunnerZeroing = true;
ace_ui_magCount = true;
ace_ui_soldierVehicleWeaponInfo = true;
ace_ui_staminaBar = true;
ace_ui_stance = true;
ace_ui_throwableCount = true;
ace_ui_throwableName = true;
ace_ui_vehicleAltitude = true;
ace_ui_vehicleCompass = true;
ace_ui_vehicleDamage = true;
ace_ui_vehicleFuelBar = true;
ace_ui_vehicleInfoBackground = true;
ace_ui_vehicleName = true;
ace_ui_vehicleNameBackground = true;
ace_ui_vehicleRadar = true;
ace_ui_vehicleSpeed = true;
ace_ui_weaponLowerInfoBackground = true;
ace_ui_weaponName = true;
ace_ui_weaponNameBackground = true;
ace_ui_zeroing = true;

// ACE Vehicle Lock
force ace_vehiclelock_defaultLockpickStrength = 10;
force ace_vehiclelock_lockVehicleInventory = true;
force ace_vehiclelock_vehicleStartingLockState = -1;

// ACE Vehicles
ace_vehicles_hideEjectAction = true;
force ace_vehicles_keepEngineRunning = false;
ace_vehicles_speedLimiterStep = 5;

// ACE View Distance Limiter
force ace_viewdistance_enabled = true;
force ace_viewdistance_limitViewDistance = 12000;
ace_viewdistance_objectViewDistanceCoeff = 5;
ace_viewdistance_viewDistanceAirVehicle = 0;
ace_viewdistance_viewDistanceLandVehicle = 0;
ace_viewdistance_viewDistanceOnFoot = 0;

// ACE Weapons
ace_common_persistentLaserEnabled = false;
force ace_laserpointer_enabled = true;
ace_reload_displayText = true;
ace_reload_showCheckAmmoSelf = false;
ace_weaponselect_displayText = true;

// ACE Weather
force ace_weather_enabled = false;
ace_weather_showCheckAirTemperature = true;
force ace_weather_updateInterval = 30;
force ace_weather_windSimulation = false;

// ACE Wind Deflection
force ace_winddeflection_enabled = false;
force ace_winddeflection_simulationInterval = 0.05;
force ace_winddeflection_vehicleEnabled = false;

// ACE Zeus
force ace_zeus_autoAddObjects = true;
force ace_zeus_canCreateZeus = 0;
force ace_zeus_radioOrdnance = false;
force ace_zeus_remoteWind = false;
force ace_zeus_revealMines = 0;
force ace_zeus_zeusAscension = false;
force ace_zeus_zeusBird = false;

// ACEX Field Rations
force acex_field_rations_affectAdvancedFatigue = true;
force acex_field_rations_enabled = false;
acex_field_rations_hudShowLevel = 0;
acex_field_rations_hudTransparency = -1;
acex_field_rations_hudType = 0;
force acex_field_rations_hungerSatiated = 1;
force acex_field_rations_terrainObjectActions = true;
force acex_field_rations_thirstQuenched = 1;
force acex_field_rations_timeWithoutFood = 2;
force acex_field_rations_timeWithoutWater = 2;
force acex_field_rations_waterSourceActions = 2;

// ACEX Fortify
acex_fortify_settingHint = 2;

// ACEX Headless
force acex_headless_delay = 15;
force acex_headless_enabled = false;
force acex_headless_endMission = 0;
force acex_headless_log = false;
force acex_headless_transferLoadout = 0;

// ACEX Sitting
force acex_sitting_enable = false;

// ACEX View Restriction
force acex_viewrestriction_mode = 0;
force acex_viewrestriction_modeSelectiveAir = 0;
force acex_viewrestriction_modeSelectiveFoot = 0;
force acex_viewrestriction_modeSelectiveLand = 0;
force acex_viewrestriction_modeSelectiveSea = 0;
acex_viewrestriction_preserveView = false;

// ACEX Volume
acex_volume_enabled = false;
acex_volume_fadeDelay = 1;
acex_volume_lowerInVehicles = false;
acex_volume_reduction = 5;
acex_volume_remindIfLowered = false;
acex_volume_showNotification = true;

// Achilles - Available Factions
Achilles_var_BLU_CTRG_F = true;
Achilles_var_BLU_F = true;
Achilles_var_BLU_G_F = true;
Achilles_var_BLU_GEN_F = true;
Achilles_var_BLU_T_F = true;
Achilles_var_BLU_W_F = true;
Achilles_var_CIV_F = true;
Achilles_var_CIV_IDAP_F = true;
Achilles_var_CUP_B_CDF = true;
Achilles_var_CUP_B_CZ = true;
Achilles_var_CUP_B_GB = true;
Achilles_var_CUP_B_GER = true;
Achilles_var_CUP_B_HIL = true;
Achilles_var_CUP_B_RNZN = true;
Achilles_var_CUP_B_US = true;
Achilles_var_CUP_B_US_Army = true;
Achilles_var_CUP_B_USMC = true;
Achilles_var_CUP_C_CHERNARUS = true;
Achilles_var_CUP_C_RU = true;
Achilles_var_CUP_C_SAHRANI = true;
Achilles_var_CUP_C_Special = true;
Achilles_var_CUP_C_TK = true;
Achilles_var_CUP_I_NAPA = true;
Achilles_var_CUP_I_PMC_ION = true;
Achilles_var_CUP_I_RACS = true;
Achilles_var_CUP_I_TK_GUE = true;
Achilles_var_CUP_I_UN = true;
Achilles_var_CUP_O_ChDKZ = true;
Achilles_var_CUP_O_RU = true;
Achilles_var_CUP_O_SLA = true;
Achilles_var_CUP_O_TK = true;
Achilles_var_CUP_O_TK_MILITIA = true;
Achilles_var_IND_C_F = true;
Achilles_var_IND_E_F = true;
Achilles_var_IND_F = true;
Achilles_var_IND_G_F = true;
Achilles_var_IND_L_F = true;
Achilles_var_Interactive_F = true;
Achilles_var_OPF_F = true;
Achilles_var_OPF_G_F = true;
Achilles_var_OPF_GEN_F = true;
Achilles_var_OPF_R_F = true;
Achilles_var_OPF_T_F = true;
Achilles_var_OPF_V_F = true;
Achilles_var_rhs_faction_insurgents = true;
Achilles_var_rhs_faction_msv = true;
Achilles_var_rhs_faction_rva = true;
Achilles_var_rhs_faction_socom = true;
Achilles_var_rhs_faction_tv = true;
Achilles_var_rhs_faction_usaf = true;
Achilles_var_rhs_faction_usarmy = true;
Achilles_var_rhs_faction_usarmy_d = true;
Achilles_var_rhs_faction_usarmy_wd = true;
Achilles_var_rhs_faction_usmc = true;
Achilles_var_rhs_faction_usmc_d = true;
Achilles_var_rhs_faction_usmc_wd = true;
Achilles_var_rhs_faction_usn = true;
Achilles_var_rhs_faction_vdv = true;
Achilles_var_rhs_faction_vdv_45 = true;
Achilles_var_rhs_faction_vmf = true;
Achilles_var_rhs_faction_vpvo = true;
Achilles_var_rhs_faction_vv = true;
Achilles_var_rhs_faction_vvs = true;
Achilles_var_rhs_faction_vvs_c = true;
Achilles_var_rhsgref_faction_cdf_air = true;
Achilles_var_rhsgref_faction_cdf_air_b = true;
Achilles_var_rhsgref_faction_cdf_ground = true;
Achilles_var_rhsgref_faction_cdf_ground_b = true;
Achilles_var_rhsgref_faction_cdf_ng = true;
Achilles_var_rhsgref_faction_cdf_ng_b = true;
Achilles_var_rhsgref_faction_chdkz = true;
Achilles_var_rhsgref_faction_chdkz_g = true;
Achilles_var_rhsgref_faction_hidf = true;
Achilles_var_rhsgref_faction_nationalist = true;
Achilles_var_rhsgref_faction_tla = true;
Achilles_var_rhsgref_faction_un = true;
Achilles_var_rhssaf_faction_airforce = true;
Achilles_var_rhssaf_faction_airforce_opfor = true;
Achilles_var_rhssaf_faction_army = true;
Achilles_var_rhssaf_faction_army_opfor = true;
Achilles_var_rhssaf_faction_un = true;
Achilles_var_Ryanzombiesfaction = true;
Achilles_var_Ryanzombiesfactionmodule = true;
Achilles_var_Ryanzombiesfactionopfor = true;
Achilles_var_Virtual_F = true;

// Achilles - Available Modules
Achilles_var_Achilles_ACE_Heal_Module = true;
Achilles_var_Achilles_ACE_ImmersiveHeal_Module = true;
Achilles_var_Achilles_ACE_Injury_Module = true;
Achilles_var_Achilles_AddECM_Module = true;
Achilles_var_Achilles_Animation_Module = true;
Achilles_var_Achilles_Attach_To_Module = true;
Achilles_var_Achilles_Bind_Variable_Module = true;
Achilles_var_Achilles_Buildings_Destroy_Module = true;
Achilles_var_Achilles_Buildings_LockDoors_Module = true;
Achilles_var_Achilles_Buildings_ToggleLight_Module = true;
Achilles_var_Achilles_CAS_Module = true;
Achilles_var_Achilles_Change_Ability_Module = true;
Achilles_var_Achilles_Change_Altitude_Module = true;
Achilles_var_Achilles_Chatter_Module = true;
Achilles_var_Achilles_Create_Universal_Target_Module = true;
Achilles_var_Achilles_DevTools_FunctionViewer = true;
Achilles_var_Achilles_DevTools_ShowInAnimViewer = true;
Achilles_var_Achilles_DevTools_ShowInConfig = true;
Achilles_var_Achilles_Earthquake_Module = true;
Achilles_var_Achilles_Hide_Objects_Module = true;
Achilles_var_Achilles_IED_Module = true;
Achilles_var_Achilles_Make_Invincible_Module = true;
Achilles_var_Achilles_Module_Arsenal_AddFull = true;
Achilles_var_Achilles_Module_Arsenal_CopyToClipboard = true;
Achilles_var_Achilles_Module_Arsenal_CreateCustom = true;
Achilles_var_Achilles_Module_Arsenal_Paste = true;
Achilles_var_Achilles_Module_Arsenal_Remove = true;
Achilles_var_Achilles_Module_Change_Side_Relations = true;
Achilles_var_Achilles_Module_Equipment_Attach_Dettach_Effect = true;
Achilles_var_Achilles_Module_FireSupport_CASBomb = true;
Achilles_var_Achilles_Module_FireSupport_CASGun = true;
Achilles_var_Achilles_Module_FireSupport_CASGunMissile = true;
Achilles_var_Achilles_Module_FireSupport_CASMissile = true;
Achilles_var_Achilles_Module_Manage_Advanced_Compositions = true;
Achilles_var_Achilles_Module_Player_Set_Frequencies = true;
Achilles_var_Achilles_Module_Rotation = true;
Achilles_var_Achilles_Module_Spawn_Advanced_Composition = true;
Achilles_var_Achilles_Module_Spawn_Carrier = true;
Achilles_var_Achilles_Module_Spawn_Destroyer = true;
Achilles_var_Achilles_Module_Spawn_Effects = true;
Achilles_var_Achilles_Module_Spawn_Explosives = true;
Achilles_var_Achilles_Module_Spawn_Intel = true;
Achilles_var_Achilles_Module_Supply_Drop = true;
Achilles_var_Achilles_Module_Zeus_AssignZeus = true;
Achilles_var_Achilles_Module_Zeus_SwitchUnit = true;
Achilles_var_Achilles_Nuke_Module = true;
Achilles_var_Achilles_Patrol_Module = true;
Achilles_var_Achilles_Set_Date_Module = true;
Achilles_var_Achilles_Set_Height_Module = true;
Achilles_var_Achilles_Set_Weather_Module = true;
Achilles_var_Achilles_Sit_On_Chair_Module = true;
Achilles_var_Achilles_SuicideBomber_Module = true;
Achilles_var_Achilles_Suppressive_Fire_Module = true;
Achilles_var_Achilles_SurrenderUnit_Module = true;
Achilles_var_Achilles_Toggle_Simulation_Module = true;
Achilles_var_Achilles_Transfer_Ownership_Module = true;
Achilles_var_Ares_Artillery_Fire_Mission_Module = true;
Achilles_var_Ares_Module_Bahaviour_Garrison_Nearest = true;
														
Achilles_var_Ares_Module_Bahaviour_UnGarrison = true;
												 
Achilles_var_Ares_Module_Behaviour_Search_Nearby_And_Garrison = true;
Achilles_var_Ares_Module_Behaviour_Search_Nearby_Building = true;
Achilles_var_Ares_Module_Dev_Tools_Create_Mission_SQF = true;
Achilles_var_Ares_Module_Dev_Tools_Execute_Code = true;
Achilles_var_Ares_Module_Equipment_Flashlight_IR_ON_OFF = true;
Achilles_var_Ares_Module_Equipment_NVD_TACLIGHT_IR = true;
Achilles_var_Ares_Module_Equipment_Turret_Optics = true;
Achilles_var_Ares_Module_Player_Change_Player_Side = true;
Achilles_var_Ares_Module_Player_Create_Teleporter = true;
Achilles_var_Ares_Module_Player_Teleport = true;
Achilles_var_Ares_Module_Reinforcements_Create_Lz = true;
Achilles_var_Ares_Module_Reinforcements_Create_Rp = true;
Achilles_var_Ares_Module_Reinforcements_Spawn_Units = true;
Achilles_var_Ares_Module_Spawn_Submarine = true;
Achilles_var_Ares_Module_Spawn_Trawler = true;
Achilles_var_Ares_Module_Zeus_Add_Remove_Editable_Objects = true;
Achilles_var_Ares_Module_Zeus_Hint = true;
Achilles_var_Ares_Module_Zeus_Switch_Side = true;
Achilles_var_Ares_Module_Zeus_Visibility = true;
Achilles_var_ModulePunishment_F = true;

// Achilles - Curator Vision Modes
achilles_curator_vision_blackhot = false;
achilles_curator_vision_blackhotgreencold = false;
achilles_curator_vision_blackhotredcold = false;
achilles_curator_vision_greenhotcold = false;
achilles_curator_vision_nvg = true;
achilles_curator_vision_redgreen = false;
achilles_curator_vision_redhot = false;
achilles_curator_vision_whitehot = true;
achilles_curator_vision_whitehotredcold = false;

// Achilles - Debug
Achilles_Debug_Output_Enabled = false;

// Achilles - Module Defaults
Achilles_var_setRadioFrequenciesLR_Default = "50";
Achilles_var_setRadioFrequenciesSR_Default = "150";

// Achilles - User Interface
Achilles_var_iconSelection = "Achilles_var_iconSelection_Ares";
Achilles_var_moduleTreeCollapse = true;
Achilles_var_moduleTreeDLC = true;
Achilles_var_moduleTreeHelmet = false;
Achilles_var_moduleTreeSearchPatch = false;

// ACRE2
force acre_sys_core_automaticAntennaDirection = true;
acre_sys_core_defaultRadioVolume = 0.8;
force acre_sys_core_fullDuplex = false;
force acre_sys_core_ignoreAntennaDirection = true;
force acre_sys_core_interference = false;
acre_sys_core_postmixGlobalVolume = 1;
acre_sys_core_premixGlobalVolume = 1;
force acre_sys_core_revealToAI = 1;
acre_sys_core_spectatorVolume = 1;
force acre_sys_core_terrainLoss = 0;
force acre_sys_core_ts3ChannelName = "";
force acre_sys_core_ts3ChannelPassword = "";
force acre_sys_core_ts3ChannelSwitch = true;
acre_sys_core_unmuteClients = true;
force acre_sys_signal_signalModel = 2;

// ACRE2 UI
acre_sys_gui_volumeColorScale = [[1,1,0,0.5],[1,0.83,0,0.5],[1,0.65,0,0.5],[1,0.44,0,0.5],[1,0,0,0.5]];
acre_sys_list_CycleRadiosColor = [0.66,0.05,1,1];
acre_sys_list_DefaultPTTColor = [1,0.8,0,1];
acre_sys_list_HintBackgroundColor = [0,0,0,0.8];
acre_sys_list_HintTextFont = "RobotoCondensed";
acre_sys_list_LanguageColor = [1,0.29,0.16,1];
acre_sys_list_PTT1Color = [1,0.8,0,1];
acre_sys_list_PTT2Color = [1,0.8,0,1];
acre_sys_list_PTT3Color = [1,0.8,0,1];
acre_sys_list_SwitchChannelColor = [0.66,0.05,1,1];
acre_sys_list_ToggleHeadsetColor = [0.66,0.05,1,1];

// ACRE2 Zeus
acre_sys_zeus_zeusCanSpectate = true;
acre_sys_zeus_zeusCommunicateViaCamera = true;
acre_sys_zeus_zeusDefaultVoiceSource = false;

// CBA UI
cba_ui_notifyLifetime = 4;
cba_ui_StorePasswords = 1;

// CBA Weapons
cba_disposable_dropUsedLauncher = 2;
force cba_disposable_replaceDisposableLauncher = true;
cba_events_repetitionMode = 1;
cba_optics_usePipOptics = true;

// CUP
force CUP_Vehicles_PreventBarrelClip = true;

// Enhanced Movement Rework
force EMR_main_allowMidairClimbing = true;
force EMR_main_blacklist = "Land_WiredFence_01_16m_F,Land_WiredFence_01_4m_F,Land_WiredFence_01_8m_F,Land_Mil_WiredFenceD_F,Land_Mil_WiredFence_F,Land_New_WiredFence_10m_Dam_F,Land_New_WiredFence_10m_F,Land_New_WiredFence_5m_F,Land_NetFence_03_m_9m_F,Land_IndFnc_9_F,Land_IndFnc_3_Hole_F,Land_NetFence_03_m_3m_hole_F,Land_NetFence_03_m_3m_d_F,Land_IndFnc_3_D_F,Land_NetFence_03_m_3m_corner_F,Land_IndFnc_Corner_F,Land_NetFence_03_m_3m_F,Land_IndFnc_3_F,Land_Razorwire_F,Fort_RazorWire,Wire,WireFence";
force EMR_main_climbingEnabled = true;
force EMR_main_climbOnDuty = 3.4;
force EMR_main_climbOverDuty = 3;
force EMR_main_dropDuty = 0.7;
force EMR_main_enableWalkableSurface = true;
force EMR_main_enableWeightCheck = true;
force EMR_main_jumpDuty = 1;
force EMR_main_jumpingEnabled = false;
force EMR_main_jumpingLoadCoefficient = 1;
force EMR_main_jumpVelocity = 3.4;
force EMR_main_maxClimbHeight = 2.6;
force EMR_main_maxDropHeight = 5;
force EMR_main_maxWeightClimb1 = 100;
force EMR_main_maxWeightClimb2 = 85;
force EMR_main_maxWeightClimb3 = 60;
force EMR_main_maxWeightJump = 100;
force EMR_main_preventHighVaulting = false;
force EMR_main_staminaCoefficient = 1;

// LAMBS Danger
force lambs_danger_combatShareRange = 400;
force lambs_danger_CQB_formations_COLUMN = false;
force lambs_danger_CQB_formations_DIAMOND = true;
force lambs_danger_CQB_formations_ECH LEFT = false;
force lambs_danger_CQB_formations_ECH RIGHT = false;
force lambs_danger_CQB_formations_FILE = true;
force lambs_danger_CQB_formations_LINE = false;
force lambs_danger_CQB_formations_STAG COLUMN = false;
force lambs_danger_CQB_formations_VEE = false;
force lambs_danger_CQB_formations_WEDGE = false;
force lambs_danger_CQB_range = 60;
force lambs_danger_debug_Drawing = false;
force lambs_danger_debug_FSM = false;
force lambs_danger_debug_FSM_civ = false;
force lambs_danger_debug_functions = false;
force lambs_danger_disableAIAutonomousManoeuvres = false;
force lambs_danger_disableAICallouts = true;
force lambs_danger_disableAIDeployStaticWeapons = true;
force lambs_danger_disableAIFindStaticWeapons = true;
force lambs_danger_disableAIFleeing = true;
force lambs_danger_disableAIGestures = true;
force lambs_danger_disableAIHideFromTanksAndAircraft = true;
force lambs_danger_disableAIImediateAction = true;
force lambs_danger_disableAIPlayerGroup = true;
force lambs_danger_disableAIPlayerGroupReaction = true;
force lambs_danger_disableAIPlayerGroupSuppression = true;
force lambs_danger_disableAutonomousFlares = true;
force lambs_danger_disableAutonomousSmokeGrenades = true;
force lambs_danger_maxRevealValue = 1;
force lambs_danger_minFriendlySuppressionDistance = 3;
force lambs_danger_minSuppression_range = 20;
force lambs_danger_panic_chance = 0;
force lambs_danger_radio_backpack = 2000;
force lambs_danger_radio_disabled = false;
force lambs_danger_radio_EAST = 500;
force lambs_danger_radio_GUER = 500;
force lambs_danger_radio_shout = 200;
force lambs_danger_radio_WEST = 500;
force lambs_danger_RenderExpectedDestination = false;

// LAMBS Danger Eventhandlers
force lambs_eventhandlers_ExplosionEventHandlerEnabled = true;
force lambs_eventhandlers_ExplosionReactionTime = 9;

// LAMBS Danger WP
force lambs_wp_autoAddArtillery = false;

// NIArms
niarms_magSwitch = true;

// STUI Settings
STGI_Settings_Enabled = true;
STGI_Settings_UnconsciousFadeEnabled = true;
STHud_Settings_ColourBlindMode = "Normal";
STHud_Settings_Font = "PuristaSemibold";
STHud_Settings_HUDMode = 3;
STHud_Settings_Occlusion = true;
STHud_Settings_RemoveDeadViaProximity = true;
STHud_Settings_SquadBar = false;
STHud_Settings_TextShadow = 1;
STHud_Settings_UnconsciousFadeEnabled = true;

// TMF
force TMF_adminMenu_endLogToRPT = false;
force TMF_adminMenu_printToChat = 1;
force TMF_chat_healUsage = 0;
force TMF_chat_loadoutUsage = 0;
force TMF_chat_radioUsage = 0;
force TMF_chat_rpUsage = 0;
force TMF_chat_specUsage = 0;
force TMF_chat_tpUsage = 0;
force TMF_chat_whisperUsage = 0;
force TMF_common_weaponSafety = true;
force TMF_orbat_markerUpdateInterval = 10;
force TMF_safestart_defaultSS = 120;
force TMF_safestart_enableDefaultSS = false;
force TMF_safestart_handleAI = true;
force TMF_safestart_soundEnabled = true;
force TMF_safestart_triggerSound = false;
force force TMF_spectator_isJIPAllowed = 1;
