package main

import (
	"fmt"
)

// Variables
var PROTOCOL string = "https://"
var DOMAIN string = "example.localhost"
var KEY = "d5a2858c-d045-4712-afa6-db961f0d60a6"
var LICENSE_SERVER_PATH string = "/verify?key="

func main() {
	// Verify license
	URL := PROTOCOL + DOMAIN + LICENSE_SERVER_PATH + KEY

	// App code here (example provided)
	fmt.Println("Fetching =>", URL)
	fmt.Println("Application has been started, your key is", KEY)
}
