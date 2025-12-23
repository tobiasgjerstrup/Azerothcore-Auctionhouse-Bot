package main

import (
	"encoding/csv"
	"flag"
	"fmt"
	"os"
)

func main() {
	fmt.Println("Script Started!")

	cwd, err := os.Getwd()
	if err != nil {
		panic(err)
	}

	filePath := flag.String("file", "auctionhouse-data.csv", "path to csv file")
	delimiter := flag.String("delimiter", ",", "the delimiter used in the csv file")
	flag.Parse()

	csvFilePath := fmt.Sprintf("%s/%s", cwd, *filePath)
	fmt.Printf("Reading CSV file: %s\n", csvFilePath)

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

		fmt.Println(recordMap["test2"])
	}
}
