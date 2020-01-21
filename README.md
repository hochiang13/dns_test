Introduction
============

Bash script to test DNS nameserver with dig. Run a loop that runs dig every 2 seconds, and append output to test_output.txt if a string can be found in the output of dig.

Notes on dig output
-------------------

Flag of aa means the nameserver asked is the authority of the domain name queried by dig.

Flag of ra means the nameserver accepts recursive query.

if ANSWER: 0, that means no IP address is found for this domain name.

