
# Bandit Level 11 → Level 12

## The Goal  
Password in `data.txt` is ROT13 encoded.

---

## My Solution

**Step 1:** SSH into the remote server  
```
ssh bandit11@bandit.labs.overthewire.org -p 2220

```
**Step 2:** Decode ROT13 with `tr`

```
tr 'A-Za-z' 'N-ZA-Mn-za-m' < data.txt

```
**Takeaways**

- `tr` can shift alphabets for ROT13 decoding.

