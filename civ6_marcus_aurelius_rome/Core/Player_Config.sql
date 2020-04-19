-- Player_Config
-- Author: eric
-- DateCreated: 4/18/2020 5:32:41 PM
--------------------------------------------------------------

--==========================================================================================================================
-- CONFIG DATA
-- This config file tells the game about your new civ, allowing you select it while creating a game
--==========================================================================================================================
-- Players
-------------------------------------	
INSERT INTO Players	(
		Domain
		CivilizationType,						
		Portrait,
		PortraitBackground,	
		LeaderType,
		LeaderName,
		LeaderIcon,
		LeaderAbilityName,
		LeaderAbilityDescription,
		LeaderAbilityIcon,
		CivilizationType,
		CivilizationName,
		CivilizationIcon,
		CivilizationAbilityName,
		CivilizationAbilityDescription,
		CivilizationAbilityIcon
		)
VALUES	(
			'Players:Expansion2_Players'
			'CIVILIZATION_EBW_CIV_CUSTOM',			
			'LEADER_LEADER_CUSTOM_NEUTRAL.dds',		
			'LEADER_JOHN_CURTIN_BACKGROUND',		
			'LEADER_EBW_LEADER_CUSTOM',		
			'LOC_LEADER_EBW_LEADER_CUSTOM_NAME',		
			'ICON_LEADER_EBW_LEADER_CUSTOM',		
			'LOC_TRAIT_LEADER_EBW_CUSTOM_TRAIT_ONE_NAME',	
			'LOC_TRAIT_LEADER_EBW_CUSTOM_TRAIT_ONE_DESCRIPTION',		
			'ICON_LEADER_EBW_LEADER_CUSTOM',		
			'CIVILIZATION_ROME', -- CivilizationType
			'LOC_CIVILIZATION_ROME_NAME', -- CivilizationName
			'ICON_CIVILIZATION_ROME', -- CivilizationIcon
			'LOC_TRAIT_CIVILIZATION_ROME_UA_NAME', -- CivilizationAbilityName
			'LOC_TRAIT_CIVILIZATION_ROME_DESCRIPTION', -- CivilizationAbilityDescription
			'ICON_CIVILIZATION_ROME', -- CivilizationAbilityIcon

			);


-------------------------------------
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems	(
		CivilizationType,
		LeaderType,
		Type,
		Icon,
		Name,
		Description,
		SortIndex
		)
VALUES	(
			'CIVILIZATION_ROME',		
			'LEADER_EBW_LEADER_CUSTOM',	
			'BUILDING_EBW_CUSTOM',				
			'ICON_BUILDING_EBW_CUSTOM',		
			'LOC_BUILDING_EBW_CUSTOM_NAME',			
			'LOC_BUILDING_EBW_CUSTOM_DESCRIPTION',			
			30
			);


-------------------------------------
-- MapSupportedValues
-------------------------------------	
--INSERT INTO MapSupportedValues	
--		(Value,						Domain, Map)
--SELECT	'LEADER_EBW_LEADER_CUSTOM',		Domain, Map
--FROM MapSupportedValues WHERE Value= 'LEADER_TRAJAN';
-- 