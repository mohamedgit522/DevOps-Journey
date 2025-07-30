# Bandit Level 2 → Level 3

## The Goal 
Find the password stored in the file `"spaces in this filename"` in the home directory.

---

## My Solution

**Step 1:** SSH into the remote server  
```
ssh bandit2@bandit.labs.overthewire.org -p 2220

```
**Step 2:** List the files in the home directory to locate the file with spaces

```
ls

```
**Step 3:** Read the file using quotes to handle spaces in the filename

```
cat "spaces in this filename"

```

**Takeaways**

- Filenames containing spaces should be enclosed in quotes.
- Alternatively, spaces can be escaped with backslashes (e.g., `spaces\ in\ this\ filename`).
