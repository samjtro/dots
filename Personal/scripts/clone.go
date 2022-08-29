package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"strconv"

	"github.com/go-git/go-git/v5"
)

var (
	bareFlag    string
	authorFlag  string
	repoFlag    string
	versionFlag string
)

func main() {
	flag.StringVar(&authorFlag, "a", "", "Author of the repository")
	flag.StringVar(&repoFlag, "r", "", "Name of the repository")
	flag.StringVar(&versionFlag, "v", "latest", "Version of author/repo; e.g. v0.5.0")
	flag.StringVar(&bareFlag, "b", "false", "Is the repository bare?")
	isBare, err := strconv.ParseBool(bareFlag)

	if err != nil {
		log.Fatalf(err.Error())
	}

	flag.Parse()
	path, err := os.Getwd()

	if err != nil {
		log.Fatalf(err.Error())
	}

	_, err = git.PlainClone(path, isBare, &git.CloneOptions{
		URL:      fmt.Sprintf("https://github.com/%s/%s@%s", authorFlag, repoFlag, versionFlag),
		Progress: os.Stdout,
	})

	if err != nil {
		log.Fatalf(err.Error())
	}
}
