# handy-bash-scripting
## Handy scripts for bash

### What is bash script?

The bash script is a shell programming language. Generally, we run many types of shell commands from the terminal by typing each command separately that require time and efforts. 
If we need to run the same commands again then we have to execute all the commands from the terminal again. But using a bash script, we can store many shell command statements in a single bash file and execute the file any time by a single command. 
Many system administration related tasks, program installation, disk backup, evaluating logs, etc. can be done by using proper bash script.

### Shell Type and Debugging

Different types of shell scripts exist in Linux. One of the popular and mostly used shell scripts is Bourne Again Shell or Bash.
Sequence of characters (#!) is called shebang and is used to tell the operating system which interpreter to use to parse the rest of the file
#### Examples:

    #!/bin/bash - Uses bash to parse the file.
    #!/usr/bin/env perl - Uses the env command to find the path to the perl executable.
    #!/usr/bin/python Executes the file using the python binary.
 
To run the script in a debug mode you would use #!/bin/bash -x. If you are using the env method then you need to use set to declare the option. To enable the debug mode you would add set -x after the shebang line.
    
