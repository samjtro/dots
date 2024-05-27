package main

import (
	"errors"
	"fmt"
	"log"
	"os"
	"os/exec"
	"strings"
	"time"
)

func execCommand(cmd *exec.Cmd) {
	cmd.Stdin = os.Stdin
	cmd.Stdout = os.Stdout
	err := cmd.Run()

	if err != nil {
		log.Fatalf(err.Error())
	}
}

func main() {
	zetPathBase := "~/zets"
	zetPathCurrentYear := fmt.Sprintf("%s/%d", zetPathBase, time.Now().Year())

	if _, err := os.Stat(zetPathBase); errors.Is(err, os.ErrNotExist) {
		fmt.Printf("Please type the URL for your zets directory: ")
		var userInput string
		fmt.Scanln(&userInput)
		urlSplit := strings.Split(userInput, "/")
		execCommand(exec.Command("git", "clone", userInput))
		execCommand(exec.Command("mv", urlSplit[len(urlSplit)-1], "~/zets"))
		fmt.Println("Your zets now live at ~/zets. If your remote dir was named anything other than 'zets', please change it to such.")
	}

	if _, err := os.Stat(zetPathCurrentYear); errors.Is(err, os.ErrNotExist) {
		err := os.Mkdir(zetPathCurrentYear, 0755)

		if err != nil {
			log.Fatalf(err.Error())
		}
	}

	execCommand(exec.Command("vim", fmt.Sprintf("%s/%s_%d.md", zetPathCurrentYear, os.Args[1], time.Now().Unix())))
}
