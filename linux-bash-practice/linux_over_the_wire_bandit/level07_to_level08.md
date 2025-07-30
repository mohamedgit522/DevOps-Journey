
---

### level07-08.md

```markdown
# Bandit Level 7 → Level 8

## The Goal 🎯  
Find the password next to the word "millionth" in `data.txt`.

---

## My Solution 💻

**Step 1:** SSH into the remote server  
```
ssh bandit7@bandit.labs.overthewire.org -p 2220

```
**Step 2:** Search for the keyword using `grep`

```
grep millionth data.txt

```
Takeaways

 - Use `grep` to find lines containing specific words.

