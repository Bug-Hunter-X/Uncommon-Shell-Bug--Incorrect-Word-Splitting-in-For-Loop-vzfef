# Shell Script Bug: Incorrect Word Splitting

This repository demonstrates a subtle yet common bug in shell scripting involving word splitting within a `for` loop.  The script attempts to process words from a file, but fails when words contain spaces or special characters.

## Bug Description
The `for` loop incorrectly uses word splitting, leading to unexpected behavior if the file contains words separated by anything other than a single space.  Words with spaces are treated as multiple words, causing incorrect processing.

## Solution
The solution uses the `read` command with the `-r` option to prevent backslash escapes from being interpreted and `-d` to specify a custom delimiter, allowing for safer and more reliable word processing.