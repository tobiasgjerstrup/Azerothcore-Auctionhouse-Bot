package main

import (
	"encoding/csv"
	"flag"
	"fmt"
	"math/rand"
	"os"
	"strconv"

	"Azerothcore-Auctionhouse-Bot/m/internal/mariadb"
)

func main() {
	fmt.Println("Script Started!")

	cwd, err := os.Getwd()
	if err != nil {
		panic(err)
	}

	filePath := flag.String("file", "auctionhouse-data.csv", "path to csv file")
	delimiter := flag.String("delimiter", ",", "the delimiter used in the csv file")
	characterId := flag.Int("characterid", -1, "the ID for the character that lists the items")
	flag.Parse()

	csvFilePath := fmt.Sprintf("%s/%s", cwd, *filePath)
	fmt.Printf("Reading CSV file: %s\n", csvFilePath)

	if *characterId < 0 {
		panic("flag -characterid is missing or is not a positive number")
	}

	file, err := os.Open(csvFilePath)
	if err != nil {
		panic(err)
	}
	defer file.Close()

	reader := csv.NewReader(file)
	reader.Comma = rune((*delimiter)[0])

	headers, err := reader.Read()
	if err != nil {
		panic(err)
	}
	fmt.Println("Headers:", headers)

	for {
		row, err := reader.Read()
		if err != nil {
			if err.Error() == "EOF" {
				break
			}
			panic(err)
		}

		recordMap := make(map[string]string)
		for i, h := range headers {
			recordMap[h] = row[i]
		}

		if !isInt(recordMap["ID"]) {
			panic("ID Is Missing Or Is Not A Number")
		}
		if !isInt(recordMap["PriceMin"]) {
			panic("PriceMin Is Missing Or Is Not A Number")
		}
		if !isInt(recordMap["PriceMax"]) {
			panic("PriceMax Is Missing Or Is Not A Number")
		}
		if !isInt(recordMap["StackCountMin"]) {
			panic("StackCountMin Is Missing Or Is Not A Number")
		}
		if !isInt(recordMap["StackCountMax"]) {
			panic("StackCountMax Is Missing Or Is Not A Number")
		}
		if !isInt(recordMap["ListingsMin"]) {
			panic("ListingsMin Is Missing Or Is Not A Number")
		}
		if !isInt(recordMap["ListingsMax"]) {
			panic("ListingsMax Is Missing Or Is Not A Number")
		}

		// fmt.Printf("ID: %s, PriceMin: %s, PriceMax: %s, StackCountMin: %s, StackCountMax: %s, ListingsMin: %s, ListingsMax: %s\n", recordMap["ID"], recordMap["PriceMin"], recordMap["PriceMax"], recordMap["StackCountMin"], recordMap["StackCountMax"], recordMap["ListingsMin"], recordMap["ListingsMax"])

		id, _ := strconv.Atoi(recordMap["ID"])
		priceMin, _ := strconv.Atoi(recordMap["PriceMin"])
		priceMax, _ := strconv.Atoi(recordMap["PriceMax"])
		stackCountMin, _ := strconv.Atoi(recordMap["StackCountMin"])
		stackCountMax, _ := strconv.Atoi(recordMap["StackCountMax"])
		listingsMax, _ := strconv.Atoi(recordMap["ListingsMax"])
		listingsMin, _ := strconv.Atoi(recordMap["ListingsMin"])

		n := rand.Intn(listingsMax-listingsMin+1) + listingsMin
		for range n {
			price := rand.Intn(priceMax-priceMin+1) + priceMin
			count := rand.Intn(stackCountMax-stackCountMin+1) + stackCountMin
			mariadb.InsertAuction(id, price, count, *characterId)
		}
	}
}

func isInt(s string) bool {
	_, err := strconv.Atoi(s)
	return err == nil
}
