# Week 1

## a) List the names of the users logged in and their total count without displaying any further details.

Question: List the names of the users logged in and their total count without displaying any further details.

Answer:
```bash
who | cut -d' ' -f1 | sort | uniq | tee >(wc -l)
```

Explanation: This command lists logged-in users and counts them. `who` shows logged-in users, `cut` extracts usernames, `sort` and `uniq` remove duplicates, and `tee` with `wc -l` displays and counts the results.

## b) Find out your terminal's device name.

Question: Find out your terminal's device name.

Answer:
```bash
tty
```

Explanation: The `tty` command prints the file name of the terminal connected to standard input.

## c) Display current date in the form dd/mm/yyyy.

Question: Display current date in the form dd/mm/yyyy.

Answer:
```bash
date +"%d/%m/%Y"
```

Explanation: The `date` command with the specified format string displays the current date in dd/mm/yyyy format.

## d) Find out your machine's name and the version of the operating system.

Question: Find out your machine's name and the version of the operating system.

Answer:
```bash
hostname; uname -a
```

Explanation: `hostname` displays the machine's name, and `uname -a` shows detailed system information, including the OS version.

## e) Clear the screen and place the cursor at row 12, column 25.

Question: Clear the screen and place the cursor at row 12, column 25.

Answer:
```bash
clear; tput cup 11 24
```

Explanation: `clear` clears the screen, and `tput cup 11 24` moves the cursor to row 12, column 25 (note that tput uses 0-based indexing).

## f) Find the decimal equivalent of 1101001.

Question: Find the decimal equivalent of 1101001.

Answer:
```bash
echo "ibase=2; 1101001" | bc
```

Explanation: This command uses `bc` (basic calculator) to convert the binary number 1101001 to its decimal equivalent.

## g) Find out the users who are idling.

Question: Find out the users who are idling.

Answer:
```bash
w | awk '$4 > 0 {print $1 " idle for " $4}'
```

Explanation: This command uses `w` to show logged-in users and their activities, then `awk` filters and formats the output to show idle users.

## h) Use man to get help

Question: Use man to get help

Answer:
```bash
man man
```

Explanation: This command opens the manual page for the `man` command itself, providing information on how to use the manual system.

## i) Ensure that bc displays the results of all divisions using three decimal places.

Question: Ensure that bc displays the results of all divisions using three decimal places.

Answer:
```bash
bc -l <<< "scale=3; 10/3"
```

Explanation: The `-l` option loads the math library, and `scale=3` sets the decimal precision to 3 places. This example divides 10 by 3 with 3 decimal places.