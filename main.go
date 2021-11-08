package main

import (
	"fmt"
)

var PROTOCOL string = "https://"
var DOMAIN string = "example.localhost"
var KEY = "d5a2858c-d045-4712-afa6-db961f0d60a6"
var LICENSE_SERVER_PATH string = "/verify?key=" + KEY

func main() {
	URL := PROTOCOL + DOMAIN + LICENSE_SERVER_PATH + KEY

	fmt.Println("Fetching =>", URL)
	fmt.Println("Application has been started, your key is", KEY)
}
