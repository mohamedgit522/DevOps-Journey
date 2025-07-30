# Bandit Level 0 → Level 1

## The Goal
Retrieve the password for Level 1. It’s stored in a file named `readme` in the home directory.

---

## My Solution

**Step 1:** Log into the remote server

```
ssh bandit0@bandit.labs.overthewire.org -p 2220

```
**Step 2:** List files in the home directory to find `readme`

```
ls

```
**Step 3:** Display the contents of `readme` to reveal the password

**Password for Level 1:**

```
cvX2JDeQyF5rDZ6RX5dmPQnNlzTnBqC7

```

**Takeaways:**

- Practiced basic SSH login.
- Navigated remote directory and viewed file contents.
~                                                           
