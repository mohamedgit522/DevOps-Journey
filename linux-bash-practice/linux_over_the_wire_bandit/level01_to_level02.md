# Bandit Level 1 → Level 2

## The Goal
Retrieve the password stored in a file named `-` in the home directory.

---

## My Solution

**Step 1:** SSH into the remote server
```
ssh bandit1@bandit.labs.overthewire.org -p 2220

```
**Step 2:** List the files in the home directory to verify the file exists

```
ls

```
**Step 3:** Read the file named `-` using `./-` to avoid it being interpreted as a flag

```
cat ./-

```
**Takeaways**

- Filenames starting with `-` are treated as options by commands.
- Use `./filename` to specify the file explicitly.
