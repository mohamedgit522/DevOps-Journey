# Bandit Level 3 → Level 4

## The Goal 
Retrieve the password stored in a hidden file inside the `inhere` directory.

---

## My Solution

**Step 1:** SSH into the remote server  

```
ssh bandit3@bandit.labs.overthewire.org -p 2220

```

**Step 2:** Navigate to the `inhere` directory

```
cd inhere

```

**Step 3:** Show all files, including hidden ones

```
cat .hidden

```
Password is revealed.

**Takeaways**

- Hidden files start with a dot `(.).`

- Use `ls -a` to list all files including hidden.



