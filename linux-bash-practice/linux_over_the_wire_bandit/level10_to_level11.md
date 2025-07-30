
---

### level10-11.md

```markdown
# Bandit Level 10 → Level 11

## The Goal  
Password is base64 encoded inside `data.txt`.

---

## My Solution

**Step 1:** SSH into the remote server  
```
ssh bandit10@bandit.labs.overthewire.org -p 2220

```
**Step 2:** Decode base64 content

```
base64 -d data.txt

```
**Takeaways**

- Use `base64 -d` to decode base64 encoded data. 
