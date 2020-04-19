--========================================================================================================================
-- Leader Information
--========================================================================================================================
--
-- This file defines all the meta information for your custom leader, such as name and other text. It does not affect ingame play.
-- You likely won't change any text in this file. Instead, set these values in files in the 'Localization' folder. Each of the keys
-- here will have a corresponding value in the localization file.

--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('LEADER_EBW_LEADER_CUSTOM',	'KIND_LEADER');	
--------------------------------------------------------------------------------------------------------------------------
-- Leaders
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,										InheritFrom,		SceneLayers)
VALUES	('LEADER_EBW_LEADER_CUSTOM',	'LOC_LEADER_EBW_LEADER_CUSTOM_NAME',		'LEADER_DEFAULT',	4);	
--------------------------------------------------------------------------------------------------------------------------
-- LeaderQuotes
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,			Quote)
VALUES	('LEADER_EBW_LEADER_CUSTOM',	'LOC_PEDIA_LEADERS_PAGE_LEADER_EBW_LEADER_CUSTOM_QUOTE');	
--------------------------------------------------------------------------------------------------------------------------
-- HistoricalAgendas
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,					AgendaType)
VALUES	('LEADER_EBW_LEADER_CUSTOM',	'AGENDA_PEACEKEEPER');
--------------------------------------------------------------------------------------------------------------------------
-- AgendaPreferredLeaders
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO AgendaPreferredLeaders	
		(LeaderType,					AgendaType)
VALUES	('LEADER_EBW_LEADER_CUSTOM',	'AGENDA_CIVILIZED');	



--==========================================================================================================================
-- LEADERS: COLOURS
--==========================================================================================================================
-- PlayerColors
-- Use the following lines to update the colors that represent your leader's icons and mini-map display.
-- The first three lines are 'set up'. They configure the colors for the game. It is unlikely that you need to change them.
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO PlayerColors	
		(Type,							Usage,			PrimaryColor, 										SecondaryColor,											TextColor)
VALUES	('LEADER_EBW_LEADER_CUSTOM',	'Unique',		'COLOR_PLAYER_EBW_CIV_CUSTOM_LEADER_CUSTOM_PRIMARY',		'COLOR_PLAYER_EBW_CIV_CUSTOM_LEADER_CUSTOM_SECONDARY', 		'COLOR_PLAYER_WHITE_TEXT');	

--
-- To adjust the colors, change the number values under 'Red', 'Green', 'Blue' and 'Alpha'
-- If you are unfamiliar with RGBA color values, you can use extract the values from the games 'standard player colors'
-- The colors are listed in the 'Reference/colors.txt' file
-- 
INSERT INTO Colors 
		(Type, 														Red, 	Green, 	Blue, 	Alpha)
VALUES	('COLOR_PLAYER_EBW_CIV_CUSTOM_LEADER_CUSTOM_PRIMARY', 		0.25,	1.00,	0.25,	1),
		('COLOR_PLAYER_EBW_CIV_CUSTOM_LEADER_CUSTOM_SECONDARY', 	1.00,	0.00,	0.00,	1);


--==========================================================================================================================
-- LEADERS: LOADING INFO
--==========================================================================================================================
-- LoadingInfo
-- This section only defines the background image for your customer leader on the loading screen. 
-- Change the image by changing the `Texttures/LEADER_LEADER_CUSTOM_BACKGROUND` and `Textures/LEADER_LEADER_CUSTOMER_NUETRAL` file
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,						BackgroundImage, 						ForegroundImage,						PlayDawnOfManAudio)
VALUES	('LEADER_EBW_LEADER_CUSTOM',		'LEADER_LEADER_CUSTOM_BACKGROUND',		'LEADER_LEADER_CUSTOM_NEUTRAL',			0);	

