--==========================================================================================================================
-- UNIQUE BUILDING
-- This file defines a single custom building that _replaces a district_

-- Keys:
--- BUILDING_EBW_CUSTOM_ONE							-> id for building type
--- LOC_BUILDING_EBW_CUSTOM_ONE_NAME				-> id for name for localization				(Localisations/Trait_Localisation.sql)
--- LOC_BUILDING_EBW_CUSTOM_ONE_DESCRIPTION			-> id for description for localization		(Localisations/Trait_Localisation.sql)
--- TRAIT_CIVILIZATION_BUILDING_EBW_CUSTOM			-> id used to insert building into civ traits

--==========================================================================================================================
-- Types
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
				(Type,							Kind)
VALUES			('BUILDING_EBW_CUSTOM_ONE',			'KIND_BUILDING');

--==========================================================================================================================
-- BuildingType
-- This line creates a copy of the building you'd like replace for your civ,
-- but with new details. The part that you care about is the line `FROM Buildings WHERE BuildingType = 'BUILDING_HOLY_SITE`
-- You should replace 'BUILDING_HOLY_SITE' for the district you'd like to edit for your civ
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Buildings	
				(BuildingType,					Name, 									Description,								TraitType,										PrereqTech,	PrereqCivic, PrereqDistrict, PurchaseYield, Cost,	AdvisorType, 		Housing,	Entertainment)
SELECT			'BUILDING_EBW_CUSTOM_ONE',		'LOC_BUILDING_EBW_CUSTOM_ONE_NAME',		'LOC_BUILDING_EBW_CUSTOM_ONE_DESCRIPTION',  'TRAIT_CIVILIZATION_BUILDING_EBW_CUSTOM',		PrereqTech,	PrereqCivic, PrereqDistrict, PurchaseYield, Cost,	AdvisorType, 		4,			2		
FROM Buildings WHERE BuildingType = 'BUILDING_HOLY_SITE';

--==========================================================================================================================
-- BuildingReplaces
-- This section tells the game to use your new custom building when playing as your custom civ
-- Again, replace 'BUILDING_HOLY_SITE' with the district you'd like to replace.
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO BuildingReplaces	
				(CivUniqueBuildingType,			ReplacesBuildingType)
VALUES			('BUILDING_EBW_CUSTOM_ONE',			'BUILDING_HOLY_SITE');


--==========================================================================================================================
-- Building_YieldChanges
-- This is the fun part. It's where you get to change the properties of your custom building
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Building_YieldChanges	
				(BuildingType,					YieldType,				YieldChange)
VALUES			('BUILDING_EBW_CUSTOM_ONE',			'YIELD_CULTURE',		1),
				('BUILDING_EBW_CUSTOM_ONE',			'YIELD_SCIENCE',	 	1);