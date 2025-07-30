
# Bandit Level 6 → Level 7

## The Goal
Find the password file with these properties:  
- Owned by user `bandit7`  
- Owned by group `bandit6`  
- File size of 33 bytes

---

## My Solution

**Step 1:** SSH into the remote server  
```
ssh bandit6@bandit.labs.overthewire.org -p 2220

```
**Step 2:** Use `find` with owner, group, and size filters

```
find / -user bandit7 -group bandit6 -size 33c 2>/dev/null

```
Step 3: Display the contents of the found file (e.g., `/var/lib/dpkg/info/bandit7.password`)

```
cat /var/lib/dpkg/info/bandit7.password

```

**Takeaways**

- `find` can filter by user and group ownership.
- Use `2>/dev/null` to suppress permission denied errors. 

