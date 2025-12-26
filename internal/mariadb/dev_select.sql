SELECT AH.id, AH.itemguid, AH.itemowner, AH.buyoutprice, AH.time, II.guid, II.owner_guid, II.`count`, IT.`name`, IT.Quality
FROM dev_acore_characters.auctionhouse AH
INNER JOIN dev_acore_characters.item_instance II ON AH.itemguid = II.guid
INNER JOIN dev_acore_world.item_template IT ON II.itemEntry = IT.entry
ORDER BY buyoutprice;