## Exercises
1. mkdir /tmp/missing
2. man touch // Updates file access and modification timestamps or creates an empty filee if file arg does not exist
3. touch /tmp/missing/semester
4. echo '#!/bin/sh
   curl --head --silent https://missing.csail.mit.edu' > /tmp/missing/semester
5. /tmp/missing/semester # permission denied  
   ls /tmp/missing

```
-rw-r--r-- 1 steph steph 61 May  1 10:13 semester
```

None of the user the group or everybody has the write to execute the file.

6. sh script.sh only requires read permissions whereas ./script requires execute permission [explanation](https://unix.stackexchange.com/questions/136547/what-is-the-difference-between-running-bash-script-sh-and-script-sh?rq=1)
7. man chmod // chmod changes file mode bits (permissions)
8. chmod +x semester
   The sheel knows the file is supposed to be interprested using sh thanks to the shebang line (#!/bin/sh) at the top of the file
9. ./semester | grep last-modified > ~/last-mo
   dified.txt
10. Using Windows Subsytem for Linux, can't access /sys
