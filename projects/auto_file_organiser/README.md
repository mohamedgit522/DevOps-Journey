# Auto File Organizer

A Bash script that organizes files in a specified folder into subfolders based on file type. It uses both file extensions and MIME types to determine where a file belongs.

This was built as a hands-on project while learning Bash and exploring DevOps tools. The goal was to create something useful and improve it incrementally.

## Features

- Organizes files based on their extension or detected MIME type  
- Creates destination folders automatically if they don't exist  
- Basic logging to track what was moved and where  
- Works on macOS (requires Bash 4+)  

## Quick Install

Clone the repo and make the script executable:

```
git clone https://github.com/mohamedgit522/auto_file_organiser.git
cd auto_file_organiser
chmod +x organise.sh

```
Then run the script like this:

`
/opt/homebrew/bin/bash organise.sh [folder_path]
`

Replace [folder_path] with the directory you want to organize. If you omit it, the script defaults to your Downloads folder.

## Usage

By default, the script organizes the Downloads folder, but you can pass any target folder as an argument.

## Requirements
Bash 4 or higher (macOS ships with Bash 3 by default)

`file` command (comes with most Unix systems)

On macOS, you can install a newer version of Bash using Homebrew:

`brew install bash`

## Logging

All activity is logged in a file named organise.log in the same folder as the script. This includes timestamps, file names, and destination folders.

## File Type Support

The script currently supports the following categories:

Images: jpg, jpeg, png, gif, bmp, webp

Documents: pdf, docx, txt, csv

Audio: mp3

Video: mp4

Archives: zip

Others: fallback for anything not matched

You can add more types by editing the `FILE_TYPES` and `MIME_TYPES` mappings in the script.

## Roadmap

Add a dry-run option

Add CLI flags for more control (`--help`, `--dry-run`, etc.)

Add support for running as a cron job (currently not implemented — I prefer running it manually for now to keep control)

Package for easier installation and reuse

## Why I Built This

I created this script because I was tired of messy folders filled with all kinds of files. Applying my Bash skills to automate organizing saved me time and made the process effortless. This project is part of my journey into DevOps and scripting best practices.
