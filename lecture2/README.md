1. List all files in dir, sorted by recency, in a human readable colorized format.

```
ls -a -t -l --color --block-size=M
```

2. Bash scripts macro.sh saves the current working directory in an environment variable and then polo.sh uses it to cd back to it from anywhere.

3. The failure.sh script runs random.sh until it fails and reporte the number of times random.sh ran. random.sh must be made executable for failure.sh to execute it.
4. This command find all HTML files in dir and zips them, filename spaces are handled with the -print0 / xargs -0 args.

```
find -name '*.html' -type f -print0| xargs -0 zip htmls.zip
```

5. This command finds the most recently modified file in dir. Remove the head -1 command to list all files by recency.

```
ls -t | xargs stat --format '%y %n' | head -1
```
