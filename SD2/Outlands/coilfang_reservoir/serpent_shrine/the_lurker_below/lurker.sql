 -- delete pre spawned lurker
DELETE from `creature` where `id`='21217';

 -- modify lurker template
UPDATE `creature_template` SET `InhabitType` = '7' WHERE `creature_template`.`entry` =21217;
UPDATE `creature_model_info` SET  `bounding_radius` =  '15.5', `combat_reach` =  '15.5' WHERE  `creature_model_info`.`modelid` =20216;
UPDATE `creature_template` SET  `minhealth` =  ' 5311600',`maxhealth` =  ' 5311600' WHERE  `creature_template`.`entry` =21217;
UPDATE `creature_template` SET  `mechanic_immune_mask` =  '921386847' WHERE  `creature_template`.`entry` =21217;

 -- add scripts
UPDATE `gameobject_template` SET  `ScriptName` =  'go_strange_pool' WHERE  `gameobject_template`.`entry` =184956;
UPDATE `creature_template` SET  `ScriptName` =  'boss_the_lurker_below' WHERE  `creature_template`.`entry` =21217;
UPDATE `creature_template` SET  `ScriptName` =  'coilfang_ambusher' WHERE  `creature_template`.`entry` =21865;
UPDATE `creature_template` SET  `ScriptName` =  'coilfang_guardian' WHERE  `creature_template`.`entry` =21873;

 -- modify coilfang abusher template
update `creature_template` set `minrangedmg`='161', `rangedattackpower`='85', `maxrangedmg`='206' where `entry`='21865';

 -- SD2 table (spout)
INSERT INTO `custom_texts` VALUES ('-2500300',  '%s takes a deep breath!', NULL , NULL ,  '%s nimmt einen tiefen Atemzug!', NULL , NULL , NULL , NULL , NULL ,  '0',  '3',  '0',  '0',  'the lurker below EMOTE_SPOUT');
