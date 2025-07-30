
# Bandit Level 9 → Level 10

## The Goal
Find the password which is a human-readable string preceded by "====" in `data.txt`.

---

## My Solution 

**Step 1:** SSH into the remote server  
```
ssh bandit9@bandit.labs.overthewire.org -p 2220

```
**Step 2:** Extract readable strings and grep for "===="

```
strings data.txt | grep "===="

```

**Takeaways**

 - `strings` extracts readable text from binary files.

