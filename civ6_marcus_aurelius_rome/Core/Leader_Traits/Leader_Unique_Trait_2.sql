--==========================================================================================================================
-- LEADER TRAIT
-- This file defines a single trait for your your custom leader

-- Keys:
--- TRAIT_LEADER_EBW_CUSTOM_TRAIT_TWO						-> id for trait
--- LOC_TRAIT_LEADER_EBW_CUSTOM_TRAIT_TWO_NAME				-> id for name for localization				(Localisations/Trait_Localisation.sql)
--- LOC_TRAIT_LEADER_EBW_CUSTOM_TRAIT_TWO_DESCRIPTION		-> id for description for localization		(Localisations/Trait_Localisation.sql)
--- EBW_LEADER_CUSTOM_TRAIT_MODIFIER_ONE					-> id for trait modifier
--- EBW_LEADER_CUSTOM_TRAIT_MODIFIER_TWO					-> id for trait modifier
--- EBW_LEADER_CUSTOM_TRAIT_MODIFIER_Three					-> id for trait modifier

--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,														Kind)
VALUES	('TRAIT_LEADER_EBW_CUSTOM_TRAIT_TWO',						'KIND_TRAIT');	
--------------------------------------------------------------------------------------------------------------------------			
-- Traits			
--------------------------------------------------------------------------------------------------------------------------				
INSERT INTO Traits				
		(TraitType,													Name,															Description)
VALUES	('TRAIT_LEADER_EBW_CUSTOM_TRAIT_TWO',						'LOC_TRAIT_LEADER_EBW_LEADER_CUSTOM_TRAIT_TWO_NAME',			'LOC_TRAIT_LEADER_EBW_LEADER_CUSTOM_TRAIT_TWO_DESCRIPTION');	
--------------------------------------------------------------------------------------------------------------------------		
-- TraitModifiers		
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,													ModifierId)
VALUES	('TRAIT_LEADER_EBW_CUSTOM_TRAIT_TWO',						'EBW_LEADER_CUSTOM_TRAIT_MODIFIER_TWO');
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
-- Step TWO: update 'ModifierType' to a modifier defined by the game
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,													ModifierType,								SubjectRequirementSetId)
VALUES	('EBW_LEADER_CUSTOM_TRAIT_MODIFIER_ONE',						'MODIFIER_PLAYER_ADJUST_WAR_WEARINESS',		null),
		('EBW_LEADER_CUSTOM_TRAIT_MODIFIER_TWO',						'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		'EBW_PLOT_HAS_BONUS'),
		('EBW_LEADER_CUSTOM_TRAIT_MODIFIER_THREE',						'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',		'EBW_PLOT_HAS_BONUS');
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
-- Step two: Update the Name and Value arguments to the proper args
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value)
VALUES	('EBW_LEADER_CUSTOM_TRAIT_MODIFIER_ONE',			'Amount',		-15),
		('EBW_LEADER_CUSTOM_TRAIT_MODIFIER_TWO',			'YieldType',	'YIELD_GOLD'),
		('EBW_LEADER_CUSTOM_TRAIT_MODIFIER_TWO',			'Amount',		1),
		('EBW_LEADER_CUSTOM_TRAIT_MODIFIER_THREE',			'YieldType',	'YIELD_PRODUCTION'),
		('EBW_LEADER_CUSTOM_TRAIT_MODIFIER_THREE',			'Amount',		1);
--------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
-- this section wires up the second and third modifiers to the requirement that the plot has a bonus resource on it
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets 
(RequirementSetId, 							RequirementSetType)
VALUES		
('EBW_PLOT_HAS_BONUS',				'REQUIREMENTSET_TEST_ALL');
--------------------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements 
(RequirementSetId, 							RequirementId)
VALUES		
('EBW_PLOT_HAS_BONUS',				'REQUIRES_PLOT_HAS_BONUS');