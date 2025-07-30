
# Bandit Level 8 → Level 9

## The Goal  
Find the password which is the only line that occurs once in `data.txt`.

---

## My Solution

**Step 1:** SSH into the remote server  
```
ssh bandit8@bandit.labs.overthewire.org -p 2220

```
**Step 2:** Sort the file and use `uniq` to find unique lines

```
sort data.txt | uniq -u

```
**Takeaways**

- `uniq -u` only works properly on sorted input.

