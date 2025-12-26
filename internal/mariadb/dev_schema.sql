DROP DATABASE `dev_acore_characters`;
DROP DATABASE `dev_acore_world`;

CREATE DATABASE IF NOT EXISTS `dev_acore_characters`;
CREATE DATABASE IF NOT EXISTS `dev_acore_world`;

CREATE TABLE IF NOT EXISTS `dev_acore_characters`.`item_instance` (
	`guid` INT NOT NULL,
	`itemEntry` INT NOT NULL,
	`owner_guid` INT NOT NULL,
	`creatorGuid` INT NOT NULL,
	`giftCreatorGuid` INT NOT NULL,
	`count` INT NOT NULL,
	`duration` INT NOT NULL,
	`charges` VARCHAR(255) NOT NULL,
	`flags` INT NOT NULL,
	`enchantments` VARCHAR(255) NOT NULL,
	`randomPropertyId` INT NOT NULL,
	`durability` INT NOT NULL,
	`playedTime` INT NOT NULL,
	`text` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`guid`)
)
COLLATE='utf8mb4_general_ci';

CREATE TABLE IF NOT EXISTS `dev_acore_characters`.`auctionhouse` (
	`id` INT NOT NULL,
	`itemguid` INT NOT NULL,
	`itemowner` INT NOT NULL,
	`buyoutprice` INT NOT NULL,
	`time` INT NOT NULL,
	`deposit` INT NOT NULL,
	`houseid` INT NOT NULL,
	PRIMARY KEY (`id`)
)
COLLATE='utf8mb4_general_ci';

CREATE TABLE IF NOT EXISTS `dev_acore_world`.`item_template` (
	`entry` INT NOT NULL,
	`name` VARCHAR(255),
	`quality` INT NOT NULL,
	PRIMARY KEY (`entry`)
)
COLLATE='utf8mb4_general_ci';

-- ORES
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (2058, 'Copper Ore', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (2059, 'Tin Ore', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (2060, 'Silver Ore', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3577, 'Iron Ore', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3578, 'Gold Ore', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3858, 'Mithril Ore', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3859, 'Truesilver Ore', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (10620, 'Thorium Ore', 1);

-- CLOTH
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (2589, 'Linen Cloth', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (2592, 'Wool Cloth', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (4306, 'Silk Cloth', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (4338, 'Mageweave Cloth', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (14047, 'Runecloth', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (14256, 'Felcloth', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (14342, 'Mooncloth', 2);
-- LEATHER
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (2318, 'Light Leather', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (2319, 'Medium Leather', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (4234, 'Heavy Leather', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (4304, 'Thick Leather', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (8170, 'Rugged Leather', 1);

-- HIDES
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (783, 'Light Hide', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (4232, 'Medium Hide', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (4235, 'Heavy Hide', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (8169, 'Thick Hide', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (8171, 'Rugged Hide', 1);

-- SCALES
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (6470, 'Deviate Scale', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (8167, 'Turtle Scale', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (8165, 'Worn Dragonscale', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (15412, 'Green Dragonscale', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (15415, 'Blue Dragonscale', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (15414, 'Red Dragonscale', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (15416, 'Black Dragonscale', 1);

-- SPECIAL LEATHERS (UNCOMMON)
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (15417, 'Devilsaur Leather', 2);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (17012, 'Core Leather', 2);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (15423, 'Chimera Leather', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (15419, 'Warbear Leather', 1);
-- HERBS
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (2447, 'Peacebloom', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (765, 'Silverleaf', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (2449, 'Earthroot', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (785, 'Mageroyal', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (2450, 'Briarthorn', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3820, 'Stranglekelp', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (2453, 'Bruiseweed', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3355, 'Wild Steelbloom', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3369, 'Grave Moss', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3356, 'Kingsblood', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3357, 'Liferoot', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3818, 'Fadeleaf', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3821, 'Goldthorn', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3358, 'Khadgar''s Whisker', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3819, 'Wintersbite', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (4625, 'Firebloom', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (8831, 'Purple Lotus', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (8836, 'Arthas'' Tears', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (8838, 'Sungrass', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (8839, 'Blindweed', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (8845, 'Ghost Mushroom', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (8846, 'Gromsblood', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (13464, 'Golden Sansam', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (13463, 'Dreamfoil', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (13465, 'Mountain Silversage', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (13466, 'Plaguebloom', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (13467, 'Icecap', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (13468, 'Black Lotus', 2);
-- ELEMENTAL REAGENTS (COMMON)
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7068, 'Elemental Fire', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7067, 'Elemental Earth', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7070, 'Elemental Water', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7069, 'Elemental Air', 1);

INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7077, 'Heart of Fire', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7075, 'Core of Earth', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7079, 'Globe of Water', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7081, 'Breath of Wind', 1);

INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (12803, 'Living Essence', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7972, 'Ichor of Undeath', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (10286, 'Heart of the Wild', 1);

-- ESSENCES (UNCOMMON)
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7078, 'Essence of Fire', 2);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7076, 'Essence of Earth', 2);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7080, 'Essence of Water', 2);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7082, 'Essence of Air', 2);
-- RAW GEMS (COMMON)
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (774, 'Malachite', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (818, 'Tigerseye', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (1210, 'Shadowgem', 1);

-- RAW GEMS (UNCOMMON)
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (1529, 'Jade', 2);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3864, 'Citrine', 2);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7909, 'Aquamarine', 2);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7910, 'Star Ruby', 2);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (12800, 'Azerothian Diamond', 2);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (12361, 'Blue Sapphire', 2);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (12799, 'Large Opal', 2);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (12364, 'Huge Emerald', 2);

-- RAW GEMS (RARE)
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (12363, 'Arcane Crystal', 3);
-- CREATURE DROPS (COMMON)
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (17056, 'Light Feather', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (6889, 'Small Egg', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (5637, 'Large Fang', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (1288, 'Large Venom Sac', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (1475, 'Small Venom Sac', 1);

INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3182, 'Spider Silk', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (4337, 'Thick Spider Silk', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (14227, 'Ironweb Spider Silk', 1);

INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (11403, 'Bear Jaw', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (35562, 'Bear Flank', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (2677, 'Boar Ribs', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (3685, 'Raptor Egg', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (4461, 'Raptor Hide', 1);

INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (7428, 'Shadowcat Hide', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (6471, 'Perfect Deviate Scale', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (15408, 'Heavy Scorpid Scale', 1);

-- FISHING MATERIALS (COMMON)
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (6522, 'Deviate Fish', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (6358, 'Oily Blackmouth', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (6359, 'Firefin Snapper', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (13422, 'Stonescale Eel', 1);

INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (6291, 'Raw Brilliant Smallfish', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (6289, 'Raw Longjaw Mud Snapper', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (6308, 'Raw Bristle Whisker Catfish', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (6303, 'Raw Slitherskin Mackerel', 1);

INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (6361, 'Raw Rainbow Fin Albacore', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (6362, 'Raw Rockscale Cod', 1);

INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (13759, 'Raw Nightfin Snapper', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (13760, 'Raw Sunscale Salmon', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (13889, 'Raw Whitescale Salmon', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (13754, 'Raw Glossy Mightfish', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (13758, 'Raw Redgill', 1);

INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (13888, 'Darkclaw Lobster', 1);
INSERT INTO dev_acore_world.item_template (`entry`, `name`, `quality`) VALUES (13755, 'Winter Squid', 1);


/*
SET @new_guid := (SELECT COALESCE(MAX(guid), 0) + 1 FROM dev_acore_characters.item_instance);

-- Insert Linen Cloth (itemEntry = 2589)
INSERT INTO dev_acore_characters.item_instance
(`guid`, `itemEntry`, `owner_guid`, `creatorGuid`, `giftCreatorGuid`,
 `count`, `duration`, `charges`, `flags`, `enchantments`,
 `randomPropertyId`, `durability`, `playedTime`, `text`)
VALUES
(@new_guid, 2589, 601, 0, 0, 1, 0,
 '0 0 0 0 0 ',
 0,
 '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',
 0, 0, 0, '');

 SET @new_auction_id := (SELECT COALESCE(MAX(id), 0) + 1 FROM dev_acore_characters.auctionhouse);

-- Insert auction entry into **Alliance AH (2)**
INSERT INTO dev_acore_characters.auctionhouse
(`id`, `itemguid`, `itemowner`, `buyoutprice`, `time`, `deposit`, `houseid`)
VALUES
(@new_auction_id, @new_guid, 601, 100000, UNIX_TIMESTAMP() + 86400, 0, 2);

SELECT * FROM dev_acore_characters.auctionhouse;
SELECT * FROM dev_acore_characters.item_instance;
*/