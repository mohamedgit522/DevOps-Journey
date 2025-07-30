
# Bandit Level 4 → Level 5

## The Goal 
Find the password in the only human-readable file in the `inhere` directory.

---

## My Solution 

**Step 1:** SSH into the remote server  
```
ssh bandit4@bandit.labs.overthewire.org -p 2220

```

**Step 2:** Change to the `inhere` directory

```
cd inhere

```

**Step 3:** Identify file types to find the readable one

```
file ./*

```
Step 4: Display the readable file (e.g., `-file07`)

```
cat ./-file07

```

**Takeaways**

- Use `file` command to detect human-readable files.
- Some files may have unusual names (like starting with `-`).

