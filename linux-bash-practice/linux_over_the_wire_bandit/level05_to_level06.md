
# Bandit Level 5 → Level 6

## The Goal  
Find the password file in `inhere` that is:  
- Human-readable  
- Exactly 1033 bytes  
- Not executable

---

## My Solution

**Step 1:** SSH into the remote server  
```
ssh bandit5@bandit.labs.overthewire.org -p 2220

```
**Step 2:** Use `find` to locate the file by size and permissions

```
find inhere -type f -size 1033c ! -executable

```
**Step 3:** Read the file found (e.g., `inhere/maybehere07/.file2`)

```
cat inhere/maybehere07/.file2

```

**TakeAways**

- `find` can filter by size, type, and executable permission.
