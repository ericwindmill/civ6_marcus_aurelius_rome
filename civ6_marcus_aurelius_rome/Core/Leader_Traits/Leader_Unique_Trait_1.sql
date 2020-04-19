--==========================================================================================================================
-- LEADER TRAIT
-- This file defines a single trait for your your custom leader

-- Keys:
--- TRAIT_LEADER_EBW_CUSTOM_TRAIT_ONE						-> id for trait
--- LOC_TRAIT_LEADER_EBW_CUSTOM_TRAIT_ONE_NAME				-> id for name for localization				(Localisations/Trait_Localisation.sql)
--- LOC_TRAIT_LEADER_EBW_CUSTOM_TRAIT_ONE_DESCRIPTION		-> id for description for localization		(Localisations/Trait_Localisation.sql)
--- EBW_LEADER_CUSTOM_TRAIT_MODIFIER_ONE					-> id for trait modifier

--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,														Kind)
VALUES	('TRAIT_LEADER_EBW_CUSTOM_TRAIT_ONE',						'KIND_TRAIT');	
--------------------------------------------------------------------------------------------------------------------------			
-- Traits			
--------------------------------------------------------------------------------------------------------------------------				
INSERT INTO Traits				
		(TraitType,													Name,															Description)
VALUES	('TRAIT_LEADER_EBW_CUSTOM_TRAIT_ONE',						'LOC_TRAIT_LEADER_EBW_LEADER_CUSTOM_TRAIT_ONE_NAME',			'LOC_TRAIT_LEADER_EBW_LEADER_CUSTOM_TRAIT_ONE_DESCRIPTION');	
--------------------------------------------------------------------------------------------------------------------------		
-- TraitModifiers		
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,													ModifierId)
VALUES	('TRAIT_LEADER_EBW_CUSTOM_TRAIT_ONE',						'EBW_LEADER_CUSTOM_TRAIT_MODIFIER_ONE');
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
-- Step one: update 'ModifierType' to a modifier defined by the game
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,													ModifierType)
VALUES	('EBW_LEADER_CUSTOM_TRAIT_MODIFIER_ONE',						'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY'),
VALUES	('EBW_LEADER_CUSTOM_TRAIT_MODIFIER_TWO',						'MODIFIER_PLAYER_CITIES_ADJUST_ALWAYS_LOYAL');
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
-- Step two: Update the Name and Value arguments to the proper args
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Amount)
VALUES	('EBW_LEADER_CUSTOM_TRAIT_MODIFIER_ONE',		5);



