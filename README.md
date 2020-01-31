Introduction
============

Bash script and python program to test DNS nameserver with dig. Run a loop that runs dig every 1 seconds, and append output to test_output.txt.
Python program will parse the output file, and put it into histograms.

Notes on dig output
-------------------

Flag of aa means the nameserver asked is the authority of the domain name queried by dig.

Flag of ra means the nameserver accepts recursive query.

if ANSWER: 0, that means no IP address is found for this domain name.

