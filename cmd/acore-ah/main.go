package main

import (
	"flag"
	"fmt"
	"os"
)

func main(){
	fmt.Println("Script Started!");

	cwd, err := os.Getwd()
	if err != nil { 
		panic(err)
	} 

	filePath := flag.String("file", "auctionhouse-data.csv", "path to csv file");
	flag.Parse()

	fmt.Printf("Reading CSV file: %s/%s\n", cwd, *filePath)
}