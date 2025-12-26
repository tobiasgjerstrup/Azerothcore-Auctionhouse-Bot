package mariadb

import (
	"database/sql"
	"fmt"
	"log"

	"github.com/go-sql-driver/mysql"
)

var db *sql.DB

func connect() {
	// Capture connection properties.
	cfg := mysql.NewConfig()
	cfg.User = "test-admin"
	cfg.Passwd = "pass"
	cfg.Net = "tcp"
	cfg.Addr = "127.0.0.1:3306"
	cfg.DBName = "dev_acore_characters"

	// Get a database handle.
	var err error
	db, err = sql.Open("mysql", cfg.FormatDSN())
	if err != nil {
		log.Fatal(err)
	}

	pingErr := db.Ping()
	if pingErr != nil {
		log.Fatal(pingErr)
	}
	fmt.Println("Connected!")
}

func InsertAuction(itemID int, price int, count int, characterId int) {
	if db == nil {
		connect()
	}

	var nextItemGUID int
	var nextAuctionID int

	query := "SELECT COALESCE(MAX(guid), 0) + 1 FROM item_instance"

	err := db.QueryRow(query).Scan(&nextItemGUID)
	if err != nil {
		log.Fatal(err)
	}

	query = "SELECT COALESCE(MAX(id), 0) + 1 FROM auctionhouse"

	err = db.QueryRow(query).Scan(&nextAuctionID)
	if err != nil {
		log.Fatal(err)
	}

	query = `
	INSERT INTO item_instance
	(guid, itemEntry, owner_guid, creatorGuid, giftCreatorGuid,
	count, duration, charges, flags, enchantments,
	randomPropertyId, durability, playedTime, text)
	VALUES
	(?, ?, ?, 0, 0, ?, 0,
	'0 0 0 0 0 ',
	0,
	'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ',
	0, 0, 0, '')
 `

	_, err = db.Exec(query, nextItemGUID, itemID, characterId, count)
	if err != nil {
		log.Fatal(err)
	}

	query = `
	INSERT INTO dev_acore_characters.auctionhouse
	(id, itemguid, itemowner, buyoutprice, time, deposit, houseid)
	VALUES
	(?, ?, ?, ?, UNIX_TIMESTAMP() + 86400, 0, 2)
 `

	_, err = db.Exec(query, nextAuctionID, nextItemGUID, characterId, count*price)
	if err != nil {
		log.Fatal(err)
	}

	fmt.Printf("Created listing ~ auctionID: %d, itemInstanceGUID: %d, itemID: %d, Price: %d, Count: %d. On character: %d\n", nextAuctionID, nextItemGUID, itemID, price, count, characterId)
}
