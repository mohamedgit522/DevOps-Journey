## Bandit Level 0 → Level 1
#
# Goal:
# Retrieve the password for Level 1.
# It is stored in a file named "readme" in the home directory.
#
# Steps:
# 1. SSH into the Bandit server as bandit0.
#    ssh bandit0@bandit.labs.overthewire.org -p 2220
#
# 2. List files to find "readme".
#    ls
#
# 3. Display contents of "readme".
#    cat readme
#
# Password:
# cvX2JDeQyF5rDZ6RX5dmPQnNlzTnBqC7
#
# Takeaways:
# - Basic SSH connection.
# - Listing files and reading file content.

ssh bandit0@bandit.labs.overthewire.org -p 2220 "cat readme"

