My personal howto for things I know I knew, but keep forgetting 😸

Also serve:

- Large org-mode real world test
- A Rough log of my computer-related interests over time (with the Git
  history)

# Operating Systems

## Linux

### Shells

#### Bash

##### Non interactive

###### Use alises in non interactive bash?

``` bash
shopt | egrep expand_aliases
#> expand_aliases  off
shopt -s expand_aliases
#>
shopt | egrep expand_aliases
expand_aliases  on
```

##### Interactive use

###### Complete

####### bash completion cheat sheet?

| complete on                                                              | cmd        | options |             |               | for what?     | short form |
|--------------------------------------------------------------------------|------------|---------|-------------|---------------|---------------|------------|
| remove                                                                   | `complete` | `-r`    |             |               | all           |            |
|                                                                          | `complete` | `-r`    |             | `cmd1 … cmdN` | `cmd1 … cmdN` |            |
| complete on alias names                                                  | `complete` | `-A`    | `alias`     | `cmd1 … cmdN` | `cmd1 … cmdN` | `-a`       |
| array variable names                                                     | `complete` | `-A`    | `arrayvar`  | `cmd1 … cmdN` | `cmd1 … cmdN` |            |
| readline key binding names                                               | `complete` | `-A`    | `binding`   | `cmd1 … cmdN` | `cmd1 … cmdN` |            |
| names of shell builtin commands                                          | `complete` | `-A`    | `builtin`   | `cmd1 … cmdN` | `cmd1 … cmdN` | `-b`       |
| command names                                                            | `complete` | `-A`    | `command`   | `cmd1 … cmdN` | `cmd1 … cmdN` |            |
| directory names                                                          | `complete` | `-A`    | `directory` | `cmd1 … cmdN` | `cmd1 … cmdN` | `-d`       |
| disabled shell builtins                                                  | `complete` | `-A`    | `disabled`  | `cmd1 … cmdN` | `cmd1 … cmdN` |            |
| enabled shell builtins                                                   | `complete` | `-A`    | `enabled`   | `cmd1 … cmdN` | `cmd1 … cmdN` |            |
| names of exported shell variables                                        | `complete` | `-A`    | `export`    | `cmd1 … cmdN` | `cmd1 … cmdN` | `-e`       |
| file names                                                               | `complete` | `-A`    | `file`      | `cmd1 … cmdN` | `cmd1 … cmdN` | `-f`       |
| names of shell functions                                                 | `complete` | `-A`    | `function`  | `cmd1 … cmdN` | `cmd1 … cmdN` |            |
| group names                                                              | `complete` | `-A`    | `group`     | `cmd1 … cmdN` | `cmd1 … cmdN` | `-g`       |
| help topics accepted by the help builtin                                 | `complete` | `-A`    | `helptopic` | `cmd1 … cmdN` | `cmd1 … cmdN` |            |
| hostnames as taken from the file specifed by the HOSTFILE shell variable | `complete` | `-A`    | `hostname`  | `cmd1 … cmdN` | `cmd1 … cmdN` |            |
| job names                                                                | `complete` | `-A`    | `job`       | `cmd1 … cmdN` | `cmd1 … cmdN` | `-j`       |
| shell reserved words                                                     | `complete` | `-A`    | `keyword`   | `cmd1 … cmdN` | `cmd1 … cmdN` | `-k`       |
| names of running jobs                                                    | `complete` | `-A`    | `running`   | `cmd1 … cmdN` | `cmd1 … cmdN` |            |
| service names                                                            | `complete` | `-A`    | `service`   | `cmd1 … cmdN` | `cmd1 … cmdN` |            |
| valid args for the -o option of the set builtin                          | `complete` | `-A`    | `setopt`    | `cmd1 … cmdN` | `cmd1 … cmdN` |            |
| shell option names as accepted by the shopt builtin                      | `complete` | `-A`    | `shopt`     | `cmd1 … cmdN` | `cmd1 … cmdN` |            |
| signal names                                                             | `complete` | `-A`    | `signal`    | `cmd1 … cmdN` | `cmd1 … cmdN` |            |
| names of stopped jobs                                                    | `complete` | `-A`    | `stopped`   | `cmd1 … cmdN` | `cmd1 … cmdN` |            |
| user names                                                               | `complete` | `-A`    | `user`      | `cmd1 … cmdN` | `cmd1 … cmdN` | `-u`       |
| names of all shell variables                                             | `complete` | `-A`    | `variable`  | `cmd1 … cmdN` | `cmd1 … cmdN` | `-v`       |

##### Common tasks

###### Random

####### Generate a lot of (pseudo) random data faster than /dev/urandom?

``` shell
openssl enc -aes-256-ctr -pass pass:"$(head -c128 /dev/urandom | base64)" -nosalt < /dev/zero | pv > randomfile.bin
```

###### generate random string?

``` bash
#!/bin/bash
# bash generate random alphanumeric string
#

# bash generate random 32 character alphanumeric string (upper and lowercase) and
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

# bash generate random 32 character alphanumeric string (lowercase only)
cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1

# Random numbers in a range, more randomly distributed than $RANDOM which is not
# very random in terms of distribution of numbers.

# bash generate random number between 0 and 9
cat /dev/urandom | tr -dc '0-9' | fold -w 256 | head -n 1 | head --bytes 1

# bash generate random number between 0 and 99
NUMBER=$(cat /dev/urandom | tr -dc '0-9' | fold -w 256 | head -n 1 | sed -e 's/^0*//' | head --bytes 2)
if [ "$NUMBER" == "" ]; then
  NUMBER=0
fi

# bash generate random number between 0 and 999
NUMBER=$(cat /dev/urandom | tr -dc '0-9' | fold -w 256 | head -n 1 | sed -e 's/^0*//' | head --bytes 3)
if [ "$NUMBER" == "" ]; then
  NUMBER=0
fi
```

<https://gist.github.com/earthgecko/3089509>

###### decimal / hex (and opposite) conversion?

``` bash
# decimal to hex
echo "obase=16; 34" | bc
# hex to decimal
 echo $((0xa))
 # 10
```

###### redirect output in variable?

"must read" about the differents techniques of redirection:
<http://stackoverflow.com/questions/13763942/bash-why-piping-input-to-read-only-works-when-fed-into-while-read-const>

###### stop on error (even in subshell)?

It seems that bash disable -e in subshells.

####### workaround1: set -e explicitly for each subshell

``` bash
set -e explicitly at the start of each subshell
```

####### workaround2: write shell script with '&&'

Write each commands as a binary and:

``` bash
:        \
&& cmd1  \
&& cmd 2 \
&& cmd 3 \
;
```

####### workaround3: write shell script with '\|\|'

``` bash
cmd1 || false
cmd2 || false
cmd3 || false
```

###### loop over args?

``` bash
for var in "$@"
do
  echo "$var"
done
```

<http://stackoverflow.com/questions/255898/how-to-iterate-over-arguments-in-a-bash-script>

###### parse a string as args

``` bash
How to process the following list of pairs: "Mercury 36" "Venus 67" "Earth 93"  "Mars 142" "Jupiter 483"?
(note no =IFS= set)
#+begin_src sh
#!/usr/bin/env bash
set -euo pipefail

for planet in "Mercury 36" "Venus 67"
do
  set -- $planet
  echo "\$1=$1"
  echo "\$2=$2"
done
# outputs
#
# $1=Mercury
# $2=36
# $1=Venus
# $2=67
```

###### How to save a script params (before doing modifications like shift, ..)?

``` bash
# save with
original_params=("$@")
# use the copy with
echo "${original_params[@]}"
```

###### generate uuid?

``` bash
cat /proc/sys/kernel/random/uuid
#> aa6bc854-9eab-43cd-986d-d2318bf4a845
```

###### List all possible commands (including functions)?

``` bash
# also works for zsh
compgen -c
```

##### Programming

###### Misc

####### bash pointer variables?

###### Control flow

####### Tests/Conditionnals

######## ternary operator in bash?

``` bash
bash -c 'b=5 c=2 && d=3 && let a=b==5?c:d; echo $a'
```

######## cheatsheet

|      |          |            |                 |
|------|----------|------------|-----------------|
| file | is empty | `[ -s a ]` | single brackets |
|      |          |            |                 |

######## test files cheatsheet

from: <https://wiki-dev.bash-hackers.org/commands/classictest> **For
classic test `[ <..> ]`**

| Operator syntax         | Description                                                                            |
|-------------------------|----------------------------------------------------------------------------------------|
| -a \<FILE\>             | True if \<FILE\> exists. :!: (not recommended, may collide with -a for AND, see below) |
| -e \<FILE\>             | True if \<FILE\> exists.                                                               |
| -f \<FILE\>             | True, if \<FILE\> exists and is a regular file.                                        |
| -d \<FILE\>             | True, if \<FILE\> exists and is a directory.                                           |
| -c \<FILE\>             | True, if \<FILE\> exists and is a character special file.                              |
| -b \<FILE\>             | True, if \<FILE\> exists and is a block special file.                                  |
| -p \<FILE\>             | True, if \<FILE\> exists and is a named pipe (FIFO).                                   |
| -S \<FILE\>             | True, if \<FILE\> exists and is a socket file.                                         |
| -L \<FILE\>             | True, if \<FILE\> exists and is a symbolic link.                                       |
| -h \<FILE\>             | True, if \<FILE\> exists and is a symbolic link.                                       |
| -g \<FILE\>             | True, if \<FILE\> exists and has sgid bit set.                                         |
| -u \<FILE\>             | True, if \<FILE\> exists and has suid bit set.                                         |
| -r \<FILE\>             | True, if \<FILE\> exists and is readable.                                              |
| -w \<FILE\>             | True, if \<FILE\> exists and is writable.                                              |
| -x \<FILE\>             | True, if \<FILE\> exists and is executable.                                            |
| -s \<FILE\>             | True, if \<FILE\> exists and has size bigger than 0 (not empty).                       |
| -t \<fd\>               | True, if file descriptor \<fd\> is open and refers to a terminal.                      |
| \<FILE1\> -nt \<FILE2\> | True, if \<FILE1\> is newer than \<FILE2\> (mtime). :!:                                |
| \<FILE1\> -ot \<FILE2\> | True, if \<FILE1\> is older than \<FILE2\> (mtime). :!:                                |
| \<FILE1\> -ef \<FILE2\> | True, if \<FILE1\> and \<FILE2\> refer to the same device and inode numbers. :!:       |

####### Looping

######## loop over cmd output with while?

``` bash
iseq 3 | while read l; do echo ">$l"; done
#> >1
#> >2
#> >3
```

######## c style for loop?

``` bash
for ((i=0;i<3;i++)); do
  echo $i
done
```

####### switch case ?

``` bash
while [[ $# -gt 0 ]]; do
    case "$1" in
        *:*          ) hostport=(${1//:/ }); shift 1 ;;
             --child ) CHILD=1             ; shift 1 ;;
        -q | --quiet ) QUIET=1             ; shift 1 ;;
        -s | --strict) STRICT=1            ; shift 1 ;;
        --host=*     ) HOST="${1#*=}"      ; shift 1 ;;
        --help       ) usage               ; shift 1 ;;
        *            ) unknownArg "$1"     ; shift 1 ;;
    esac
done
```

###### Types

####### Datastructures

######## Arrays

######### Associative arrays

########## declare, print, …

``` bash
# declare
declare -A m=( [red]='0;31' [green]='0;32' )
# print keys
echo "keys=${!m[@]}"
# print all
declare | grep colorsCodes
# iterate
for i in "${!array[@]}"
do
  echo "key  : $i"
  echo "value: ${array[$i]}"
done
```

########## copy ?

``` bash
declare -A arr=([this]=hello [\'that\']=world [theother]='and "goodbye"!')
declare -A newarr
for idx in "${!arr[@]}"; do
    newarr[$idx]=${arr[$idx]}
done

diff <(echo "$temp") <(declare -p newarr | sed 's/newarr=/arr=/')
# no output
```

<http://stackoverflow.com/questions/19417015/bash-copy-from-one-array-to-another>

######### Normal arrays

########## declare/literal/set/getAll/size

``` bash
# declare
declare -a a
# literal
a=(a b c)
# set
a[0]=x
# get all
echo ${a[*]}
# size
echo "size=${#a[@]}"
```

########## access empty array?

``` bash
declare -a a=()
echo -n a=
echo ${a[@} + "${a[@]}"}
```

########## parse string to array?

``` bash
IFS=', ' read -r -a array <<< "a, b, c"
echo "array=${array[@]}"
#> array=a b c
```

########## clone an array into another array?

``` bash
show() { declare | egrep "^${1}=" ; }
# declare array a1
declare -a a1=( a b )
show a1
#> a1=([0]="a" [1]="b")
declare -a a2=("${a1[@]}")
show a2
#> a2=([0]="a" [1]="b")
# verify it is a clone
a2[0]=x
show a2
#> a2=([0]="x" [1]="b")
show a1
#> a1=([0]="a" [1]="b")
```

####### Strings

######## bash strings cheat sheet?

| what        | how                                          | example |
|-------------|----------------------------------------------|---------|
| size        | `${#str}`                                    |         |
| substring   | `${str:pos}`                                 |         |
| substring   | `${str:pos:length}`                          |         |
|             |                                              |         |
| char to int | `printf '%d\n' "'y"`                         |         |
| int to char | `printf "\x$(printf %x 65)"`                 |         |
| replace all | `bash -c 'x=abcabc; echo ${x//b/z} # axcaxc` |         |
|             |                                              |         |

######## Syntax

######### ssh escape sequence?

`ENTER, ~, .`

######## Printf?

######### print args, one by line with its position?

from: <http://wiki.bash-hackers.org/commands/builtin/printf>

``` bash
printf '"%b"\n' "$0" "$@" | nl -v0 -s": "
#> 0: "-zsh"
#> 1: "foo"
#> 2: "bar"
```

######### print a line accross the terminal?

from: <http://wiki.bash-hackers.org/commands/builtin/printf>

``` bash
bash -c "l=$(tput cols)"' && printf -v line "%*s" $l && echo ${line// /-}'
#> --------------------------------------------------------------------------------
```

##### Bash options

###### How to get the values of errexit etc (set by set -e …)?

``` bash
set -o
#> allexport       off
#> braceexpand     on
#> emacs           on
#> errexit         off
#> errtrace        off
```

###### option so bash export all declared variables?

``` bash
a=1
bash -c 'echo "a=$a"'
set -a
a=1
bash -c 'echo "a=$a"'
#> a=
#> a=1

```

###### option to glob also hidden files?

``` bash
ls -Alrth
   #> total 1,0K
   #> -rw-r--r-- 1 u u 0 fvr. 10 19:37 .a
   #> -rw-r--r-- 1 u u 0 fvr. 10 19:37 a
ls *
   #> a
shopt -s dotglob && ls *
   #> a
   #> .als -Alrth
   #> total 1,0K
   #> -rw-r--r-- 1 u u 0 fvr. 10 19:37 .a
   #> -rw-r--r-- 1 u u 0 fvr. 10 19:37 a
```

###### Bash config files

####### Order of loading of bash init files?

- See diagram:
  <https://blog.flowblok.id.au/2013-02/shell-startup-scripts.html>
- graphviz code repo:
  `hg clone https://bitbucket.org/flowblok/shell-startup`

![](./img/shell-startup.png)

##### Files and Redirections

###### Stdin/out/err

####### redirect file to stdin on the left side?

see: <http://www.tldp.org/LDP/abs/html/io-redirection.html>

``` bash
< input-file command > output-file
# non standard
```

####### redirecting stdout, stderr

``` bash
| redirect from | to   | cmd                            | notes          |
|---------------+------+--------------------------------+----------------|
| out           | err  |  ls 1>&2                       |                |
| out & err     | file |  ls &>   file                  |                |
|               |      |  ls >    file 2>&1             | for older bash |
| err           | out  |  ls 2>&1                       |                |
| err & out     | pipe |  ls 2>&1 |  grep '.*'          |                |
|               |      |  ls      |& grep '.*'          | equiv          |
| err           | proc |  ls 2> >(grep foo)  '          | equiv          |
```

####### use stdout as a file (with filename) for another cmd?

``` bash
cmd <(cat f)
```

####### swap stdout and stderr?

`cmd 3>&1 1>&2 2>&3`

``` bash
   $ f() { (echo out) && (echo err 1>&2); }
   $ f
out
err
   $ s() { sed "s/.*/=$1>&<$1=/"; }
   $ f | s 1
err
=1>out<1=
   $ (f 3>&1 1>&2 2>&3) | s 1
out
=1>err<1=
   $ ((f 3>&1 1>&2 2>&3) | s 1) | s 2
out
=2>=1>err<1=<2=
   $ (((f 3>&1 1>&2 2>&3) | s 1) 3>&1 1>&2 2>&3) | s 2
=2>out<2=
=1>err<1=
```

####### write to stdin of a backround process?

see:
<https://serverfault.com/questions/188936/writing-to-stdin-of-background-process>

``` bash
# create server
mkfifo in
cat > in &
echo $! > pid
cat in | sed 's/.*/changed> &/' &
# use server
echo foo > in
# stop server
kill -9 $(cat pid)
```

####### here-string with indentation in src but not in output?

``` bash
      cat <<EOF''
<TAB>hi
EOF
      #> <TAB>hi
      # But:
      cat <<-EOF''
<TAB>hi
EOF
      #> hi
```

####### File Descriptors

######## Named File Descriptors

######### define a named file descriptor to a writable file and write to it?

``` bash
# open
exec {filew}>outputfile
# write
echo foo >&$filew
# check
cat outputfile
#> foo
# close
exec {filew}>&-
```

####### how to know if stdout is a terminal?

``` bash
echo -n "stdout is: "
if [ -t 1 ]; then
  echo "a terminal"
else
  echo "not a terminal"
fi
```

####### Printout

######## Padding

######### right / left pad with printf?

``` bash
printf "%40s\n" foo | tr ' ' .
#> .....................................foo
printf "%-40s\n" foo | tr ' ' .
#> foo.....................................
```

######### zero padding numbers?

``` bash
printf "%05d\n" 99
#> 00099
```

###### Tmp files

####### "delete while still open" trick to be sure a file will be deleted?

from:
<https://unix.stackexchange.com/questions/181937/how-create-a-temporary-file-in-shell-script>

``` bash
tmpfile=$(mktemp /tmp/abc-script.XXXXXX)
exec 3>"$tmpfile"
rm "$tmpfile"
: ...
echo foo >&3
```

##### Env

###### how to run a command with the env cleared?

``` bash
env -i bash -c env
#>        -i, --ignore-environment
#>        start with an empty environment

```

###### export bash function?

``` bash
f() { echo "I'm f!" ; }
export -f f
bash -c f
#> I'm f!
```

###### Replace all env var by values in file?

``` bash
envsubst
```

###### how to make bash source a file before running a command?

Use the `BASH_ENV` to tell bash to source a file:

``` bash
touch .bashrc
echo foo=bar >> .bashrc
bash -c 'echo $foo'
#>
BASH_ENV=.bashrc bash -c 'echo $foo'
#> bar
```

###### how to test if a variable is defined?

``` bash
if [[ ${varname:-} ]]; then
  echo "var is defined"
else
  echo "var not defined or empt"
fi
```

- Another way from [bash
  hackers](https://wiki-dev.bash-hackers.org/scripting/posparams):

  ``` bash
  if [ ${x+defined} ]; then echo "x is not defined"; \
                       else echo "x is defined (may be blank)"; \
  fi \
  ;
  ```

##### Debugging

###### how to make a bash script stop and print current line before running it?

Add to your script:

``` bash
trap '(read -p "[$BASH_SOURCE:$LINENO] $BASH_COMMAND?")' DEBUG
```

From:
<https://translate.google.co.uk/translate?hl=fr&sl=en&tl=fr&u=http%3A%2F%2Fwww.softpanorama.org%2FScripting%2FShellorama%2Fbash_debugging.shtml&anno=2>

###### how to execute a script step by step?

Add to your script:

``` bash
trap 'echo TRAP ERROR something wrong happened, errcode=$? 1>&2 ; finish' ERR
```

``` bash
declare varName=foo
declare -n refToVar=varName
echo ${refToVar}
#> foo
```

works recursively:

``` bash
$ declare varName=foo
$ declare -n refToVar=varName
$ declare -n refToRefToVar=refToVar
$ echo ${refToRefToVar}
#> foo
```

#### Zsh

### Editors

#### Emacs

##### file type indicator header for emacs?

``` bash
-*- mode: outline -*-
```

##### edit a file remotely over ssh with tramp?

``` bash
C-x C-f
/<user>@<host>:<file>
```

##### Spacemacs

###### Troubleshoot

####### org-mode not working after a fresh install of spacemacs + practicalli config?

- Remove any org mode in `$HOME/.emacs.d/elpa`
- Restart emacs it should work

###### Clojure

####### Tests

######## Switch between implementation and test in Spacemacs Clojure?

- Keybinding: `<SPC> p a`
- Function: projectile-switch-between-implementation-and-test

######## Clojure's switch between implementation and test: how to create the test if not exists?

- In the spacemacs config add:

``` elisp
(spacemacs-project
      :variables
      projectile-create-missing-test-files t)
```

###### Install

####### "No public key for 066DAFCB81E42C40" ?

``` bash
gpg --homedir ~/.emacs.d/elpa/gnupg --receive-keys 066DAFCB81E42C40
```

###### evil cheat sheet?

| what                                               |                       | cmds                     | example                   |
|----------------------------------------------------|-----------------------|--------------------------|---------------------------|
| general cmd                                        | pattern 1             | \<cmd\> \[n\] \<object\> | `d 3 3` \# delete 3 words |
| "                                                  | pattern 2             | \[n\] \<cmd\> \<object\> | `3 d w` \# delete 3 words |
| undo / redo                                        |                       | u / ctrl-r               |                           |
| put (after copy)                                   |                       | p                        |                           |
| change word                                        |                       | cw                       |                           |
| go to a specific line number                       |                       | :\<lineNb\>              |                           |
| search and replace                                 | current line          | :s/search/repl/\[g\]     |                           |
| "                                                  | between lines N and M | :N,Ms/search/repl/\[g\]  |                           |
| "                                                  | whole buffer          | %s/search/repl/\[g\]     |                           |
| locate matching parentesis (or curly, …)           |                       | %                        |                           |
| regex modifier to confirm before each replace?     |                       | c: s/search/repl/gc      |                           |
| write current file                                 |                       | :w                       |                           |
| save as \<newName\>                                |                       | :w \<newName\>           |                           |
| page up / page down                                |                       | C-j C-k                  |                           |
| insert the content of a file in the current buffer |                       | :r \<filename\>          |                           |
| insert new line                                    | below                 | o                        |                           |
|                                                    | above                 | O                        |                           |
| replace (like replace mode - opposite of insert)   |                       | R                        |                           |
| append at the end of the line                      |                       | A                        |                           |

###### run a command and get the output in the current buffer?

####### Emacs

`C-u M-! <shell-command>`

####### fix error when installing spacemacs: "No such file or directory, evil"?

May be a simply missing gpg elpa key:

``` bash
gpg --homedir ~/.emacs.d/elpa/gnupg --receive-keys 066DAFCB81E42C40
```

####### Spacemacs (evil mode)

`SPC u SPC ! <shell-command>`

###### Universal argument in spacemacs (evil mode)?

instead of the traditional `C-u` `SPC u`

###### Project

####### `helm-project-do-ag` how to filter by file types?

- Example, searching for:
  - `*.clj` files
  - containing `defn`

`SPC s a p` `--clojure defn`

####### search and replace in project?

|                          |                      |             |
|--------------------------|----------------------|-------------|
| search string in project | `helm-project-do-ag` | `SPC s a p` |
| edit the search results  |                      | `C-c C-e`   |
| commit the changes       |                      | `C-c C-c`   |

###### SearchAndReplace

####### How to search and replace starting at the cursor position?

``` bash
:.,$s/\vBEFORE/AFTER/gc
```

###### Folding

####### a promising mode?

- hint: `spacemacs/fold-transient-state/evil-close-fold`

###### Misc

####### Exit emacs mode (holy mode) entered by error?

Exit holy mode:

|                            | in holy mode | in evil mode |
|----------------------------|--------------|--------------|
| spacemacs/toggle-holy-mode | `M-m t E e`  | `SPC t E e`  |
|                            |              |              |

######## pipe in table with code block

- create the table in org mode

| x    | l                 |
|------|-------------------|
| cmd1 | cmd               |
| cmd2 | cmd \<pipe\> cmdx |

- copy and pase the table in a code block and add the missing pipes:

  ``` bash
  | x    | l               |
  |------+-----------------|
  | cmd1 | cmd             |
  | cmd2 | cmd | cmdx      |
  ```

######## TODO org mode how to use pipes in tables? \[0%\]

######### TODO using contants?

| name | value |
|------|-------|
| c    | \$c   |
| pi   | \$pi  |
| eps  | \$eps |

######### TODO macros?

######### TODO latex?

######### TODO html?

######### TODO compute cells values ?

###### twbs export html

Controlling html output?

``` bash
#+OPTIONS: num:5 whn:2 toc:4 H:6
And to set these via your publish configuration using the org-publish-project-alist, the options would be :section-numbers, :headline-levels and :with-toc.

The above options are described in the export settings section of the orgmode manual. This component introduces a new setting whn for per document, and :with-headline-numbers for publish config, which controls the display of section numbers. To disable, set to nil, to enable, set to t, and to control depth of display, use a whole number.
```

from: <https://github.com/marsmining/ox-twbs>

###### easy templates?

from: <http://orgmode.org/manual/Easy-Templates.html#Easy-Templates>

|     |                                     |
|-----|-------------------------------------|
| s   | `#+BEGIN_SRC ... #+END_SRC`         |
| e   | `#+BEGIN_EXAMPLE ... #+END_EXAMPLE` |
| q   | `#+BEGIN_QUOTE ... #+END_QUOTE`     |
| v   | `#+BEGIN_VERSE ... #+END_VERSE`     |
| c   | `#+BEGIN_CENTER ... #+END_CENTER`   |
| l   | `#+BEGIN_LaTeX ... #+END_LaTeX`     |
| L   | `#+LaTeX:`                          |
| h   | `#+BEGIN_HTML ... #+END_HTML`       |
| H   | `#+HTML:`                           |
| a   | `#+BEGIN_ASCII ... #+END_ASCII`     |
| A   | `#+ASCII:`                          |
| i   | `#+INDEX: line`                     |
| I   | `#+INCLUDE: line`                   |

###### Babel

####### "eval is disabled for shell"

######## add to your init file

**use `shell` and not `sh`**

``` elisp
  (org-babel-do-load-languages
  'org-babel-load-languages
  '(
  (js         . t)
  ;; (sh         . t)
  (emacs-lisp . t)
  (shell      . t)
  (clojure    . t)
))
```

######## in the org mode file

``` example
#+BEGIN_SRC sh
f() { echo "I'm f!" ; }
export -f f
bash -c f
#+END_SRC
```

######## stop emacs

######## remove the folder `~/.emacs.d/elpa/org-plus-contrib-*`

######## start emacs

######## try to eval with `C-c C-c`

###### Spacemace: disable mouse under termux ?

- in your `defun dotspacemacs/user-config ()` :
- add `(xterm-mouse-mode 0)`

##### install emacs25 on ubuntu16.04?

``` bash
cd
mkdir emacs25.install
cd emacs25.install
# install preReqs
sudo apt install build-essential checkinstall
# install build deps (same for emacs24 or 25)
sudo apt-get build-dep emacs24
# Download emacs25 src
wget http://ftp.igh.cnrs.fr/pub/gnu/emacs/emacs-25.1.tar.{xz,xz.sig}
keyId=7C207910
keyFingerprint='28D3 BED8 51FD F3AB 57FE F93C 2335 87A4 7C20 7910'
gpg --keyserver keyserver.ubuntu.com --recv "${keyId}"
gpg --list-keys --with-fingerprint "${keyId}" | tr -s ' ' | grep "${keyFingerprint}"
# build
cd emacs-25.1
./configure
make
# install
sudo checkinstall
```

##### Org-Mode

###### key binding to insert a code block?

- Type:

`<s>`

- Then complete (eg: `M-/`)

###### How to track time spen on TODO STARTED DONE?

- start clock in with: org-clock-in
- stop clock with : org-clock-out
- when you pass the task as DONE: org mode will inster the total time
  spent

####### Text

######## Less

######### how to search for a tab ?

Enter a literal tab with: `CTRL-v TAB`.

######## Tail

######### skip the N first lines of input with tail?

``` bash
seq 10 | tail -n +2
#> 2
#> 3
#> 4
#> 5
#> 6
#> 7
#> 8
#> 9
```

###### Package managers

| distrib    | pkg manager | no sudo          | inst                     | inst ver          | list all installed          | list all installed w ver         | list avail vers of pkg           | list files of pkg | rm                           | update list of pkg |
|------------|-------------|------------------|--------------------------|-------------------|-----------------------------|----------------------------------|----------------------------------|-------------------|------------------------------|--------------------|
| `alpine`   | `apk`       |                  | `add`                    | `add <pkg>=<ver>` | `info`                      | `apk info <pipe> xargs apk info` | `apk info <pkg>`                 | `apk -L $p`       |                              |                    |
| `python`   | `pip`       | `--user`         | `install`                |                   | `ls`                        |                                  |                                  |                   | `?`                          |                    |
| `node`     | `npm`       | `--global`       | `install`                |                   | `ls`                        |                                  |                                  |                   | `?`                          |                    |
| `perl`     | `cpan`      | `?`              | `install`                |                   | `cpan -a`                   |                                  |                                  |                   | `?`                          |                    |
| `debian`   | `aptitude`  | `?`              | `install`                |                   | `dpkg -l`                   |                                  |                                  | `dpkg -L $p`      | `purge`                      |                    |
| `debian`   | `apt`       | `?`              | `install`                |                   | `dpkg -l`                   |                                  | `apt-cache policy $pkg`          |                   | `apt purge`                  |                    |
| `rhel`     | `yum`       | `?`              | `install`                |                   | `rpm -qa`                   |                                  | `yum --showduplicates list $pkg` |                   | `?`                          |                    |
| `groovy`   | `sdk`       | `?`              | `install`                |                   | `?`                         |                                  |                                  |                   | `?`                          |                    |
| `ruby`     | `gem`       | `--user-install` | `install`                |                   | `?`                         |                                  |                                  |                   | `?`                          |                    |
| `nix=`     |             |                  | `nix-env -i -v "${pkg}"` |                   | `nix-env -qa --description` |                                  |                                  |                   | `nix-env --uninstall "$pkg"` |                    |
| `opensuse` | `zypper`    | `?`              | `install` or `in`        |                   |                             |                                  |                                  |                   | `remove` or `rm`             | `ref` or `refresh` |
|            |             |                  |                          |                   |                             |                                  |                                  |                   |                              |                    |

####### find which package manager is used on this machine?

``` bash
#!/usr/bin/env bash
while read p; do $p --version &> /dev/null && echo $p ; done <<< $'yum\napt\napk'
```

####### apk

######## equivalent of apt-file search?

###### Software packages

Top level sections as per the 'Section' attribute of
`aptitude show <pkg>`.

####### Admin

######## Tmux

######### how do i detach other client when reattach to session?

``` bash
tmux -2 a -dt 0
```

######### create a new session specifying the name?

``` bash
# create a session named "net'
tmux -2 new-session -s net
```

######### reload .tmux.conf?

``` bash
tmux source-file ~/.tmux.conf
```

######### bindings to install plugins?

``` bash
<prefix> + I
```

Note: After an tmux you may need to upgrade plugins too
<span class="spurious-link" target="bindings to upgrade plugins?">*see
upgrading*</span>.

######### bindings to upgrade plugins?

- update plugins: ~\<prefix\> + U
- remove plugins not on the list: `<prefix> + alt + u`

######### use another shell as the default (ex: zsh instead of bash)

In the tmux config file (example: `$HOME/.tmux.conf`)

``` bash
set -g default-command /usr/local/bin/zsh
```

######## Zip

######### list content of a zip file from stdin?

``` bash
curl file://$(pwd)/dir.zip | bsdtar -xvf-
#> % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
#> Dload  Upload   Total   Spent    Left  Speed
#> 100  1964  100  1964    0     0  43.5M      0 --:--:-- --:--:-- --:--:-- 43.5M
#> x dir/
#> x dir/2/
#> x dir/2/5/
#> x dir/2/5/data
```

######## Apt-get

######### dpkg show all installed files of a .deb?

``` bash
dpkg -L jenkins
```

######### apt-get: what package provide this file?

``` bash
apt-get install apt-file
apt-file update
apt-file find <file>
```

######### fix a broken state ?

``` bash
sudo apt-get install --fix-broken
```

######### install a specific version?

``` bash
apt-get install my-lib-java=2016.03.30-79 my-lib=2016.03.30-79
```

######### show version that a package can be upgraded to?

``` bash
apt-cache policy google-chrome-stable
```

######### customize output of dpkg -l?

``` bash
dpkg-query --show --showformat='${Package}\n'
```

######### Alternative

########## rebuild alternative for a particular package?

Note: there's problably a better way :) But this had worked:

``` bash
sudo aptitude purge openjdk-8-jdk
sudo aptitude install openjdk-8-jdk
```

######## Rpm

######### list files installed by a package?

``` bash
rpm -ql [packageName]
```

######### list only names of packages?

``` bash
rpm -qa --qf "%{NAME}\n"
```

######## Ps

########## list all processes, show only pids?

``` bash
ps ax -o pid=
#> 3409
#> 3413
#> 3417
```

########## ps: List processes with their elapsed running time ?

``` bash
ps a   -o pid,state,tname,time,etime,command
#> PID S TTY          TIME     ELAPSED COMMAND
#> 8728 S pts/2    00:00:02       48:45 -zsh
#> 1248 R pts/2    00:00:00       00:00  \_ ps af -o pid,state,tname,time,etime,command
#> 23774 R pts/0    00:16:13       25:50 sha256sum
```

######## SeLinux

######### status/enable/disable selinux?

``` bash
# with the selinux-utils pkg:
# for example on debian like systems:
aptitude install selinux-utils
# get selinux status
getenforce
# enable
setenforce 1
# disable
setenforce 0
```

######## Dd

######### Typical dd invocation to copy a partition disk ?

``` bash
dd if=/dev/ad0 of=/dev/ad1 bs=64M conv=noerror
```

######### Show progress with dd?

``` bash
dd if=/dev/sda of=/dev/sdb status=progress
```

######## Systrace

######### How to cp with a progress bar using strace?

Adapted from:
<https://chris-lamb.co.uk/posts/can-you-get-cp-to-give-a-progress-bar-like-wget>

``` bash
:                                        \                                                                                                                                                                 15:23:48
&& size=$(stat --format='%s' big)        \
&& size=$((size / (1024 * 1024) ))       \
&& { strace -ewrite cp big big2 2>&1 ; } \
   | tee ~/tmp/cp.out                    \
   | pv -l -s $size                      \
   > /dev/null  \
;
```

######## Security

######### Other

########## list recent ssh connection on a host?

``` bash
last
```

######### SeLinux

######### status/enable/disable selinux?

``` bash
# with the selinux-utils pkg:
# for example on debian like systems:
aptitude install selinux-utils
# get selinux status
getenforce
# enable
setenforce 1
# disable
setenforce 0
```

######### User/groups management

######### Users's group management command

|              |                        |        |                            |                                                         |
|--------------|------------------------|--------|----------------------------|---------------------------------------------------------|
| Subject      | Action                 | Object | Command                    | Notes                                                   |
| user         | add to                 | group  | `sudo usermod -aG $g $u`   |                                                         |
|              | list                   | groups | `group $u`                 |                                                         |
|              | rm from                | group  | `sudo gpasswd -d  $u $g`   | ****beware the reversed args from the previous cmd!**** |
|              |                        |        | `sudo deluser $u $g`       |                                                         |
| user's group | refresh without logout |        | `#TODO`                    |                                                         |
| group        | add                    |        | `sudo groupadd $g`         |                                                         |
|              | rm                     |        | `groupdel $g`              |                                                         |
|              | add with uid           |        | `sudo groupadd -g $gid $g` |                                                         |

sudo groupadd \$g

sudo groupadd -g \$gid \$g

####### Graphics

######## Imagemagick

######### how to change the quality of a jpeg image?

``` bash
convert input.png -quality 75 output.jpg
```

######## Ffmpeg

######### How to get only the 1st n minutes of videos?

``` bash
set -- i.mp4
ffmpeg -i "$1" -ss 0 -t 60 -c copy "${1/./.prev.}"
```

######### Record desktop?

Depends on the OS. see <https://trac.ffmpeg.org/wiki/Capture/Desktop>

########## linux

ffmpeg -video<sub>size</sub> 1024x768 -framerate 25 -f x11grab -i
:0.0+100,200 output.mp4

########## windows

########### directshow

ffmpeg -f dshow -i video="screen-capture-recorder" output.mkv

########### built-in gdi screengrabber

############ all displays

ffmpeg -f gdigrab -framerate 30 -i desktop output.mkv

############ region

ffmpeg -f gdigrab -framerate 30 -offset<sub>x</sub> 10
-offset<sub>y</sub> 20 -video<sub>size</sub> 640x480
-show<sub>region</sub> 1 -i desktop output.mkv

############ window

ffmpeg -f gdigrab -framerate 30 -i title=Calculator output.mkv

############ hw encoding

ffmpeg -f gdigrab -framerate 30 -i desktop -c:v h264<sub>nvenc</sub> -qp
0 output.mkv

``` shell
ffmpeg -i output2.m4v -vf "scale=(trunc(iw/4)*4)/4:(trunc(ih/4)*4)/4" video.mp4
```

########## lossless recording

ffmpeg -video<sub>size</sub> 1920x1080 -framerate 30 -f x11grab -i :0.0
-c:v libx264rgb -crf 0 -preset ultrafast -color<sub>range</sub> 2
output.mkv

####### Math

######## Bc

######### float precision?

``` bash
echo 'scale=2 ; 1/3' | bc -l
```

####### Net

######## General

######### Count all current tcp connection on linux host?

``` bash
wc -l /proc/net/tcp
```

######### List all tcp connections on a linux host?

``` bash
ss
# or
netstat
```

######### List all ssh connections on a linux host?

``` bash
ss | grep ssh
```

######## Netcat

######### simple web server with netcat?

``` bash
while true; do nc -l 8989 <<< "Hi! the time is now $(date)"; done
```

######## Ssh

######### How to check the **actual** configuration of a sshd server?

check the **actual** configuration of the dst server with: `ssh sshd -T`

######### Ssh Tunnels

########## ssh tunnels explained

<https://unix.stackexchange.com/questions/115897/whats-ssh-port-forwarding-and-whats-the-difference-between-ssh-local-and-remot>

\[\[./img/ssh-tunnels-explained.png\]\[img\]
[img2](./img/ssh-tunnels-explained2.png)

########## ssh reverse tunnel ?

``` bash
# from the target machine:
ssh -R 2210:localhost:22 bserver.outside.com
```

from: <https://toic.org/blog/2009/reverse-ssh-port-forwarding/>

########## ssh tunnel example?

``` bash
localPort=5555                              \
remotePort=5555                             \
sshStr=jenkins@jenkins-deploy.fircosoft.net \
  bash -c 'ssh -N  -f -L ${localPort}:localhost:${remotePort} ${sshStr}'
```

########## ssh tunnel socks "channel 2: open failed: administratively prohibited: open failed"

- make sure the destination ssh server has config in
  `/etc/ssh/sshd_config`:

`AllowTcpForwarding all=q
        =PermitOpen any`

- check the **actual** configuration of the dst server with:
  `ssh sshd -T`

######### Passwordless and keyless ssh login

########## ssh without password or key?

``` bash
# remove password for user
passwd -d user
# sshd: allow empty password
sed -r 's/#(PermitEmptyPasswords) no/\1 yes/' -i.bak /etc/ssh/sshd_config
# allow login with passwords
sed -r                                       \
    -e 's/#(PasswordAuthentication yes)/\1/' \
    -i /etc/ssh/sshd_config                                                                          \
```

########## ssh root without password or key?

``` bash
passwd -d root                               \
&& sed -r                                    \
   -e 's/#(PermitEmptyPasswords) no/\1 yes/' \
   -e 's/#(PasswordAuthentication yes)/\1/'  \
   -e 's/#(PermitRootLogin).*$/\1 yes/'      \
   -i /etc/ssh/sshd_config                   \
```

- dockerfile:

  ``` bash
  FROM alpine
  RUN apk update && apk add openssh-server openssh-keygen
  RUN ssh-keygen -A
  CMD passwd -d root                                                                    \
      && sed -r                                                                         \
          -e 's/#(PermitEmptyPasswords) no/\1 yes/'                                     \
          -e 's/#(PasswordAuthentication yes)/\1/'                                      \
          -e 's/#(PermitRootLogin).*$/\1 yes/'                                          \
          -i /etc/ssh/sshd_config                                                       \
      && egrep 'AllowUsers|PermitRootLogin|PermitEmptyPasswords|PasswordAuthentication' \
               /etc/ssh/sshd_config                                                     \
      && /usr/sbin/sshd -D
  ```

########## working conf for openssh 7.1 on alpine?

``` bash
HostKey /etc/ssh/ssh_host_rsa_key
HostKey /etc/ssh/ssh_host_ecdsa_key
HostKey /etc/ssh/ssh_host_ed25519_key
SyslogFacility AUTHPRIV
PermitRootLogin yes
AuthorizedKeysFile      .ssh/authorized_keys
PermitEmptyPasswords yes
PasswordAuthentication yes
ChallengeResponseAuthentication no
GSSAPIAuthentication yes
GSSAPICleanupCredentials no
UsePAM yes
X11Forwarding yes
UsePrivilegeSeparation sandbox          # Default for new installations.
AcceptEnv LANG LC_CTYPE LC_NUMERIC LC_TIME LC_COLLATE LC_MONETARY LC_MESSAGES
AcceptEnv LC_PAPER LC_NAME LC_ADDRESS LC_TELEPHONE LC_MEASUREMENT
AcceptEnv LC_IDENTIFICATION LC_ALL LANGUAGE
AcceptEnv XMODIFIERS
Subsystem       sftp    /usr/libexec/openssh/sftp-server
```

######### generate public private key pair

``` bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

######### ssh or scp in a script without entering password ?

``` bash
expect -c "
   spawn scp login@somehost.com:/somefile .
   expect yes/no { send yes\r ; exp_continue }
   expect password: { send password\r }
   expect 100%
   exit
"
```

######### get public key from private key ?

``` bash
ssh-keygen -y -f ~/.ssh/id_rsa
```

######### Disable host verification?

########## for one session

``` bash
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no peter@192.168.0.100
```

<http://linuxcommando.blogspot.co.uk/2008/10/how-to-disable-ssh-host-key-checking.html>

########## for all sessions:

in `~/.ssh/config`:

``` bash
Host 192.168.0.*
  StrictHostKeyChecking no
  UserKnownHostsFile=/dev/null
```

########## for all sessions and all hosts:

in `~/.ssh/config`:

``` bash
StrictHostKeyChecking no
UserKnownHostsFile=/dev/null
```

######### copy pub key to remote authorized<sub>keys</sub>?

``` bash
ssh-copy-id <user>@<host>

```

######### workaround for a ssh slow login on a particular server?

Use port forwarding to keep the connection open

``` bash
remoteUser=user
remoteHost=server.com
remoteSshPort=22
# choose a free port on the client
localPort=5555
# port forward the remote host ssh
ssh -N  -f -L ${localPort}:localhost:${remoteSshPort} ${remoteUser}@${remoteHost}
# use the local port forward
ssh -p ${localPort} ${remoteUser}@${remoteHost}
# close the port forwarding
fuser -k -n tcp 5555
```

######### copy between two ssh hosts without intermediary copy?

``` bash
:                                         \
&& srcDir=srcdir                          \
&& dstSsh=user@host                       \
&& dstParentDir=/tmp                      \
&& tar cav "$srcDir"                      \
   | gzip                                 \
   | ssh "$dstSsh"                        \
       "                                  \
         bash -euo pipefail -xvc '        \
           gunzip                         \
           | tar -xvf- -C ${dstParentDir} \
         '                                \
       "                                  \
&&                                        \
:
```

######### disable host has in known<sub>hosts</sub>?

``` bash
HashKnownHosts=false
```

######### Non interactive sftp session with non pubkey password?

``` bash
sshpass -e -- sftp -oBatchMode=no -b - user@host << !
      get /path/to/file
      bye
  !
```

######### How to view actual ssh config (system wide + user config + cmdline/env)?

``` bash
ssh -G localhost
#> hostname localhost
#> port 22
#> addressfamily any
#> batchmode no
#> (...)
```

######### Sshfs

########## how to mount remote fs with sshfs?

- mount:

``` bash
# usage
sshfs USERNAME@HOSTNAME_OR_IP:/REMOTE_PATH LOCAL_MOUNT_POINT SSH_OPTIONS
# example
sshfs sessy@mycomputer:/remote/path /local/path -C -p 9876 -o allow_other
```

<https://wiki.archlinux.org/index.php/SSHFS>

- umount: <span class="spurious-link"
  target="how to umount a mounted sshfs?">*how to umount a mounted sshfs?*</span>

########## how to umount a mounted sshfs?

``` bash
fusermount -u  /path/to
```

########## sshfs with autossh?

From: <https://wiki.gentoo.org/wiki/Autossh>

``` bash
         sshfs -o reconnect,compression=yes,transform_symlinks,ServerAliveInterval=45,ServerAliveCountMax=2,ssh_command='autossh -M 0' username@server:/ /mnt/remote"
Removal
```

######### alpine ssh send<sub>pubkeytest</sub>: no mutual signature algorithm ?

Depending on the actual algorithm avail on the server, a workaround
would look like: ssh -o PubkeyAcceptedKeyTypes=+ssh-rsa \$server

######## Openssl

######### SslCerts

########## generate a self certificate for localhost (without prompt)?

from: <https://letsencrypt.org/docs/certificates-for-localhost/>

``` bash
     openssl req -x509 -out localhost.crt -keyout localhost.key \
-newkey rsa:2048 -nodes -sha256 \
-subj '/CN=localhost' -extensions EXT -config <( \
 printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
```

########## How to add root cert to an Ubuntu install?

``` bash
cat <<EOF''
:                                            \
&& set -xveuo pipefail                       \
&& certFile=<pathToCertFile>.crt             \
&& d=/usr/local/share/ca-certificates        \
&& sudo cp $certFile $d                      \
&& sudo update-ca-certificates               \
&& sudo systemctl daemon-reload              \
&& sudo systemctl restart docker             \
&&                                           \
:
EOF
) \
| bash
```

########## best explaination of "everything derive from the root ca key"?

<https://serverfault.com/questions/306345/certification-authority-root-certificate-expiry-and-renewal>

########## Generate a self signed ca cert and key, and a cert and key for a how that works on the command line and chrome?

from:
<https://stackoverflow.com/questions/7580508/getting-chrome-to-accept-self-signed-localhost-certificate>
Response: With only 5 openssl commands, you can accomplish this.

``` bash
       ######################
# Become a Certificate Authority
######################

# Generate private key
openssl genrsa -des3 -out myCA.key 2048
# Generate root certificate
openssl req -x509 -new -nodes -key myCA.key -sha256 -days 825 -out myCA.pem

######################
# Create CA-signed certs
######################

NAME=mydomain.com # Use your own domain name
# Generate a private key
openssl genrsa -out $NAME.key 2048
# Create a certificate-signing request
openssl req -new -key $NAME.key -out $NAME.csr
# Create a config file for the extensions
>$NAME.ext cat <<-EOF
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
subjectAltName = @alt_names
[alt_names]
DNS.1 = $NAME # Be sure to include the domain name here because Common Name is not so commonly honoured by itself
DNS.2 = bar.$NAME # Optionally, add additional domains (I've added a subdomain here)
IP.1 = 192.168.0.13 # Optionally, add an IP address (if the connection which you have planned requires it)
EOF
# Create the signed certificate
openssl x509 -req -in $NAME.csr -CA myCA.pem -CAkey myCA.key -CAcreateserial \
-out $NAME.crt -days 825 -sha256 -extfile $NAME.ext
To recap:

Become a CA
Sign your certificate using your CA cert+key
Import myCA.pem as an "Authority" (not into "Your Certificates") in your Chrome settings (Settings > Manage certificates > Authorities > Import)
Use the $NAME.crt and $NAME.key files in your server
Extra steps (for Mac, at least):

Import the CA cert at "File > Import file", then also find it in the list, right click it, expand "> Trust", and select "Always"
Add extendedKeyUsage=serverAuth,clientAuth below basicConstraints=CA:FALSE, and make sure you set the "CommonName" to the same as $NAME when it's asking for setup
You can check your work to ensure that the certificate is built correctly:

openssl verify -CAfile myCA.pem -verify_hostname bar.mydomain.com mydomain.com.crt
```

######## Rsync

######### how to specify the port in rsync?

``` bash
rsync -rvz -e 'ssh -p 2222' --progress --remove-sent-files ./dir user@host:/path
```

######### how to exactly copy a local directory to a remote host (remove extra remote file if necessary) and back ?

``` bash
# local -> remote
rsync -rvza --progress --delete workspace/ jenkins@localhost:/home/jenkins/workspace
# remote -> local
rsync -rvza --progress --delete jenkins@localhost:/home/jenkins/workspace/ workspace


```

######### rsync and trailing slash behavior?

Only matter for the source dir:

- if there is a trainling slash, means: copy the content of the dir
- without trailing slash mean copy the directory

######## Openvpn

######### list and connect with openvpn from cli?

########### with nmanager

``` bash
# list the connections
nmcli con show
# get the nome of a connection
con=openvpn
nmcli con up id $con
```

######## Dns

######### Get ip from hostname?

``` bash
host google.com
#> google.com has address 172.217.17.78
```

######### Get hostname from ip?

``` bash
nslookup $ip domain.com
#> <ip> name = <domain>
```

######## Network analysis

######### Ngrep

########## Ngrep example?

``` bash
ngrep -l -W byline -d eth0 src host.com  and dst port 80
  #               `-l` Line buffered output
  #        `-W byline` Output suitable for HTTP
  #          `-d eth0` Listen on interface eth0
  #     `src host.com` Match only incomming traffic from host.com
  #           `dst 80` Match only traffic going to port 80
```

####### Misc

######## VirtualBox

######### Windows host

########## Linux Guest

########### How to disable HyperV so VBox can run correctly?

########### How to correctly install guestAdditon on ubuntu22.04?

``` bash
   # First how to check if installed properly:
 for i in status status-kernel status-user; do sudo /sbin/rcvboxadd $i ; done
   # the vobxadd installer needs:
sudo apt-get install build-essential gcc make perl dkms
#  not finished yet ! ;)
```

########### How to correctly install guestAdditon on debian12?

############ Hint1

``` bash
# First how to check if installed properly:
for i in status status-kernel status-user; do sudo /sbin/rcvboxadd $i ; done

# the vobxadd installer needs:
# the vbox installer *may* need
sudo apt-get install dkms build-essential linux-headers-`uname -r`

# if  status-kernel report a missing vboxsf module
#   then try:
modprobe vboxsf
# and status-kernel again
# if working, permanently load the module by adding
# vboxsf to /etc/modules

# after that at boot, vbox seems to be ok, at least acording to status status-kernel status-user
```

############ Hint2

Also it seems to help to uninstall vbox (with
/usr/sbin/vbox-uninstall-guest-additions) And reinstall it again

############ Hint3

Beware of not enought video memory, it can impact the resolution of the
vm

####### Utils

######## Comm

######### comm summary?

`comm <(echo $'a\nb') <(echo $'a\nc')`

| 1   | 2   | 3   |
|-----|-----|-----|
|     |     | a   |
| b   |     |     |
|     | c   |     |

- column1: only in FILE1
- colukn2: only in FILE2
- column3: in FILE1 and FILE2

######### binary to compare the content of files (all in a but not in b, etc)?

`comm`

######## Find

######### find files modified in the last x minutes

``` bash
find . -cmin -5
```

######### find files modified in the last x days

``` bash
find . -ctime -5
```

######### handle filenames with spaces ?

``` bash
find . -maxdepth 1 -print0 | while read -d $'\0' d ; do echo $d ; done
```

<http://www.cyberciti.biz/tips/handling-filenames-with-spaces-in-bash.html>

######### sort files by modified date?

``` bash
find -type f -printf '%T@ %p\0' |
sort -zk 1nr |
sed -z 's/^[^ ]* //' | tr '\0' '\n'
```

######### find files bigger than x MBytes?

``` bash
find . -size +500M -exec l {} \;
```

######### find filename with regex?

``` bash
find . -type f -regextype egrep -regex '.*\.(msg|txt)$$'
```

######### find with logical or?

``` bash
-name "*.xyz" OR ( -name "*.abc" AND -exec ... )
```

######## Grep

######### Non capturing group?

Use: -(?:)-

``` bash
echo foo bar baz \
| egrep '(?:foo)? bar'
foo bar baz
```

######### cheat sheet

|                                 | short opt | long opt               |
|---------------------------------|-----------|------------------------|
| print file name with match      | `-H`      | `--with-filename`      |
| print only filename for matches | `-l`      | `--files-with-matches` |

######### Character class for blanks?

``` bash
jq -nRr '"1: \t", "2:  "' | egrep '[[:space:]]' | jq -R .
#> "1: \t"
#> "2:  "
```

######### match pattern on multiples lines?

``` bash
seq 4  | grep -Pz '1\n2'
#               ||
#               |+-------+ treat input as a set of lines  null terminated
#               +-----------+ Perl regex mode
#> =1=
#> =2=
#>  3
#>  4
```

######## Tr

######### remove all non printable characters from a file with tr ?

``` bash
tr -cd '[:print:]' < file > newfile
```

######## Nohup

######### run nohup?

``` bash
nohup bash -c "(time bash executeScript 1 input fileOutput > scrOutput) &> timeUse.txt" &
```

######## MoreUtils

######### read / process / write the same file ?

- Use: `sponge`
- `sponge` will read stdin and write to specified file. Unlike a shell
  redirect it will soaks all its input before writing the output file.

``` bash
sort f | sponge f
```

######### instead of xxx use moreutils yyy?

| cmd       | insteadof                              | use                                                           |
|-----------|----------------------------------------|---------------------------------------------------------------|
| `chronic` |                                        | `chronic backup_script.sh`                                    |
| `sponge`  | `sort filename` \| `uniq/ > temp`      | `sort filename` \| `uniq \vert sponge filename`               |
|           | `mv temp filename`                     |                                                               |
| `isutf8`  |                                        | `isutf8 filename`                                             |
| `ifne`    |                                        | `./script.sh` \| `ifne less`                                  |
| `pee`     | `./script.sh` \| `tee output1 output2` | `./script.sh` \| `pee 'grep pattern1' 'gzip -c > output.gz'_` |
| `ifdata`  | `<parsing ifconfig>`                   |                                                               |
| `zrun`    | `diff <(zcat one.gz) <(zcat two.gz)`   | `zrun diff one.gz two.gz`                                     |
| `ts`      |                                        | `$ { echo "One" ; sleep 3s ; echo "Two" ; }` \| `ts`          |
| `errno`   |                                        | `$ errno 98`                                                  |
| `vipe`    |                                        | `command1` \| `vipe` \| `command2`                            |
| `vidir`   |                                        | `vidir directory/`                                            |
| `combine` | `comm -12 file1 file2`                 | `combine file1 and file2`                                     |
|           | `comm -23 fileA fileB`                 | `combine fileA not fileB`                                     |
|           | `sort file1 file2` \| `uniq`           | `combine file1 or file2`                                      |
|           | `sort file1 file2` \| `uniq --unique`  | `combine file1 xor file2`                                     |

See:
<http://devblog.nestoria.com/post/110168998173/moreutils-basic-unix-tools-that-ought-to-be>

######## Stat

######### Custom format with newlines?

``` bash
# use --printf to insert the code sequences
stat --printf='%U\n%G\n%C\n%z\n' /var/log/secure
```

######## Tar

######### list the content of a remote tgz without intermediary files?

``` bash
curl http://url/to/file.tgz | tar tzfv -
```

######### send tar compressed archive to stdout?

``` bash
seq 3 > x && tar czv x > x.tgz
```

######### recompress without intermediary files?

don't know how to do it with regular target but there's a solution with
bsdtar

######### tar: archive files name coming from stdin?

``` bash
find a -type f | tar cvf a.tgz -T -
```

######### Specify arbitrary order of files in tar file?

######## Bsdtar

######### recompress without intermediary files?

``` bash
bsdtar -cJf - @- < a.tar.lzo > a.tar.xz
```

######## Tree

######### print tree with unicode characters?

``` bash
tree -N
```

######## Xargs

######### run a cmd on each line of stdin with xargs?

``` bash
echo 'a
b
c' | xargs -I {} ./f {}
```

######### use bash function?

``` bash
f() { bc; }
echo '1 * 1
2 * 2
3 * 3'                                            \
| xargs -i echo "$(declare -f f) ; echo '{}' | f" \
| bash
```

######## Zip

######### unzip a single file from archive?

``` bash
unzip -p myarchive.zip path/to/zipped/file.txt >file.txt
```

######### compress dir recursive?

######### compress dir but exclude a directory ?

``` bash
zip -9 -r --exclude=*.svn*  foo.zip [directory-to-compress]
```

``` bash
zip -r archive.zip /dir
```

####### Web

######## Curl

######### follow redirects?

``` bash
curl -L <url>
```

######### post data from stdin?

``` bash
cat data.json | curl -H "Content-Type: application/json" -X POST -d @- http://api
```

######## Wget

######### recursively download for example nexus ?

``` bash
wget --header="Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"                  \
     --header="User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko/20100101 Firefox/48.0" \
     --recursive                                                                                         \
     -e robots=off                                                                                       \
     --no-parent                                                                                         \
     http://nexus-url/x/y/z
```

######### equivalent of curl -sS?

######## Nginx

######### Check config syntax?

``` bash
/usr/nginx/sbin/nginx -t -c /usr/nginx/conf/nginx.conf
/usr/nginx/sbin/nginx -t
```

######## Lynx

######### html to text by piping to lynx?

``` bash
curl -L --fail -sS 'https://duckduckgo.com?q=lynx' \
| lynx --dump --stdin
#> [...]
#>
#> [1]DuckDuckGo
#> lynx________________ [BUTTON Input] (not implemented)_ S
#> REFRESH(0 sec): [2]file://localhost/html?q=lynx
#>
#> You are being redirected to the non-JavaScript site.
#> [...]
```

####### X11

######## NxClient

######### keyboard issue when connecting with nx ?

Try:

``` bash
setxkbmap -model evdev -layout us
```

###### Hardware

####### Sound

######## Troubleshoot sound in Linux/Ubuntu ?

Source:
<https://help.ubuntu.com/community/SoundTroubleshootingProcedure>

``` bash
( set -xv && killall pulseaudio; pulseaudio -k  ; rm -r ~/.config/pulse/* ; rm -r ~/.pulse* )
sleep 10
pulseaudio --start
```

####### Ubuntu/Debian change the machine uuid (useful when the dhcp id is derived from it) ?

from:
<https://bugs.launchpad.net/ubuntu/+source/cloud-init/+bug/1563951>

``` bash
# once per instance remove /etc/machine-id and run systemd-machine-id-setup
```

###### Sysadmin

####### System Services (systemctl, …)

######## Systemd

######### systemd / systemV cheatsheet

from: <https://fedoraproject.org/wiki/SysVinit_to_Systemd_Cheatsheet>

| service                            | Sysvinit Command                   | Systemd Command                                         |
|------------------------------------|------------------------------------|---------------------------------------------------------|
| stop                               | `service ${name} stop`             | `systemctl stop        ${name}`                         |
| start                              | `service ${name} start`            | `systemctl start       ${name}`                         |
| restart                            | `service ${name} restart`          | `systemctl restart     ${name}`                         |
| reload conf                        | `service ${name} reload`           | `systemctl reload      ${name}`                         |
| restart if service already running | `service ${name} condrestart`      | `systemctl condrestart ${name}`                         |
| status                             | `service ${name} status`           | `systemctl status      ${name}`                         |
| enable                             | `chkconfig ${name} on`             | `systemctl enable     ${name}`                          |
| disable                            | `chkconfig ${name} off`            | `systemctl disable    ${name}`                          |
| isEnabled?                         | `chkconfig ${name}`                | `systemctl is-enabled ${name}`                          |
| reload when created or modififeds  | `chkconfig ${name} --add`          | `systemctl daemon-reload`                               |
| list all services                  | `ls /etc/rc.d/init.d/`             | `systemctl`                                             |
|                                    |                                    | (or) `systemctl list-unit-files --type=service`         |
|                                    |                                    | (or) `ls /{etc,lib}/systemd/system/*.service`           |
| print levels where this service    | `chkconfig ${name} --list`         | `systemctl list-unit-files --type=service`              |
| is on/off                          |                                    | (or) `ls /etc/systemd/system/*.wants/`                  |
| print graphical mode services      | `chkconfig --list \vert grep 5:on` | `systemctl list-dependencies graphical.target`          |
| print what level of this service   | `chkconfig ${name} --list`         | `ls /etc/systemd/system/*.wants/${serviceName}.service` |

######### follow logs of a particular systemd service?

``` bash
journalctl -fu collectd
```

######### restart network on systemd?

Depends, on recent installation, may work:

``` bash
systemctl restart systemd-networkd
```

######## General Linux

######### Linux reload service config

``` bash
sudo systemctl daemon-reload
```

######## Centos

######### create a new systemd unit file?

``` bash
    # create a new unit file
      (cat <<EOF''
[Unit]
Description=Post docker
After=docker.service

[Service]
Type=oneshot
ExecStart=/usr/bin/chmod 606 /var/run/docker.sock
RemainAfterExit=true

[Install]
WantedBy=multi-user.target

EOF
   ) | sudo tee /etc/systemd/system/multi-user.target.wants/docker-post.service
   # reload
   sudo systemctl daemon-reload
   # check the status
   systemctl status docker-post.service
   # enable at boot
   systemctl enable docker-post.service
```

``` bash
# list all services
systemctl list-unit-files --type=service

# check if a service is running
systemctl status name.service

# enable a service
systemctl enable docker.service

# check if a service is enabled
```

######### the hostname keep coming back at its previous state after each restart?

Try setting the hostanem in `/etc/hostname`

####### User Admin

######## how to add a group to a user ?

``` bash
sudo usermod -aG docker u
```

######## add a user with specific groups ?

``` bash
adduser -G group1,group2 <user>
```

######## get the groups of a user ?

``` bash
groups <user>
```

######## change the shell of a user?

``` bash
usermod -s /bin/bash user
```

######## remove a user?

``` bash
export U=<user>
userdel -r $U
```

######## add a user?

``` bash
adduser <user>
```

######## view login activity?

``` bash
last
```

####### Sudo

######## allow sudo without password for a user?

``` bash
# if there's a sudo group add the user to this group
```

######## execute a cmd as another user?

``` bash
sudo -u <user> /bin/ls -alrth <...>
# WARN! path to binaries must be absolute!
```

####### Devices (hdd,…)

######## eject a cd rom?

``` bash
ejet /dev/cdrom
```

######## how to list all supported FS for mounting?

``` bash
cat /proc/filesystems
```

######## how to fix a screwed nfs mount without rebooting?

TODO: should be completed

- Find the list of process open on the screwed fs:

``` bash
lsof | grep '/path/to/nfs'
```

- kill them
- remount

ref: <http://joelinoff.com/blog/?p=356>

######## Swap

######### manage swap (status, enable, disable)?

``` bash
# status
swapon -s
# alloff
swapoff -a
# allon
swapon -a
```

####### Dns

######## How to query all the entries of a dns server ?

``` bash
set -- domain=mydomain.net
dig +nocmd ${domain} any +multiline +noall +answer
```

####### recover a lost root password at boot with grub

- type some keys at boot to display the menu

- edit the boot options

- change the line

  - that contains: … kerne … quiet splash
  - remove quiet splash
  - add at the end: init=/bin/bash

- boot

- at the prompt:

  ``` bash
  mount -o remount,rw /
  mount -o remount,rw /proc
  passwd
  sync
  ```

- reboot

####### Special files

######## Removed /dev/null how to remake it?

mknod /dev/null c 1 3 chmod 666 /dev/null

###### Terminal

####### Colors

######## simple way to color output with grep?

``` bash
echo -e 'foo\nbar\nbaz'                           \
| GREP_COLOR='01;36' egrep --color=always 'foo|$' \
| GREP_COLOR='01;31' egrep --color=always 'baz|$'
#> foo *colored turquoise*
#> bar
#> baz *colored red*
```

####### Replace capslock by ctrl in console?

######## working also in virtual consoles?

``` bash
#in  /etc/default/keyboard
#replace XKBOPTIONS="" by XKBOPTIONS="ctrl:nocaps"
# then run
run sudo dpkg-reconfigure -phigh console-setup
```

ref: <https://www.emacswiki.org/emacs/MovingTheCtrlKey#toc9>

######## working under X?

``` bash
setxkbmap -option ctrl:nocaps
```

####### replace capslock by ctrl in a terminal under X ?

####### change language keyboard mapping

``` bash
# run
dpkg-reconfigure keyboard-configuration
# or
# edit /etc/default/keyboard:
#   change XKBLAYOUT="us,de,fr,ua,ru" by "us" for example

# for changes to take effect:
service keyboard-setup restart

# it should suffice, but if not:
udevadm trigger --subsystem-match=input --action=change
```

<https://wiki.debian.org/Keyboard>

####### change text mode resolution?

####### paste example?

``` bash
$ paste <(seq 1 3) <(seq 1 3)
1       1
2       2
3       3
```

####### show which key is pressed in a terminal?

- showkey

- if in a ssh session

  ``` bash
  sudo apt install ncurses-examples
  /usr/lib/ncurses/examples/demo_altkeys
  ```

####### get the number of rows and colums?

``` bash
tput lines
tput cols
```

####### Presentation conventions

######## display a command line?

``` bash
`npm install -g jsonresume-theme-kendall`
```

###### Io

####### Disk

######## list files open by a particular process

``` bash
lsof -u jenkins | <grep/cut/jq>
```

######## how to do a simple bind mount?

``` bash
# with mount cmd:
mount --bind /src/path /dst/path

# with /etc/fstab:
/src/path /dst/path none defaults,bind 0 0
```

######## Disks

######### Disks caches

########## how do I clear the disk caches in Linux?

From
<https://www.tecmint.com/clear-ram-memory-cache-buffer-and-swap-space-on-linux/>

``` bash
# clear PageCache only
sync; echo 1 > /proc/sys/vm/drop_caches
# clear dentries and inodes
sync; echo 2 > /proc/sys/vm/drop_caches
# clear page cache, dentries and inodes (not on production!)
sync; echo 3 > /proc/sys/vm/drop_caches
```

######## Images

######### Copy an img file to a disk with bad blocks?

``` bash
sudo ddrescue  -r3 2020-08-20-raspios-buster-armhf-full.img -d -f /dev/sdX ddrescuemapfile
```

####### RemoteFs

######## nfs

######### How to mount a remote nfs drive on a linux host?

``` bash
mount -t nfs {remote_pc_address}:/remote/dir /some/local/dir
```

######### List all nfs share of a remote nfs server?

``` bash
showmount my.nfs.server.com
```

Can be found in package (on debian like): `nfs-common`

####### VirtualFs

######## How to get the load with /proc?

``` bash
cat /proc/loadavg
```

####### Processes

######## How to find how are connected by pipes running processes?

``` bash
# draft - draft - draft - draft - draft - draft - draft - draft - draft - draft -
seq Infinity | sed -r 's/^/> /' | pv -qlL1 > /tmp/o
#> ^Z
#> [1]+  Stopped                 seq Infinity | sed -r 's/^/> /' | pv -qlL1 > /tmp/o
bg
#> [1]+ seq Infinity | sed -r 's/^/> /' | pv -qlL1 > /tmp/o &
tail -f /tmp/o
#> > 1
#> > 2
#> ^C
declare pRe && pRe="$(pgrep -fa '(seq|pv|sed)' | cut -f1 -d' ' | xargs | sed -r -e 's/ /|/g' -e 's/.*/(&1)/')"
lsof  | egrep "$pRe" | egrep -v '^(lsof|grep)' |  egrep '(^C|FIFO)' | tr -s ' ' | tr ' ' '\t' | cut -f 1,2,4,8,9 | sort -k 4,3 | jq -R . | jq -s '. | map(split("\t")) ' | jq -cr 'sort_by(.[3],.[2]) | group_by(.[3])' | jq -cr '.[] | select(length == 2)  | (.[0][0]) as $p1 | (.[1][0]) as $p2 | "\($p2) -> \($p1)"'
#> seq -> sed
#> sed -> pv
# draft - draft - draft - draft - draft - draft - draft - draft - draft - draft -
```

######## Autossh

######### How to keep a ssh sesssion open with autossh?

Exemple from: <https://wiki.gentoo.org/wiki/Autossh>

``` bash
# ssh on port 222, setup a sock proxy on port 999
autossh                         \
    -M 0                        \
    -p 222                      \
    -N                          \
    -D 9999                     \
    -o "ServerAliveInterval 45" \
    -o "ServerAliveCountMax 2" username@myserver
```

####### Completion

######## using bash's autocomplete with zsh?

``` bash
touch cmd && chmod +x cmd
# run bashcompinit
autoload bashcompinit
bashcompinit
# bash's way of saying that cmd can complete with foo or bar or baz:
complete -W 'foo bar baz' cmd
#> ./cmd b<tab><tab> will show "foo" "bar" "baz"
```

######## Copy an existing completion for another command?

- From:
  <https://github.com/zsh-users/zsh-completions/blob/master/zsh-completions-howto.org>

``` bash
compdef cmd1=cmd2
```

###### X

####### copy to system clipboard from the command line?

``` bash
echo a | xclip -selection clipboard
```

####### dual monitor setup: turn off one of the monitor and not the other?

``` bash
# choose one of the monitor with:
xrandr -q
# disbale it
xrandr --output LVDS1 --off
```

####### force X resolution when an external monitor is not detected?

``` bash
# check the current display and resolutions:
xrandr
# calculate the modeline
( export x=1920 y=1080 freq=60 && cvt $x $y $freq)
#> # 1920x1080 59.96 Hz (CVT 2.07M9) hsync: 67.16 kHz; pclk: 173.00 MHz
#> Modeline "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
# take the ouput and feed it to xrandr to create the new modeline:
xrandr --newmode 1920x960_60.00 152.00  1920 2032 2232 2544  960 963 973 996 -hsync +vsync
# add it to the output
xrandr --addmode DP-2 1920x960_60.00
# in monitors setup choose the new reolution
```

####### Fonts

######## List fonts?

``` bash
fc-list
```

####### Gnome

######## How to logout from Gnome with the terminal?

``` bash
gnome-session-quit
```

####### Remote

######## NoMachine NX

######### How to administrate the NX server?

``` bash
sudo /usr/NX/bin/nxserver --status
sudo /usr/NX/bin/nxserver --stop
sudo /usr/NX/bin/nxserver --start
```

####### Xpra

######## xpra quickstart on ubuntu?

``` bash
# On the server ----------------------------------------------------------
## install xpra
sudo aptitude install xpra
## intall xvfb
sudo aptitude install xvfb
## use xvfb instead of xorg:
sudo vim /etc/xpra/xpra.conf
# comment   the line starting with 'xvfb=Xorg'
# UNcomment the line starting with 'xvfb=Xvfb'
## start a session on the display #10 without the deamon (for troubleshooting):
display=10
xpra start --daemon=no :${display}
# on the client ----------------------------------------------------------
## install xpra
sudo aptitude install xpra
# attach to the remote session
display=10
xpra attach ssh/${remoteSshUser}@${remoteSshHost}:${remoteSshPort}/${display}
# On the server ----------------------------------------------------------
## start a test app:
DISPLAY=${display} xeyes
#> xeyes should open on the client...
## now start a bigger app:
DISPLAY=${display} google-chrome
```

####### Window managers

######## Gnome

######### open the network manager (for proxy settings) from the command line?

``` bash
gnome-control-center network
```

######### Gnome 3

########## Gnome Shell

########### how to have cpu,etc montoring in the top bar?

- Install system-monitor gnome extension
- Can search it through gnome shell search (win key)

########### how restart gnome shell?

- `alt-F2`
- `r`

############ Gnome Shell Extensions?

############# how to manage enabling/disabling gnome shell user extensions (command line)?

from:
<https://askubuntu.com/questions/1029376/how-to-enable-and-disable-gnome-extensions-from-command-line>

``` bash
# are all gnome shell user extensions disabled?
gsettings get org.gnome.shell disable-user-extensions
# disable all gnome shell user extensions
gsettings set org.gnome.shell disable-user-extensions true
```

####### Xdg-open

######## choose browser to use with xdg-open?

``` bash
xdg-settings set default-web-browser google-chrome.desktop
```

###### Converting formats

####### Converting human readable \<-\> bytes

On linux, onw way is numfmt

``` bash
echo 1K | numfmt --from=iec
#> 1024
```

More Options here:Q
<https://unix.stackexchange.com/questions/44040/a-standard-tool-to-convert-a-byte-count-into-human-kib-mib-etc-like-du-ls1>

####### convert file format table?

| src   | dst   | command                                                                           |
|-------|-------|-----------------------------------------------------------------------------------|
| `rtf` | `pdf` | `libreoffice --headless --invisible --norestore --convert-to pdf source-file.rtf` |

####### Pdf

######## replace a string in a pdf file ?

``` bash
pdftk file.pdf output uncompressed.pdf uncompress

sed -e "s/ORIGINALSTRING/NEWSTRING/g" <uncompressed.pdf >modified.pdf

pdftk modified.pdf output recompressed.pdf compress
```

<http://stackoverflow.com/questions/9871585/how-to-find-and-replace-text-in-a-existing-pdf-file-with-pdftk-or-other-command>

####### units

To convert many units

###### Locale

####### fix locale config?

######## ubuntu / debian

``` bash
# add to /etc/environnement
LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8

sudo locale-gen "en_US.UTF-8"
sudo dpkg-reconfigure locales

```

**note**:

``` bash

      [warn] /etc/environment has been deprecated for locale information; use /etc/default/locale for LANG=en_US.UTF-8 instead ... (warning).
[warn] /etc/environment has been deprecated for locale information; use /etc/default/locale for LC_ALL=en_US.UTF-8 instead ... (warning).

```

######## centos

``` bash
cat /etc/environment /etc/environment.bak
cat /etc/environment          \
| jq -R .                     \
| jq -sr '
  ["LANG=en_US.utf-10", "LC_ALL=en_US.utf-8"] as $vars
  | if contains($vars) then empty else $vars end
  | join("\n")
  | "echo \"\(.)\"
  | tee -a /etc/environment " ' \
| bash -xeuo pipefail
```

###### Network

####### How to trace all network activity?

`tcpflow`

``` bash
tcpflow -p -c -i eth0 port 80 | grep -oE '(GET|POST|HEAD) .* HTTP/1.[01]|Host: .*'
```

<http://unix.stackexchange.com/questions/6279/on-the-fly-monitoring-http-requests-on-a-network-interface>

####### how to get the ip adresse of the local host ?

**Note**: To be verfied!

``` bash
hostname -I
```

or (?)

``` bash
hostname -I | cut -d' ' -f1
```

####### list open ports?

``` bash
netstat -lntu
```

####### Proxy

######## Request with curl through a proxy over ssh ?

``` bash
remoteHost=remote.host
remoteHostSshPort=22222
# Create socks5 proxy on client machine
ssh -vvv -D 8123 -f -C -N -p 55555 u@localhost
# Request with curl telling him to use the proxy
curl -x socks5h://localhost:8123 http://remote.host.com
# OR
curl --socks5-hostname localhost:8123 http://remote.host.com
```

####### how to list all open ports and their associated processes?

``` bash
sudo netstat -lntp
```

####### Mtu

######## temporary change the mtu of a network interface?

``` bash
ifconfig eth0 mtu 9000
```

####### Wifi

######## Connect to wifi with via command line?

######### Using nmcli

``` bash
# Get the identifier of the  wifi device
nmcli dev status
# here wxxx
# List the wifi access points for this device
nmcli dev wifi list ifname wxxx
# Choose the wifi access point to connect to
# here ssidxxx
# Connect to it with your device
# here the password is passxxx
sudo nmcli dev wifi connect ssidxxx password passxxx ifname wxxx
# check it is working
nmcli dev status
```

###### Compression

####### compress stdin, uncompress to stdout ?

``` bash
|            | cmd                       |
|------------+---------------------------|
| compress   | echo foobarXgzip > msg.gz |
| decompress | zcat msg.gz               |
```

####### Xz

######## compress/decompress stdin with xz?

``` bash
# compress
seq 3 | xz > out.xz
# decompress
cat out.xz | unxz
#> 1
#> 2
#> 3
```

######## decompress stdin with xz?

``` bash

```

###### Fs

####### difference between `/bin`, `/usr/bin`, `/usr/local/bin`?

From:
<https://unix.stackexchange.com/questions/8656/usr-bin-vs-usr-local-bin-on-linux>

- `/bin`: for booting the os (must fit on a small partition)
- `/usr/bin`: Normal binaries installed by the package manager
- `/usr/local/bin`: Was installed after manually compiled (for exemple)

####### Zfs

######## Dedup

######### Size RAM for online dedup ?

A random web page: " For every TB of pool data, you should expect 5 GB
of dedup table data, assuming an average block size of 64K. "

######### Current RAM usage for dedup on a particular zfs pool?

See:
<https://serverfault.com/questions/533877/how-large-is-my-zfs-dedupe-table-at-the-moment>

``` bash
  zpool status -D  tank
#>  (...)
#> dedup: DDT entries 10811910, size 475B on disk, 153B in core
  jq -cn '10811910 * 153 | . / (1024 * 1024 * 1024) | {gb: .}'
#> {"gb":1.5406145062297583}
```

######## Create a new zfs "env" in a file?

``` bash
zpool list

fallocate -l 500M /tmp/zpooltest
# or
truncate -s 500M /tmp/zpooltest

zpool create testpool /tmp/zpooltest
zpool list
zfs create testpool/lz4
zfs set compression=lz4 testpool/lz4
zfs set dedup=on testpool/lz4
zpool list
#> NAME           SIZE  ALLOC   FREE  EXPANDSZ   FRAG    CAP  DEDUP  HEALTH  ALTROOT
#> testpool       480M  1,93M   478M         -    11%     0%  1.00x  ONLINE  -
#> zpool-docker   199G   163G  36,0G         -    83%    81%  2.17x  ONLINE  -
zfs list testpool
#> NAME       USED  AVAIL  REFER  MOUNTPOINT
#> testpool   652K   447M    19K  /testpool
```

######## How to destroy a zpool ?

``` bash
zpool destroy <poolName>
```

######## How to add new devices to an exising pool?

``` bash
# List already used devices
sudo zpool status
# check availavble devices
lsblk
# add a device to the pool
sudo zpool add zpool-docker /dev/sde
# list again to check it has been taken into account
sudo zpool add zpool-docker /dev/sde
```

######## How to view the dedup and compression properties of pools?

``` bash
# a starting point:
sudo zfs list -o devices,type,mountpoint,compressratio,refcompressratio,compression,dedup
```

######## Snaphot clones, etc

from:
<https://www.howtoforge.com/tutorial/how-to-use-snapshots-clones-and-replication-in-zfs-on-linux/>

``` bash
# #### Given you havea datapool, eg created with:
    zpool create datapool mirror /dev/sdb /dev/sdc
    #>
    zpool list
    #> NAME       SIZE  ALLOC   FREE  EXPANDSZ   FRAG    CAP  DEDUP  HEALTH  ALTROOT
    datapool  1.98G    65K  1.98G         -     0%     0%  1.00x  ONLINE  -
# #### and a zfs filesystem created for exeample with:
    zfs create datapool/docs -o mountpoint=/docs
    #>
    zfs list -r datapool
    #> NAME            USED  AVAIL  REFER  MOUNTPOINT
    #> datapool       93.5K  1.92G    19K  /datapool
    #> datapool/docs    19K  1.92G    19K  /docs
# ### you can create a snapshot with :
    zfs snapshot datapool/docs@version1
    zfs list -t snapshot
    #> NAME                     USED  AVAIL  REFER  MOUNTPOINT
    #> datapool/docs@version1      0      -  19.5K  -
```

######## Send/receive

######### How to do send a whole pool to another pool?

``` bash
# initial
ssh src-host 'sudo zfs send -v -R -I srcpool@snap' | sudo zfs receive -v -Fdu dstpool
# incremental
ssh src-host 'sudo zfs send -v -R -I srcpool@snap srcpool@snap2' | sudo zfs receive -v -Fdu datapool-mir
```

In one case I was only able to send the initial with:

``` bash
# initial
ssh src-host 'sudo zfs send -v -R -I srcpool srcpool@snap' | sudo zfs receive -v -Fdu dstpool
```

######### How to to send a whole pool with dedup=on to another pool but with dedup=off?

``` bash
# initial
ssh src-host 'sudo zfs send -v -R -I srcpool srcpool@snap' \
    | sudo zfs receive -o dedup=off -v -Fdu dstpool
```

######### zfs partial send / receive ?

from:
<https://unix.stackexchange.com/questions/343675/zfs-on-linux-send-receive-resume-on-poor-bad-ssh-connection>

``` bash
# on the receiving end
nc -l 9090 | pv -s 100G | sudo zfs receive -s -v -Fdu tank
# on the sending
sudo zfs send -v -R -I tank tank@v1 \
    | pv -s 100G \
    | nc $receiveHost 9090
# if the transfer fails
## on the receiving end
sudo zfs get all tank/dataset
## get the resume token
grep receive_resume_token
## on the send machine
sudo zfs send -v -t $token -R -I tank tank@v1 \
    | pv -s 100G                              \
    | nc $receiveHost 9090
```

######## How to list all devices of a pool?

``` bash
sudo zpool list  -v -L
```

######## Grow a zfs pool when a device has grown?

``` bash
# Let's the the growed device is sdx
dev=sdx
pool=poolx
# rescan scsci
ls /sys/class/scsi_device/                                               \
| xargs -i -n1 echo 'echo 1 > /sys/class/scsi_device/{}/device/rescan' \
| bash -xveuo pipefail
# inform kernel
partprobe
# zfs online -e
zfs online -e $pool $dev

# WARN, may need to re-run several time partprobe/zfs online fot make it work

partprobe
zfs online -e $pool $dev
```

####### AccessControl

######## Set read right reccursive for all files and and dir in a given dir?

``` bash
dir=/path/to
&& find "$dir" -type f -print0 | xargs -0 chmod 744 \
&& find "$dir" -type d -print0 | xargs -0 chmod 755
```

###### Distribs

####### Alpine

######## Apk

######### use a http cache for apk ?

from: <https://hub.docker.com/r/vektorlab/apk-cache/>

- Run an apk-cache on port 80 + –add-host:

``` bash
# run an apk-cache container
docker run -d -p 80:80 --name=apk-cache vektorlab/apk-cache
# run container by replacing dl-4.alpinelinux.org:
docker run --add-host dl-cdn.alpinelinux.org:${hostIp} -it alpine:3.6
# Alternative if not running on port 80, link the container:
docker run -d -p 80:80 --name=apk-cache vektorlab/apk-cache
```

- Run an apk-cache on any port + link on port 80 + –add-host:

``` bash
# run an apk-cache container
docker run -d -p 8080:80 --name=apk-cache vektorlab/apk-cache
# docker run with link
docker run -ti --link apk-cache:dl-4.alpinelinux.org alpine:latest /bin/sh
```

- Run apk-cache on any port + overwrite resolution of
  dl-4.alpinelinux.org via dnsmasq

######### add a repo?

``` bash
echo "http://107.181.185.116/alpine/v3.2/main" >> /etc/apk/repositories; \
```

######### how to install telnet on alpine ???

``` bash
```

######### repo key rotated? (UNTRUSTED signature when `apk add`)?

``` bash
# add the new key
apk add -X https://dl-cdn.alpinelinux.org/alpine/v3.14/main -u alpine-keys
```

####### Debian

######## Old debian GPG invalid signature when apt-get update?

Re-import expired pgp keys with:

``` bash
apt-key list | grep expired |  tr -s ' '  | cut -f2 -d ' ' | cut -f2 -d'/' | sed -r 's/.*/apt-key adv --recv-keys --keyserver keys.gnupg.net &/' | bash -xv

```

Or try with an ubuntu keyserver (and port 80 to go through firewalls):

``` bash
apt-key list \
    | grep expired                                                                        \
    | tr -s ' '                                                                           \
    | cut -f2 -d ' '                                                                      \
    | cut -f2 -d'/'                                                                       \
    | sed -r 's|.*|apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80  &|' \
    | bash -xv \
;
```

######## Bookworm

######### how to install java8 on Debian Bookworm?

Best solution found yet:

- enable (if necessary) the debian non-free repo
- install nvidia-openjdk-8-jre: `apt install nvidia-openjdk-8-jre`
- disable (if necessary) the debian non-free repo

<https://packages.debian.org/bookworm/nvidia-openjdk-8-jre>

And switch between old/new java with:
`update-alternatives --config java` `update-alternatives --config javac`

######### Fresh install of bookworm 12.5 via cd.iso apt update fails !?

``` shell
apt update

#> Err:1 http://security.debian.org/debian-security bookworm-security/main amd64 libuv1 amd64 1.44.2-1+deb12u1
#> 503  Service Unavailable [IP: 199.232.58.132 80]
#> Err:2 http://security.debian.org/debian-security bookworm-security/main amd64 bind9-host amd64 1:9.18.24-1
```

Solved it using <https://wiki.debian.org/SourcesList>

``` shell
  echo 'deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware
deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware

deb http://deb.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware
deb-src http://deb.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware

deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware
deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware' \
       > /etc/apt/sources.list
  # then the ususal
  apt update
  apt upgrade
  # worked fine !


```

####### Ubuntu

######## X

######### Disable Wayland to use Xorg instead?

``` bash
Edit =/etc/gdm3/custom.conf=
change:  :WaylandEnable=true:
by    :  :WaylandEnable=false:
```

######## Admin

######### How to authorize normal user to connect to wifi withouth authenticating as admin ?

- Using the admin account, connect to the wifi
- And in the wifi properties, choose:
  - "Make available to others users"
  - 

######## prevent snapd for ever installing?

from:
<https://askubuntu.com/questions/1345385/how-can-i-stop-apt-from-installing-snap-packages>

``` shell
# purge snapd
apt purge snapd
# holdit
apt-mark hold snapd
```

######## 18.04

######### X

########## Normal alt-tab?

From:
<https://askubuntu.com/questions/1036248/how-to-separate-opened-windows-in-alttab-switcher-in-ubuntu-18-04>

- Go to `Settings > Devices > Keyboard`.
- Choose: "Switch windows"
- Assign 'alt-tab' to it

######### uninstall snap?

from:
<https://stackoverflow.com/questions/50322306/how-to-remove-snap-store-from-ubuntu>

``` bash
sudo apt autoremove --purge snapd
```

####### Raspberry Pi

######## Install docker on Raspberry Pi 4?

<https://docs.docker.com/engine/install/debian/#install-using-the-convenience-script>
As of 20230101:

``` bash
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install     ca-certificates     curl     gnupg     lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo usermod -aG docker $(whoami)
newgrp docker
docker run hello-world
```

###### Backup

####### Bup

######## bup essentials?

| category | what?                | cmd                                         |
|----------|----------------------|---------------------------------------------|
| init     | init bup in curr dir | `bup init`                                  |
| save     | local backup         | `bup index $d`                              |
|          | \- of dir : \$d      | `bup save -n ${n} ${d}`                     |
|          | \- with name: \$n    |                                             |
| restore  | Restore local backup | `bup restore -C ${p} ${n}/${d}`             |
|          | \- of dir : \$d      |                                             |
|          | \- with name : \$n   |                                             |
|          | \- at path : \$p     |                                             |
| list     | list backup          | `bup ls $n`                                 |
|          | \- with name: \$n    |                                             |
| save     | local backup         | `tar cvf $d` \<pipe\> `bup split -n $n -vv` |
|          | \- of dir : \$d      |                                             |
|          | \- with name: \$n    |                                             |

##### Other UNIXes

###### Solaris

####### equivalent of linux's `ps aux` ?

maybee not exaclty equiv, but roughly:

``` bash
ps -AfL
```

###### AIX

####### list all processes with their corresponding commands?

``` bash
ps -Af
```

######### How to know the actual amount of ram used by dedup on a particular dataset ?

from:
<https://serverfault.com/questions/533877/how-large-is-my-zfs-dedupe-table-at-the-moment>

``` bash
sudo zpool status -D zpool-docker | jq -Rr 'capture("^\\s*dedup: DDT entries (?<ddt>[0-9]+)[^0-9]\\s+size (?<sizeOnDisk>[0-9]+) on disk, (?<inCore>[0-9]+) in core$") | map_values(fromjson) | { ramUsedForDedupInMBytes: (.ddt * .inCore / (1024 * 1024))}'
```

########## common rsync flags?

``` bash
# to copy exactly (like above) plus more feedback:
rsync -rvza --progress --delete --info=progress2 workspace/ jenkins@localhost:/home/jenkins/workspace
# even more verbose
rsync -rvza --progress --delete --info=stats2,misc1,flist0 workspace/ jenkins@localhost:/home/jenkins/workspace
```

########## Compress / decompress on the fly?

``` bash
# data ------------------------------------------------------------------
mkdir d
seq 2 > d/f
# compress --------------------------------------------------------------
tar -cf - d | xz > d.tar.xz
# remove orig -----------------------------------------------------------
ls
#> d  d.tar.xz
rm -rf d
# uncompress ------------------------------------------------------------
unxz < d.tar.xz| tar x
# check -----------------------------------------------------------------
ls
#> d  d.tar.xz
cat d/f
#> 1
#> 2
# -----------------------------------------------------------------------
```

########## How to display the actual configuration of the ssh command?

``` bash
ssh user@host -G
```

########## Signal to control nginx at runtime?

``` bash
quit – Shut down gracefully
reload – Reload the configuration file
reopen – Reopen log files
stop – Shut down immediately (fast shutdown)
```

##### M\$ Windows

###### Cygwin

####### Sshd

######## start sshd as a service after its installation with the Cygwin installer?

######### TODO to be verified

1.  Open a cmd.exe as administrator

2.  Run:

    ``` bash
    cygrunsrv -S sshd
    ```

    (from:
    <https://unix.stackexchange.com/questions/296275/running-sshd-in-cygwin-var-empty-must-be-owned-by-root>

######## install gpg under cygwin?

It's already in the standard Cygwin repo, only called `gnupg`.

###### cmd.exe

####### windows services cheatsheet?

- list all

  ``` bash
  sc queryex type= service state= all
  ```

<!-- -->

- list service containing the string "NATION"?

  ``` bash
  sc queryex type= service state= all | find /i "NATION"
  ```

###### Linux Guests in a Windows vbox host

######## Disable hyperV for vbox?

- open a windows cmd.exe as admin
- then run:

``` bash
mountvol X: /s
copy %WINDIR%\System32\SecConfig.efi X:\EFI\Microsoft\Boot\SecConfig.efi /Y
bcdedit /create {0cb3b571-2f2e-4343-a879-d86a476d7215} /d "DebugTool" /application osloader
bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} path "\EFI\Microsoft\Boot\SecConfig.efi"
bcdedit /set {bootmgr} bootsequence {0cb3b571-2f2e-4343-a879-d86a476d7215}
bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} loadoptions DISABLE-LSA-ISO,DISABLE-VBS
bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} device partition=X:
mountvol X: /d
```

- reboot
- press F3 at all the question displayed pre-boot

######## manually mount a shared folder in a linux guest?

``` bash
sudo mount -t vboxsf <sharedFolderName> /path/to/shared/folder/dir
```

######## host alt-tab when in a guest?

`host key` then alt-tab

######## Windows Hosts

######### Windows10

########## VT-x is not available (VERR<sub>VMXNOVMX</sub>)

From:

- VT-x is not enabled in the BIOS
- The CPU doesn't support VT-x
- Hyper-V virtualization is enabled in Windows
- 
- Run in command prompt:

``` bash
dism.exe /Online /Disable-Feature:Microsoft-Hyper-V
```

- And reboot

#### Vim

##### Yaml

###### Folding yaml in vim?

from:
<https://lornajane.net/posts/2018/vim-settings-for-working-with-yaml>
Starting point, put in your `~/.vimrc`:

``` bash
" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
```

# Virtualization

## Docker

### Images

#### find images on the command line ?

???

#### Building

##### docker build from stdin?

``` bash
#
# docker < 17.05
#
docker build -t foo -<<EOF
FROM busybox
RUN echo "hello world"
EOF
#
# docker >= 17.05
#
docker build -t . -f-<<EOF
FROM busybox
RUN echo "hello world"
COPY . /my-copied-files
EOF
```

#### Tags

##### Give a name to an image?

``` bash
docker tag <srcImgId>   <imgName>
docker tag 978d85d02b87 firc/foo:1
```

### Containers

#### docker run/start/exec ?

| cmd   | descr                            |
|-------|----------------------------------|
| run   | run cmd in **new** container     |
| exec  | run cmd in **running** container |
| start | start a **stopped** container    |

### troubleshoot ubuntu network ?

- ping 8.8.8.8 but no www.google.com ?
- incomplete response:

``` bash
# Find your network's DNS server:
$ nmcli dev show | grep 'IP4.DNS'
IP4.DNS[1]:                             10.19.18.25

# Open up /lib/systemd/system/docker.service and add DNS settings to the ExecStart line:
ExecStart=/usr/bin/docker daemon --dns 8.8.8.8 --dns 10.19.18.25 -H fd://
```

From:
<http://askubuntu.com/questions/475764/docker-io-dns-doesnt-work-its-trying-to-use-8-8-8-8>

### Persistence

#### repair docker after a disk full?

``` bash
service docker stop

thin_check /var/lib/docker/devicemapper/devicemapper/metadata

thin_check --clear-needs-check-flag /var/lib/docker/devicemapper/devicemapper/metadata

service docker start

```

<http://stackoverflow.com/questions/30719896/docker-dm-task-run-failed-error>

### Dockerfile

#### use bashism in Dockerfile?

``` bash
# Define bash as the default shell
SHELL ["bash", "-c"]
# or:
SHELL ["bash", "-ueo","pipefail", "-c"]
```

### Docker Compose

#### commands cheatsheet ?

|         |          |           |         |         |     |                                                           |
|---------|----------|-----------|---------|---------|-----|-----------------------------------------------------------|
| cmd     | act on   | type      | target  | service | all | descr                                                     |
|         |          |           | state   |         |     |                                                           |
| build   | img      | build     | any     | Y       | Y   | Build or rebuild services                                 |
| create  | cont     | lifecycle | any     | Y       | Y   | Create services                                           |
| start   | cont     | lifecycle | stopped | Y       | Y   | Start services                                            |
| up      | cont     | lifecycle | stopped | Y       | Y   | Create and start containers                               |
| run     | cont     | lifecycle |         | Y       | N   | Run a one-off command                                     |
| exec    | cont     | lifecycle | running | Y       | N   | Execute a command in a running container                  |
| stop    | cont     | lifecycle | stopped | Y       | Y   | Stop services                                             |
| kill    | cont     | lifecycle | running | Y       | Y   | Kill containers                                           |
| down    | img/cont | lifecycle | running | N       | Y   | Stop and remove containers, networks, images, and volumes |
| rm      | cont     | lifecycle | stopped | Y       | Y   | Remove stopped containers                                 |
| restart | cont     | lifecycle | running | Y       | Y   | Restart services                                          |
| unpause | cont     | lifecycle | paused  | Y       | Y   | Unpause services                                          |
| pause   | cont     | lifecycle | running | Y       | Y   | Pause services                                            |
| scale   | cont     | lifecycle |         | Y       | Y   | Set number of containers for a service                    |
| config  | compose  |           |         | N       | Y   | Validate and view the compose file                        |
| bundle  | img      |           |         | ?       | ?   | Generate a Docker bundle from the Compose file            |
| pull    | img      |           |         | Y       | Y   | Pulls service images                                      |
| push    | img      |           |         | Y       | Y   | Push service images                                       |
| events  | cont     | infos     |         | Y       | Y   | Receive real time events from containers                  |
| logs    | cont     | infos     |         | Y       | Y   | View output from containers                               |
| port    | cont     | infos     |         | Y       | N   | Print the public port for a port binding                  |
| ps      | cont     | infos     |         | Y       | Y   | List containers                                           |
| help    | special  | infos     |         | N       | N   | Get help on a command                                     |
| version | special  | infos     |         | N       | N   | Show the Docker-Compose version information               |

#### pass env var at build time ?

from: <https://docs.docker.com/compose/compose-file/#cachefrom>:

``` bash
build:
  context: .
  args:
    buildno: 1
    password: secret
```

### docker docs

| what                        | url                                                                                                      |
|-----------------------------|----------------------------------------------------------------------------------------------------------|
| docker install              | [ubuntu](https://docs.docker.com/engine/installation/linux/ubuntu/)                                      |
|                             | [centos](https://docs.docker.com/engine/installation/linux/centos/)                                      |
| compose install             | [any OS](https://github.com/docker/compose/releases)                                                     |
| storage drivers in practice | [aufs in practice](https://docs.docker.com/engine/userguide/storagedriver/aufs-driver/)                  |
|                             | [devicemapper in practice](https://docs.docker.com/engine/userguide/storagedriver/device-mapper-driver/) |
|                             | [overlay in practice](https://docs.docker.com/engine/userguide/storagedriver/device-mapper-driver/)      |
|                             | [btrfs in practice](https://docs.docker.com/engine/userguide/storagedriver/btrfs-driver/)                |
|                             | [zfs in practice](https://docs.docker.com/engine/userguide/storagedriver/zfs-driver/)                    |

### Network

#### bind host /lib and /bin to the guest to run (eg) wget?

``` bash
# on the host
docker run -v /usr/lib/x86_64-linux-gnu:/usr-lib-host -v /lib/x86_64-linux-gnu/:/lib-host -v /usr/bin/:/bin-host -it ubuntu:16.04 bash
# on the guest
export LD_LIBRARY_PATH=/lib-host:/usr-lib-host && export PATH=$PATH:/bin-host
wget google.com
```

### DockerHub

#### How to list all tags of a particular image?

``` bash
img=jenkins
curl "https://registry.hub.docker.com/v1/repositories/${img}/tags"  | jq -c '.[]'
#> {"layer":"","name":"2.7.3-alpine"}
#> {"layer":"","name":"2.7.4"}
#> {"layer":"","name":"2.7.4-alpine"}
```

### Misc

#### use stdin with a container?

``` bash
seq 100 | docker run -i syn synesthesia 1
```

### Cli

#### Formatting

##### docker cli command output in json?

``` bash
docker history opensuse/portus:2.3.5 --format '{{json . }}'
```

### DockerDistribs

#### RancherOs

##### How to switch the default console to ubuntu?

Source:
<https://rancher.com/docs/os/v1.2/en/configuration/switching-consoles/>

``` bash
# List available consoles
sudo ros console list
# Switch to another console
sudo ros console switch ubuntu
```

## Vsphere

### when cloning a win vm, how to avoid a duplicate ip adress?

- vsphere: clone the vm :
  - but customize the hardware
  - disable the network card
- Open the vmware console to access the machine:
  - win: setup a new ip adress
- vsphere: enable "connect" "connect at startup"

# Crypto

## Gpg

### How to encrypt symmetric stdin without X (Inappropriate ioctl for device)?

``` bash
# Workaround:
( export GPG_TTY=$(tty) && tar czv f | gpg --symmetric  > f.gpg )
```

### verify a gpg signed file?

``` bash
gpg --verify file.gpg file
```

### how to dw a gpg public key from ubuntu key server?

``` bash
keyId=7C207910
keyFingerprint='28D3 BED8 51FD F3AB 57FE F93C 2335 87A4 7C20 7910'
gpg --keyserver keyserver.ubuntu.com --recv $keyId
gpg --list-keys --with-fingerprint $keyId | tr -s ' ' | grep "${keyFingerprint}"
```

sometimes behind firewalls:

``` bash
gpg --keyid-format long --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x8EF0A9D3F274FCE7
```

# Web Browsers

## Firefox

### Disable images loading?

go to <about:config>
firefox<sub>profile</sub>.set<sub>preference</sub>('permissions.default.image',
2)

## Chrome

### How to keep a Chrome background active (eg: for avoiding sessions timeouts)?

#### Possible option1: Use Chrome build-in `ctrl-shift-click`

##### STARTED 1) use the buit-in chrome shortcut \[0/1\]

`ctrl-click` on link open a link in another background.
`ctrl-shift-click` open a link in another tag **and keep it active**.

###### STARTED to be verified

It seems to work be needs to be used for a few days to be definitvely
validated

#### TODO Possible option2: Use an extension like `Tab Reloader`

<https://chrome.google.com/webstore/detail/tab-reloader-page-auto-re/dejobinhdiimklegodgbmbifijpppopn>

##### TODO to check

## Chromium

### Run chromium diagnostics?

``` shell
chromium --diagnostics
```

### Chromium crashes on startup, any hint?

- Run `chrome --diagnostics`
- look for the size of \$HOME/.config/chromium
- I had a case of a webworker cache dir huge (4gb), deleting it fix the
  problem

# Videos

## Youtube

#### How do I send a link to a youtube video specifing the resolution?

###### Solution from stackoverflow

From:
<https://stackoverflow.com/questions/23145257/is-there-a-way-to-link-someone-to-a-youtube-vieo-in-hd-1080p-quality>

``` bash
Yes there is
:

https://www.youtube.com/embed/kObNpTFPV5c?vq=hd1440
https://www.youtube.com/embed/kObNpTFPV5c?vq=hd1080
etc...
Options are:

Code for 1440: vq=hd1440
Code for 1080: vq=hd1080
Code for 720: vq=hd720
Code for 480p: vq=large
Code for 360p: vq=medium
Code for 240p: vq=small
```

##### In other words

- send the link of your video in the following form:
  - <https://www.youtube.com/embed/$%7BvideoCode%7D?vq=$%7BqualityCode%7D>
  - where:
    - `videoCode`: Is the YouTube code of your video
    - `qualityCode`: The code specifing the quality you need (see above
      for the table code -\> resolution)
  - for example:
    - If my my `vieoCode` is `EOoM2ooJICc`
    - And the quality I want is `1440` (correspondihg code: `hd1440`)
    - The url will be:
      <https://www.youtube.com/embed/EOoM2ooJICc?vq=hd1440>

# Programming

## JVM ecosystem

### Groovy

#### Misc

##### Get the Groovy version from within a Groovy script/class?

``` bash
println GroovySystem.version
```

#### pipeline oriented programming in groovy like Clojure's threading macro?

``` java
Collection.metaClass.or = { Closure c -> delegate.collect c }

assert(
        [1]
      | {it + 1}
      | {it * 2}) == [4]
```

#### groovy switch case?

``` java
switch(val) {
  case ~/ab.*/:
    result="x"
    break
  case ...
  default:
    ...
    break
}
```

#### groovy interval ?

``` java
(1..10).each{prinltn it}
```

#### get cmd line args?

``` bash
println(args)
```

#### run a system command in groovy ?

see:
<http://docs.groovy-lang.org/latest/html/documentation/working-with-io.html>

``` bash
def process = "ls -l".execute()
println "Found text ${process.text}"
```

``` bash
def process = "ls -l".execute()
process.in.eachLine { line ->
    println line
}
```

``` bash
    def p = "rm -f foo.tmp".execute([], tmpDir)
p.consumeProcessOutput()
p.waitFor()
```

#### groovy pprint datastructure?

from: <https://gist.github.com/esycat/6410360>

``` bash
import static groovy.json.JsonOutput.*
def config = ['test': 'lalala']
println prettyPrint(toJson(config))
```

### Java

#### Create an object with the same behavior than System.out (for testing output)?

``` java
ByteArrayOutputStream os = new ByteArrayOutputStream();
PrintStream ps = new PrintStream(os);
...
String output = os.toString("UTF8");
```

<http://stackoverflow.com/questions/1760654/java-printstream-to-string>

#### timestamp in java ?

``` bash
     import java.text.SimpleDateFormat;
     SimpleDateFormat sdf sdf = new SimpleDateFormat("yyyyMMdd-HHmmSS");
     String yyyyMMdd = sdf.format(new java.util.Date());

Reference:
Update: the question by The Elite Gentleman is important. If you start with a String , then you should first parse it to obtain the date object from the above example:
Date date = new SimpleDateFormat("dd MMM yyyy").parse(dateString);


```

### Gradle

#### how to create a new project from scratch?

``` bash
gradle init --type basic
```

### Maven

#### simply download a jar with maven?

##### simple

``` bash
# Note: -U always update remote releases and snapshot repositoryies
mvn -U dependency:get -Dartifact=org.springframework:spring-instrument:3.2.3.RELEASE
```

See:
<http://stackoverflow.com/questions/7110114/how-to-simply-download-a-jar-using-maven>

##### specifying transitivity and repo

``` bash
mvn dependency:get -DremoteRepositories=https://repo.jenkins-ci.org/releases \
  -Dartifact=org.jenkins-ci.plugins:swarm-client:3.4                         \
  -Dtransitive=false
```

#### generate a simple maven project?

``` bash
# full list
mvn archetype:generate
# only with groupId org.apache.maven.archetypes:
mvn archetype:generate -Dfilter=org.apache.maven.archetypes:
# good for quick start:
mvn archetype:generate -Dfilter=maven-archetype-quickstar
# or
mvn archetype:generate -Dfilter=maven-archetype-webapp
# or
mvn archetype:generate -Dfilter=maven-archetype-simple
```

#### generate a simple webapp?

``` bash
mvn archetype:generate                         \
  -DgroupId=com.mycompany.app                  \
  -DartifactId=my-app                          \
  -DarchetypeArtifactId=maven-archetype-webapp \
  -DinteractiveMode=false
```

### Clojure

#### Dev

##### Repl

###### Change the alias of a ns in a ns def (Alias \<alias\> already exists in namespace \<ns\>,etc)?

If the ns is: `user.ns` and the alias is `alias`:

``` clj
(ns-unalias (find-ns 'user.ns) 'alias)
```

###### List all ns?

``` clojure
(all-ns)
```

##### Strings

###### ByteArrayInputStream to string?

Use `slurp`:

``` clojure
  (let [s "foo"
       sb (java.io.ByteArrayInputStream. (.getBytes s))
       ]
   (slurp sb))
#> "foo"
```

###### Convert a string to a regex?

``` clojure
(re-pattern "a.*b")
```

##### Protocols

###### Full example of protocole usage for fast & simple polymorphic dispatch on a single type?

``` clj
;; pro ns ----------------------------------------------------------------------

(ns pro
  (:require [clj-time.format :as tf]
            [clj-time.coerce :as tc])
  (:import [org.joda.time DateTime]
           [java.util Date]))

;; Define the interface
(defprotocol XmlNode
  (as-xml [this]))

;; Define implementation that are dispached on existing types
;; Protocols can be extended to existing types and user defined types
(extend-protocol XmlNode
  Integer  (as-xml [this] (str this))
  String   (as-xml [this] (identity this))
  Date     (as-xml [this] (.format (java.text.SimpleDateFormat. "yyyy-MM-dd HH:mm:ss") this))
  DateTime (as-xml [this] (->> this
                               tc/to-long
                               (#(/ % 1000))
                               long)))

;; And even on your own custom types
(defrecord User [^Integer id ^String name ^java.util.Date dob])

(extend-protocol XmlNode
  User
  (as-xml [this] (str "<user>"
                      "<id>" (as-xml (:id this)) "</id>"
                      "<name>" (as-xml (:name this)) "</name>"
                      "<dob>" (as-xml (:dob this)) "</dob>"
                      "</user>")))

;; pro-test ns ----------------------------------------------------------------------

(ns pro-test
  (:require [pro :refer :all]
            [clojure.test :refer :all]
            [clj-time.core :as t]))

(deftest as-xml-test
 (testing "int"            (is (= "1"                   (as-xml (int             1            )))))
 (testing "joda-time"      (is (= 1577836800            (as-xml (t/date-time     2020         )))))
 (testing "java.util.date" (is (= "2001-09-09 01:46:40" (as-xml (java.util.Date. 1000000000000)))))
 (testing "User"           (is (= "<user><id>0</id><name>john</name><dob>473385600</dob></user>"
                                                        (as-xml (->User "0" "john" (t/date-time 1985)))))))

```

##### Modulo/quotient/reminder?

``` bash
(mod 5 2)
#> 1
(quot 5 2)
#> 2
(rem 5 2)
#> 1
(let [a     5
      b     2
      q     (quot a b)
      r     (rem r b)
      q*b+r (+ (* q b) r)]
 (= q*b+r a))
#> true
```

##### Lein

###### Show dependencies tree?

``` bash
lein pom
mvn dependency:tree -Dverbose=true
```

###### Connect to an existing nrepl process?

``` bash
lein repl :connect localhost:7888
```

##### Bloody java.time dates

###### java.time formatting and parsing nanosecond precision dates with UTC timezone?

``` clojure
  (let [s     "2022-04-01T11:28:54.939753328Z"
        fmt   (java.time.format.DateTimeFormatter/ofPattern "yyyy-MM-dd\u0027T\u0027HH:mm:ss.n\u0027Z\u0027")
        s>d   (.parse fmt s)
        s>d>s (.format fmt s>d)]
      (pprint {:s s :s>d s>d :s>d>s s>d>s}))
#>
'{
   :s     "2022-04-01T11:28:54.939753328Z",
   :s>d   #object[java.time.format.Parsed 0x694ea25d "{},ISO resolved to 2022-04-01T11:28:54.939753328"],
   :s>d>s "2022-04-01T11:28:54.939753328Z"
 }
```

####### conversion from seconds from epoch to DateTime:

``` clojure
(let [sec     (long (System/currentTimeMillis))
      sec-fmt (format "%1$tFT%1$tT.%1$tNZ" sec)
      fmt     (java.time.format.DateTimeFormatter/ofPattern "yyyy-MM-dd\u0027T\u0027HH:mm:ss.n\u0027Z\u0027")
      dt      (.parse fmt sec-fmt)]

(->> (with-map sec sec-fmt dt)
     pprint))
#=>
{
  :sec     1650058483005,
  :sec-fmt "2022-04-15T23:34:43.005000000Z",
  :dt      #object[java.time.format.Parsed 0x3e9829cb "{},ISO resolved to 2022-04-15T23:34:43.005"]
}
```

###### simple date formating like '16/Mar/2023' ?

``` bash
  bb -o '
(let
  [
    date-str "2023/Mar/16"
    sec (long (System/currentTimeMillis))
    fmt (java.time.format.DateTimeFormatter/ofPattern "yyyy/MMM/dd")
    parsed (.parse fmt date-str)
  ]
  (pprint {:date-str date-str :parsed parsed} )
  )
'

```

###### current LocalDateTime?

java.time.LocalDateTime/now

###### convert LocalDateTime to ZonedDateTime utc?

(def ldt (java.time.LocalDateTime/now)) (def zdt
(ldt.atZone(java.time.ZoneId/of "UTC")))

###### date fmt & parse cheatsheet?

####### parse 2023-03-23

``` bash
bb -o '(def s "2023-03-23")
  (def fmt (java.text.SimpleDateFormat. "yyyy-MM-dd"))
 (.parse fmt s)
 '

```

##### Misc

###### hex \<-\> decimal conversion?

Works with any base:

``` bash
(Integer/toString 123 16)
 ;;=> "7b"
 (Long/parseLong "7b" 16)
 ;=> 123
```

#### Js

#### Babasha

##### Parse a date in babashka?

``` clj
(java.time.LocalDateTime/parse "2019-12-18T16:01:41.485")
```

#### Processes

##### Process output of a cmd lazily?

###### Pure clojure (works with Clojure JVM + Babashka)

``` clj
  ;; ========== begin aken from Raynes conch librray 0.8.0 low_level.clj ==========
(defn proc
  "Spin off another process. Returns the process's input stream,
  output stream, and err stream as a map of :in, :out, and :err keys
  If passed the optional :dir and/or :env keyword options, the dir
  and enviroment will be set to what you specify. If you pass
  :verbose and it is true, commands will be printed. If it is set to
  :very, environment variables passed, dir, and the command will be
  printed. If passed the :clear-env keyword option, then the process
  will not inherit its environment from its parent process."
  [& args]
  (let [[cmd args] (split-with (complement keyword?) args)
        args (apply hash-map args)
        builder (ProcessBuilder. (into-array String cmd))
        env (.environment builder)]
    (when (:clear-env args)
      (.clear env))
    (doseq [[k v] (:env args)]
      (.put env k v))
    (when-let [dir (:dir args)]
      (.directory builder (io/file dir)))
    (when (:verbose args) (apply println cmd))
    (when (= :very (:verbose args))
      (when-let [env (:env args)] (prn env))
      (when-let [dir (:dir args)] (prn dir)))
    (when (:redirect-err args)
      (.redirectErrorStream builder true))
    (let [process (.start builder)]
      {:out (.getInputStream process)
       :in  (.getOutputStream process)
       :err (.getErrorStream process)
       :process process})))
;; ========== begin aken from Raynes conch libraray ==========

(defn proc-lazy [& prog] "Return a lazy seq which is the output (potentially infinite) on stdout of the given program.
Add the process to the meta (to dispose it later for example)."
  (let [proc (apply proc prog)
        out  (:out proc)
        rdr  (clojure.java.io/reader out)
        seq  (with-meta  (line-seq rdr) {:proc proc})]
    seq))

(println "defining s")
(time (def s (proc-lazy "bash" "-c" "seq Infinity | pv -qlL1")))

(println "taking 1 from s")
(time (pp/pprint (take 1 s)))

(println "taking 10 from s")
(time (pp/pprint (take 10 s)))


```

###### Using babashka process lib

``` bash
: ' -*- clojure -*- ' \
&& bb -o '
   (require (quote [babashka.process :as process]))
   (->> (process/process ["bash" "-c" "seq Infinity | pv -qlL1"] )
     :out
     (io/reader)
     line-seq )
       '
```

##### Macros

###### Threading

####### how to use threading macros with functions with different argument position?

``` clojure
;; using -> and ->>
(-> 4
  range
  (->> (partition 2                ))
  (->> (map       (partial into [])))
  (->> (into      {}               ))
  (get-in [2])
)
#> "3"
;; using as->
(as-> 4 x
  (range                       x)
  (partition 2                 x)
  (map       (partial into []) x)
  (into      {}                x)
  (get-in x [2])
)
#> "3"
```

####### how to use -\>\> with fns args mixed at the beginning and and?

``` clojure
(let [s {}]
  (map  str
    (assoc s :k :v)))
#> ("[:k :v]")
(->> {}
  (#(assoc % :k :v))
  (map str))
#> ("[:k :v]")
```

###### Functions

####### Args

######## optional args with default values using keys?

``` clojure
(defn hello [& {:keys [salutation name]
                :or   {salutation "Hello" name "World"}}]
  (str salutation " " name))
;; => "#'fapi.jenkins.log-parse/hello"
;;
(hello)
;; => "Hello World"
(hello :name "John")
;; => "Hello John"
(hello :name "John" :salutation "Hi")
;; => "Hi John"
```

###### Ns

####### Alias

######## How to remove an alias to a ns?

``` clj
        (let [ns-sym 'fapi.jira.sql.hicosql.explore
            alias-sym 'jsqlh
](-> ns-sym
           find-ns
           (ns-unalias  alias-sym)
           ))
```

###### Var

####### symbol-\>var-\>value?

``` clojure
(def x :foo)
;; #> #'user/x
(resolve 'x)
;; #> #'user/x
(var-get (resolve 'x))
;; #> :foo
         (def x :foo)
         ;; #> #'user/x
         (resolve 'x)
         ;; #> #'user/x
         (var-get (resolve 'x))
         ;; #> :foo
```

######## alternative:

``` clojure
(def s #'mysym)
(->> s
     symbol
    name)
#> "f"
```

######## in one go:

``` clojure
(->> 'x
     resolve
     var-get
)
```

######## or for conditional evaluation

``` clojure
(if-let [v (resolve '*dev-mode*)]
  (if (var-get v)
    :dostuff))
```

###### Destructuring

####### Nested destructuring with map and seq ?

``` clojure
(def [s {:todo [:a :b]}])
;; #>
(let [{[head & tail] :todo} s]
  [head tail])
;; #> [:a :b]
```

###### Files

####### Read a file line by line?

``` clj
(with-open [rdr (clojure.java.io/reader "/etc/passwd")]
  (count (line-seq rdr)))
```

###### Strings

####### Regexes

######## named groups search and replace in Clojure?

``` clj
(str/replace "a b c " #"^(?<w1>\w+) (?<w2>\w+) (?<w3>\w+) *$" "${w2}")
```

######## string to regex?

``` clojure
 (str/replace "foo" (re-pattern "o") "z")
#> "fzz"

```

######## repeat expression between n and m?

``` clojure
(clojure.string/replace "chute" #"^c{0,3}ute$" "chute")
#> "chute"
```

###### Classpath

####### slurp a resource in the classpath?

``` clojure
(require '[clojure.java.io :as io])
(slurp (io/resource "some_project_name/foo.txt"))
```

###### Java interop

####### Get all parents classes of an instance ?

###### Generate uuid

``` clojure
(str (java.util.UUID/randomUUID))
```

###### Exceptions

####### try/catch/finally?

``` clojure
(try (/ 1 0)
  (catch Throwable e (.printStackTrace e))
  (finally (prn :always-run)))
```

#### Java interop

##### Start a clojure repl server from java?

One way

- Set the System property:
  - `clojure.server.repl`"{:port 5555 :accept
    clojure.core.server/repl}"=

  - then load the class clojure.lang.RT

  - Example:

    ``` bash
    cp="src"                                                                                         \
    && cp+=":/home/u/.m2/repository/org/clojure/clojure/1.11.1/clojure-1.11.1.jar"                   \
    && cp+=":/home/u/.m2/repository/org/clojure/core.specs.alpha/0.2.62/core.specs.alpha-0.2.62.jar" \
    && cp+=":/home/u/.m2/repository/org/clojure/spec.alpha/0.3.218/spec.alpha-0.3.218.jar"           \
    && java                                                                                          \
         -Dclojure.server.repl="{:port 5555 :accept clojure.core.server/repl}"                       \
         -Dclojure.basis=.cpcache/4055944946.basis                                                   \
         -classpath "$cp"                                                                            \
         'clojure.main'                                                                              \
           -e '(println "Running server on port 5555") @(promise)'
    # then connec to the repl with:
    telnet localhost 5555
    # or
    rlwrap telnet localhost 5555
    ```

  - Then connect to the repl with:

### Web Servers

#### Tomcat

##### how to configure tomcat so that it can be managed programatically ?

``` bash
# add to TOMCAT_HOME/conf/tomcat-users.xml:
<role rolename="manager-gui"/>
<role rolename="manager-script"/>
<role rolename="manager-jmx"/>
<role rolename="manager-status"/>
<role rolename="admin-gui"/>
<role rolename="admin-script"/>
<user username="tomcat" password="tomcat" roles="manager-gui,manager-script,manager-jmx,manager-status,admin-gui,admin-script"/>
# then:
curl -v -u tomcat:tomcat http://127.0.0.1:8080/manager/text/list
```

##### tomcat rest api doc ?

<http://tomcat.apache.org/tomcat-7.0-doc/manager-howto.html#List_Currently_Deployed_Applications>

## Databases

### Sql language

#### DateTime

##### Sql: how to select rows where a field date is greater than…?

Cast a string to a date type. Ex in Postgresqldb:

``` sql
select * from table
where
  true
  and created >  ('2019-01-02 09:00:00'::timestamp)
```

##### Sql: how to select rows where a field date is in \[\<date\> ; \<date\> + 1 day\]?

``` sql
select * from table
where
  true
  and created >   ('2019-01-02 09:00:00'::timestamp)
  and created <=  ('2019-01-02 09:00:00'::timestamp + '1 day'::interval)
```

#### GroupBy

##### group by concatenate string?

- postgresql \> 9:

``` sql
  #+BEGIN_SRC sql
  select t.id, string_agg(t.c, ', ')
  from (
    VALUES
      (1, 'c')
    , (1, 'a')
    , (1, 'b')
    , (2, '30')
  ) t(id, c)
  group by t.id
;;> | :id | :string_agg |
;;> |-----+-------------|
;;> |   1 |     c, a, b |
;;> |   2 |          30 |
```

- also possible to order the order:

``` sql
select t.id, string_agg(t.c, ', ' order by t.c)
from (
  VALUES
    (1, 'c')
  , (1, 'a')
  , (1, 'b')
  , (2, '30')
) t(id, c)
group by t.id
;;> | :id | :string_agg |
;;> |-----+-------------|
;;> |   1 |     a, b, c |
;;> |   2 |          30 |
```

#### Other

##### Pseudo table in sql?

their called value tables postgresql and others:

| a   |
|-----|
| 1   |
| 2   |

``` sql
select *
from (
  VALUES
    (1)
  , (2)
) t(a)
;;> | a |
;;> |---|
;;> | 1 |
;;> | 2 |
```

##### Concatenate two tables?

- with union (with duplicate rows elimination):

``` sql
select * from (VALUES (1, 'c'), (1, 'a')) t(b,a)
union
select * from (VALUES (1, 'c'), (1, 'a')) t(b,a)
;;> | :b | :a |
;;> |----+----|
;;> |  1 |  a |
;;> |  1 |  c |
```

- with UNION ALL (no dup check):

``` sql
select * from (VALUES (1, 'c'), (1, 'a')) t(b,a)
union all
select * from (VALUES (1, 'c'), (1, 'a')) t(b,a)
;;> | :b | :a |
;;> |----+----|
;;> |  1 |  c |
;;> |  1 |  a |
;;> |  1 |  c |
;;> |  1 |  a |
```

### RDBMS

#### PostgreSQL

###### Posgresql cheatsheet?

| descr                  | sql                    |
|------------------------|------------------------|
| get postgresql version | `SHOW server_version;` |

#### sqlite

##### sqlite3

###### import

####### How do I import a csv from stdin with field containing '"' into a sqlite3 db (non interactively)?

``` shell
  # this is valid csv:
  echo '"a","b"
"c""","d"
"e""e","ffff"
"gg""gg", "hhhhhh"'
# import it in sqlite3
   echo '"a","b"
"c""","d"' \
        | sqlite3 /tmp/.db -csv -cmd ".import '| cat' tt"
# let's check the content of the table tt
   sqlite3 /tmp/.db 'select * from tt'
   #> "c""" d
```

### timeserie db

#### influxdb

##### flux

###### flux query example?

``` bash
from(bucket: "telegraf")
  |> range(start: -12h)
  |> filter(fn: (r) => r._measurement == "system" and r._field  =~ /load(1|5|15)$/ )
  |> aggregateWindow(every: 10s, fn: mean)
  |> group(columns: ["_field"], mode: "by")
```

## Node

### Npm

#### Cli usage

##### how to install global packages without sudo?

``` bash
#Make a directory for global installations:
mkdir ~/.npm-global
#Configure npm to use the new directory path:
npm config set prefix '~/.npm-global'
#Open or create a ~/.profile file and add this line:
export PATH=~/.npm-global/bin:$PATH >> ~/.bashrc
#Back on the command line, update your system variables:
source ~/.profile
```

<https://docs.npmjs.com/getting-started/fixing-npm-permissions>

##### upgrade npm to latest?

``` bash
npm install npm@latest -g
```

##### color config in npm?

Starting point:

``` bash
npm config set color always
```

##### npm list all config keys?

``` bash
npm config ls -l
```

<http://nipstr.com/>

##### npm install a module from a git url ?

notes, the repo:

- must contains a package.json at it's root dir

``` bash
npm install 'git+ssh://git@github.com:denlab/denlab-examples.git#repo/npm/npmLib' --save
```

#### Searching

##### how to search npm packages (and filter by populariy, …)?

<http://nipstr.com>

### how to read all lines from stdin in one go?

``` shell
# install  module get-stdin
npm i get-stdin
# example
cat > highlight.js <<EOF''
const getStdin = require('get-stdin');

getStdin().then(str => {
console.log(str);
});
EOF
# run
echo foo | node hightlight.js
#> foo
```

## Regex

### General

#### regex cheatsheet?

from: <https://www.regular-expressions.info/refadv.html>

|                     |                |
|---------------------|----------------|
| negative lookahead  | `(?!<regex>)`  |
| lookahead           | `(?=<regex>)`  |
| lookbehind          | `(?<=<regex>)` |
| negative lookbehind | `(?<!<regex>)` |

### Sed

#### use a backreference without grouping?

``` bash
echo bar | sed 's/.*/=> & <=/'
# => bar <=
```

#### remove backslash EOL with sed?

``` bash
echo 'a
b \
c' | sed  '
: again
/\\$/ {
    N
    s/\\\n//
    t again
}'
# a
# b c
```

#### join lines of a files two by two?

``` bash
seq 10  | sed 'N;s/\n/ /'
1 2
3 4
5 6
7 8
9 10
```

#### add a line before the first line of a file?

from:
<https://unix.stackexchange.com/questions/99350/how-to-insert-text-before-the-first-line-of-a-file>

``` bash
     seq 3 > y
     cat y
     #> 1
     #> 2
     #> 3
     sed  -i '1i text' y
      #> text
     #> 1
     #> 2
     #> 3
     cat y
history | tail -3
history | tail -4
history | tail -10


```

#### output lines from regex to N line after it?

``` bash
seq 1 100 \
| sed -rn '/40/,+3 p'
#> 40
#> 41
#> 42
#> 43
```

### Perl

#### Multiline search and replace?

``` bash
perl -pe 's/<search>/<replace>/'  < in.file > out.file
```

## Python

### Pip

#### How to install pip for python 3 ?

- install: on ubuntu/debian:

  ``` bash
  aptitude install python3-pip
  ```

- invoke:

  ``` bash
  pip3 <cmd>
  ```

#### How to install pip for python 2 ?

``` bash
sudo apt update
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
sudo python2 get-pip.py
```

#### pip completion on the command line?

``` bash
pip completion --bash >> ~/.profile
```

or

``` bash
eval "`pip completion --zsh`"
```

from:
<https://pip.pypa.io/en/stable/user_guide/?highlight=completion%20#command-completion>

#### avoid pip warning when pip list in a script?

``` bash
     cat >> ~/.pip/pip.conf <<EOF
[list]
format=columns
EOF
```

### Json

#### Parse a json string?

``` bash
    python <<- EOF
import json
j = json.loads('{"one" : "1", "two" : "2", "three" : "3"}')

#print j['two']
EOF
```

### read from stdin?

``` python
   #!/usr/bin/env python
import fileinput

for line in fileinput.input():
  print line, # comma to avoid double printing newline
```

## GnuMake

### build in a diferent directory than the Makefile?

from:
<https://stackoverflow.com/questions/37467969/how-to-change-current-directory-in-make>
`Makefile`:

``` bash
srcs := main.c foo.c
blddir := bld
objs := $(addprefix $(blddir)/,$(srcs:.c=.o))
exe := $(blddir)/prog

.PHONY: all clean

all: $(exe)

$(blddir):
    mkdir -p $@

$(blddir)/%.o: %.c | $(blddir)
    $(CC) $(CFLAGS) $(CPPFLAGS) -c -o $@ $<

$(exe) : $(objs)
    $(CC) -o $@ $^ $(LDFLAGS) $(LDLIBS)

clean:
    rm -fr $(blddir)
```

### GnuMake language

#### print newline?

`Makefile`:

``` Makefile
    define \n


endef

$(info - newline: ${\n} has been inserted)
```

#### print all variables?

`Makefile`:

``` bash
info:
   @echo "V=$(foreach v, $(.VARIABLES), $(v):$($(v)))" | tr ' ' '\n' | jq -R '.' | jq -Ss '[ .[] | select(length > 0)  | [splits(":")]  | {key: .[0], value: .[1]}] | .[] | .key + ":" + .value' | jq -r '.' | column
```

### print all targets?

``` bash
make -Rrnp  | egrep -v '^#|:= | = ' | grep ':'
```

or

``` bash
@grep '^[^#[:space:]].*:' Makefile
```

or

``` bash
make -prRn | egrep -v $'(^(#|\t)|=)' | egrep ':' 2> /dev/null | cut -d: -f1 | sort
```

### how do I fail the build if an env var is not defined for a particular target?

``` bash
check-env:
ifndef cmd
  $(error cmd is undefined)
endif
```

### how to use a multiline make var in a shell recipe?

Export the make var, and use it in the recipe:

``` bash
make - <<< 'define multiline
- line1
- line2
- line3
endef
export multiline

run:
  @echo
  @echo "demoMultiLine: "
  @echo "$$multiline"
  @echo
'
#>
#> demoMultiLine:
#> - line1
#> - line2
#> - line3
#>
```

### selfDoc

#### how to extract all targets from a Makefile without a make command ?

~~BEGIN<sub>SRC</sub> sh egrep '^\[^. :\]~~:' \< proxy \| sed -r -e
's/.\*/ - &/' -e 's/://g'\] +END<sub>SRC</sub>

## Lorem ipsum

|      |        |                                         |
|------|--------|-----------------------------------------|
| json | online | `curl https://registry.npmjs.com/lobar` |

## Git

### Submodules

#### submodule lifecycle mgmt

| action                        | normal git managed file | for submodule          |
|-------------------------------|-------------------------|------------------------|
| revert file to repo's version | `git checkout --`       | `git submodule update` |

#### submodule: track latest?

``` bash
     # add submodule to track master branch
git submodule add -b master [URL to Git repo];

# update your submodule
git submodule update --remote
```

#### how to deregister a submodule?

Something that has worked for me:

``` bash
moduleToRemove=modules/toRm
git rm -f $moduleToRemove
rm -rf .git/modules/$moduleToRemove
git clean -fd
git reset --hard
```

### Tags / branches lifecycle mgmt

| what   | action               | where        | git command                                                                                               |
|--------|----------------------|--------------|-----------------------------------------------------------------------------------------------------------|
| tag    | create               | local        | `git tag <tagName> <commit>`                                                                              |
| tag    | fetch                |              | `git pull --tags`                                                                                         |
| tag    | push                 |              | `git push origin <tag_name>`                                                                              |
| tag    | delete               | local        | `git tag -d <tagName>`                                                                                    |
| tag    | delete               | remote       | `git push --delete origin <tagName>`                                                                      |
| branch | delete               | local        | `git branch -d feature/example`                                                                           |
| branch | delete               | remote       | `git push origin --delete feature/example`                                                                |
| branch | push && set upstream |              | `git push origin --set-upstream new-branch`                                                               |
| branch | rename               | local/remote | `git branch -m $oldName $newName && git push origin :$oldName && git push --set-upstream origin $newName` |

### rm a big file from history?

``` bash
# given :
# $ git lola --name-status
# * f772d66 (HEAD, master) Login page
| A     login.html
# * cb14e Remove DVD-rip
# | D     oops.iso
# * ce36c98 Careless
# | A     oops.iso
# | A     other.html
# * 5af4522 Admin page
# | A     admin.html
# * e738b63 Index
#   A     index.html

git rebase -i 5af4522

# pick ce36c98 Careless
# pick cb14e Remove DVD-rip
# pick f772d66 Login page

# e ce36c98 Careless
# # pick cb14e Remove DVD-rip
# pick f772d66 Login page

$ git rm --cached oops.iso
$ git commit --amend -C HEAD
$ git rebase --continue


```

### list branch sorted by last commit date?

``` bash
git for-each-ref --sort=-committerdate refs/heads/
```

### grep history?

``` bash
set -- '<regex>'
git grep "$@" $(git rev-list --all)
```

### essential git config?

``` bash
   git config --global color.ui true                \
&& git config --global user.email "you@example.com" \
&& git config --global user.name "Your Name"
```

### config for colors?

``` bash
git config --global color.ui true
```

### Git Lfs essentials?

<div class="center">

wget
<https://github.com/git-lfs/git-lfs/releases/download/v2.1.1/git-lfs-linux-amd64-2.1.1.tar.gz>
tar xavf git-lfs-linux-amd64-2.1.1.tar.gz cd xavf
git-lfs-linux-amd64-2.1.1

./install.sh git lfs install

git lfs track "\*.psd"

\#Make sure .gitattributes is tracked

git add .gitattributes

\#There is no step three. Just commit and push to GitHub as you normally
would.

git add file.psd git commit -m "Add design file" git push origin master

</div>

from: <https://git-lfs.github.com/>

### git & ssh

#### view ssh details?

##### git v2.3.0 or higher:

``` bash
GIT_SSH_COMMAND="ssh -vvv" git clone example
```

#### how to specify the ssh key used by git?

from:
<https://stackoverflow.com/questions/4565700/specify-private-ssh-key-to-use-when-executing-shell-command-with-or-without-ruby>

``` bash
ssh-agent bash -c 'ssh-add /somewhere/yourkey; git clone git@github.com:user/project.git'
```

### Diffing

#### show only the filnames that changed

``` bash
git diff --stat --names-only HEAD^^..HEAD^
```

### Syntax

#### Reference Nthieme commit from HEAD?

``` bash
git checkout HEAD@{30}
```

### Colors

#### git colors=always?

``` bash
git -c color.status=always status
```

### hacks

#### how to git diff even if the repo do not have an empty init commit?

Use the magic sha1: 4b825dc642cb6eb9a060e54bf8d69288fbee4904 Event if
only one commit in a repo (without a base empty commmit),

``` bash
git diff 4b825d..HEAD
#> will return the correct diff
```

## Jq

### Finding

#### recursively find a value by key?

``` bash
echo '[{"a": 1}, {"b": 2}]' | jq '.. | .a? // empty'
#=> 1
```

#### recursively find all values of a given key?

``` bash
$ echo '{
  "a": {
    "b": 1,
    "c": {
      "d": {
        "key": 42
      },
      "e": 666
    }
  }
}' | jq '..| .key?//empty'
#=> [
#=>   42
#=> ]
```

#### recursively find all path leading to a given key

``` bash
echo '{
  "a": {
    "b": 1,
    "c": {
      "d": {
        "key": 42
      },
      "e": 666
    }
  }
}' | jq 'path (..| .key?//empty)'
#=> [
#=>   "a",
#=>   "c",
#=>   "d",
#=>   "key"
#=> ]
```

#### recursively find all path leading to a certain value?

``` bash

echo '{
    "a": {
      "b": 1,
      "c": {
        "d": {
          "key": 42
        },
        "e": 666
      }
    }
  }' | jq 'path(.. | select(. == 42))'
#> [
#>   "a",
#>   "c",
#>   "d",
#>   "key"
#> ]
```

|              |                |
|--------------|----------------|
| jq 'path (.. | .key?//empty)' |

\#=\> \[ \#=\> "a", \#=\> "c", \#=\> "d", \#=\> "key" \#=\> \]

#### get all the values of an object?

``` bash
jq -n '{"a": 1} | .[]'
#=> 1
```

#### does this array contains this element?

``` bash
# - With contains:
jq -n '[4,3,2,1] | contains([0])' #> false
jq -n '[4,3,2,1] | contains([2])' #> true
# - With inside:
jq -n '[0] | inside([1,2])'       #> false
```

### Modifying

#### delete the key of an object?

``` bash
echo '{"k": 1}' | jq 'del(.k)'
```

#### jq update ?

``` bash
   jq -n '{foo:1, bar:10} | .foo |= . + 1 '
#=> {
#=>   "foo": 2,
#=>   "bar": 10
#=> }
```

#### delete in nested datastructure?

``` bash
jq -n '{a:1, b:2, c:3} | del(.. | .a?//empty)'
```

#### recursively delete all keys leading to pair numbers?

Note: Probably could be written more concisely:

``` bash
jq -n '{a:1, b:2, c:3} \
  | del(.. | numbers | (if (. % 2) == 0 then . else empty end))'
```

#### deep merge two nested datastructure?

Use the `*` operator:

``` bash
jq -n '{a: 1, b: {ba: 10, bb: {bba: 42, bbb: 43} }} * {b: {bb: {bba: 49}}}'
#=> {
#=>   "a": 1,
#=>   "b": {
#=>     "ba": 10,
#=>     "bb": {
#=>       "bba": 49,
#=>       "bbb": 43
#=>     }
#=>   }
#=> }
```

### Strings / Regex

#### jq regexes cheet sheat ?

##### jq regex flags

flag usage example:

``` bash
jq -n '"FOO" | test("foo"; "i")'
```

| flags |                                                        |
|-------|--------------------------------------------------------|
| `g`   | Global match, find all not just the first              |
| `i`   | case Insensitive                                       |
| `m`   | Multi line match '.' will match newlines               |
| `n`   | ignore empty matches                                   |
| `p`   | both s and m mode enabled                              |
| `s`   | Single line mode `('^' -> '\\A','$'->\\Z')`            |
| `l`   | find Longest possible matches                          |
| `x`   | eXtended regex format (ignore whitespace and comments) |

##### jq regex functions

| fn        | args1 | args2          | result if match                     | else    | jq program example                     |
|-----------|-------|----------------|-------------------------------------|---------|----------------------------------------|
| `test`    | `val` | `regex`        | `true`                              | `false` | `test("foo")`                          |
| `test`    | `”`   | `regex; flags` | `true`                              | `false` | `test("foo")`                          |
| `match`   | `”`   | `”`            | `{offset,length,string,captures}`   | `empty` | `match("(abc)+"; "g")`                 |
| `capture` | `”`   | `”`            | `map of matches`                    | `empty` | `capture("(?<a>[a-z]+)-(?<n>[0-9]+)")` |
| `scan`    | `”`   | `”`            | `stream of non overlapping matches` | `empty` |                                        |
| `split`   | `”`   | `”`            | `<obsolete>`                        |         |                                        |
| `splits`  | `”`   | `”`            | `stream matches`                    | `?`     | `splits("\\s+")`                       |

#### recursively find containers having a value that match a given regex?

``` bash
   jq.help | jq '.. | select(.[]? | strings | test("transpose"))'
#=> {
#=>   "body": "\nTranspose a possibly jagged matrix (an array of arrays).\nRows are padded with nulls so the result is always rectangular.\n",
#=>   "examples": [
#=>     {
#=>       "input": "[[1], [2,3]]",
#=>       "program": "transpose",
#=>       "output": [
#=>         "[[1,2],[null,3]]"
#=>       ]
#=>     }
#=>   ],
#=>   "title": "`transpose`"
#=> }
#=> (...)
```

#### convert string to upper case?

``` bash
jq -n '"abCD" | ascii_upcase'
#=> "ABCD"
```

#### jq regex replace?

``` bash
sub(regex; string)
jq -n '"foo bar" | sub(" "; "x")'
```

#### jq regex search and replace with backreferences

``` bash
jq -n ' .
| "foo"
| gsub(
    "^(?<pre>.*)(?<n>o)(?<post>.*)$"
  ;
     "\(.pre) - \(.n) - \(.post)"
  )
'
#> "fo - o - "
```

#### substring?

``` bash
     echo foo | jq -R '.[0:1]'
"f"
```

### Quoting

#### given a known char I want to encode it in a json string for consumption by jq

``` bash
char="'"
#>
echo "${char}" | jq -R explode
#> [39]
# Convert the decimal to hex
echo "obase=16; 39" | bc
#> 27
# Encode the char in the string
echo '"\\u0027"' | jq .
#> "'"
```

#### Single Quote

##### single quote as a integer (to escape it in bash)?

``` bash
jq -n '([39] | implode) as $quote | $quote'
#> "'"
```

##### encode a single quote in a string for jq to decode?

``` bash
# Encode the char in the string
echo '"\\u0027"' | jq .
#> "'"
```

### Interop

#### output a array for bash?

``` bash
echo '[1,2,3]' | jq '.|@tsv'
```

### Functional

#### reduce ?

``` bash
echo '[1,2,3]' \
| jq 'reduce .[] as $item (0; . + $item)'
```

#### zip two arrays into a map?

``` bash
jq -n '
  ["a","b"] as $a | [1,2] as $b
| [$a,$b]
| transpose | map({(.[0]): .[1]})
'
#> [
#>  {
#>    "a": 1
#>  },
#>  {
#>    "b": 2
#>  }
#>
```

#### Comma in function args

##### given a list of strings and a list of regexes, for each string check wether it matches all the given regexes or not

``` bash
jq -R <<< 'ac
ab
cb'  \
'.
| [test("a","b")]
| all
'
#> false
#> true
#> false
```

#### clojure's reductions equivalent in jq?

``` bash
     # ex: infinite fibonacci sequence from an infinite seq of integers:
seq 0 Infinity                                                                        \
| jql -cn 'foreach ( inputs , null) as $l ( [1,1] ; [$l, .[0] + $l]?//empty ; .[1])'  \
| head | xargs
```

### Convert

#### TODO element to array?

#### convert an array to a map?

``` bash
     echo '["a", "b", "c"]       ' \
     | jq '[{(.[]): null}] | add '
#=>  {
#=>   "a": null,
#=>   "b": null,
#=>   "c": null
#=>  }
```

### Dates and time

#### Get a human readable date of current time?

``` bash
jq -n 'now | todate'
#> "2017-09-12T18:35:01Z"
```

#### Convert Unix epoch time in second to human readable?

``` bash
# There may be more direct way..
jql -n '
  .
  | 1565108215
  | gmtime
  | strftime("%Y-%m-%dT%H:%M:%SZ")
'
#> "2019-08-06T16:16:55Z"
```

#### parse and format date with jq?

``` bash
jq -n '.
| .ms        = now
| .fmt       = (.ms  | todate  )
| .fmtParsed = (.fmt | fromdate)
'
#> {
#>   "ms"        : 1578648180.671493      ,
#>   "fmt"       : "2020-01-10T09:23:00Z" ,
#>   "fmtParsed" : 1578648180
#> }
```

### Other

#### Undocumented debug options?

``` bash
 jq -n --debug-trace '1'
 #> 0000 TOP
 #> 0001 LOADK 1    null
 #> 0003 RET        1
 #> 1
 #> 0003 RET                <backtracking>
 jq -n --debug-dump-disasm '1'
 #> 0000 TOP
 #> 0001 LOADK 1
 #> 0003 RET
#>
#> 1
```

#### Syntax

##### Liberal Object notation?

``` bash
      # can leave comma after last object:
      jq -n '.
| {
    a: 1,
    b: 2,
  }
'
#> {"a":1,"b":2}
      # Note: do not seems to works wtih arrays ...
```

## Lua

### Call external command and get stdout?

``` bash
 lua <<< '
cmd="seq 3"
f=assert(io.popen(cmd))
for line in f:lines() do
  print(line)
end'
#> 1
#> 2
#> 3
```

### Call external command and get stdout and return code?

it seems not straighforward to do. Seem to have to implement this by
adding some way to get the rc from the command :-(

## Jira

### Jira webapp keyboard shortcut cheat sheet

| action                           | shortcut |
|----------------------------------|----------|
| send card to top of the board    | `s + t`  |
| send card to bottom of the board | `s + b`  |

### command line online help?

``` bash
# repl:
python
# import the wanted module (eg: yaml)
import yaml
# help:
help(yaml.load)
#> Help on function load in module yaml:
#> ...
```

- open the repl: `python`
- import the wanted module;

## CheatSheets

### Clojure

|       |             |                                                                            |
|-------|-------------|----------------------------------------------------------------------------|
| emacs | cider       | <https://github.com/clojure-emacs/cider/blob/master/doc/using_the_repl.md> |
|       | online help | `C-h f RET cider-repl-mode`                                                |

## Doc

### Markdown

#### Cheatsheet?

##### Links?

From:
<https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#links>

``` bash
[I'm an inline-style link](https://www.google.com)

[I'm an inline-style link with title](https://www.google.com "Google's Homepage")

[I'm a reference-style link][Arbitrary case-insensitive reference text]

[I'm a relative reference to a repository file](../blob/master/LICENSE)

[You can use numbers for reference-style link definitions][1]

Or leave it empty and use the [link text itself].

URLs and URLs in angle brackets will automatically get turned into links.
http://www.example.com or <http://www.example.com> and sometimes
example.com (but not on Github, for example).

Some text to show that the reference links can follow later.

[arbitrary case-insensitive reference text]: https://www.mozilla.org
[1]: http://slashdot.org
[link text itself]: http://www.reddit.com
```

#### get values by their path (eg: \["a",1,"b"\])?

``` bash
jq -n '{a: {b: 1}} | getpath(["a","b"])'
#> 1
```

#### Bitbucket flavored markdown

##### How do I create a link to the same page in Bitbucket flavored markdown?

- create link with: `<a name="section"></a>`
- create anchor with: `<a name="section"></a>`
- example:

``` markdown
# main

## chapter 1

[link to chapter 4](#section)

- lorem ipsum
- lorem ipsum
- lorem ipsum
- lorem ipsum

## chapter 2

- lorem ipsum
- lorem ipsum
- lorem ipsum
- lorem ipsum

## chapter 3

- lorem ipsum
- lorem ipsum
- lorem ipsum
- lorem ipsum

## chapter 4

<a name="section"></a>
- lorem ipsum
- lorem ipsum
- lorem ipsum
- lorem ipsum
```

## CI

### Jenkins

#### RestApi

##### Jenkins Rest Api Essentials?

``` bash
curl "$JENKINS_HOST/api/json?depth=1&tree=jobs[name,lastBuild[building]]{1,10000}"
# for all jenkins jobs: get the name and the last build status (building or not)"
```

##### JSON

###### Get all build result with time of particulatar job?

``` bash
j.jsonapi '/job/DevOps/job/maintenance/job/nexus/job/nexus-auto-restart/api/json?tree=builds[*]{1}'
```

##### XML

#### parallel map in groovy?

``` java
@Grab('org.codehaus.gpars:gpars:1.2.1')
import static groovyx.gpars.GParsPool.withPool
withPool{
    println((1..3).collectParallel {it * 2})
}
```

#### dump nested object as json/xml ?

##### native but do not handle cycles

``` java
// stackoverflow if cycle
groovy.json.JsonOutput.toJson(this)
// cycle handled
@Grab(group='com.thoughtworks.xstream', module='xstream', version='1.4.11.1')
import com.thoughtworks.xstream.XStream
(new XStream()).toXML(this)
```

##### with xstream (handle cycles)

``` java
@Grab(group='com.thoughtworks.xstream', module='xstream', version='1.4.11.1')
import com.thoughtworks.xstream.XStream
(new XStream()).toXML(this)
```

###### Demo with cycles

``` java
class Node {
    def    value
    Node[] children
    Node(value, children) {
        this.value = value
        this.children = children
    }
}
@Grab(group='com.thoughtworks.xstream', module='xstream', version='1.4.11.1')
import com.thoughtworks.xstream.XStream
def n=new Node("n",null)
def m=new Node("n", n)
n.children = n
println(new XStream().toXML([n,m]))
```

##### with xstream: json

``` java
@Grab(group='com.thoughtworks.xstream', module='xstream', version='1.4.11.1')
import com.thoughtworks.xstream.XStream
import com.thoughtworks.xstream.io.json.*
println(new XStream(new com.thoughtworks.xstream.io.json.JsonHierarchicalStreamDriver()).toXML(this))
```

#### legacy jobs

##### job-dsl plugin

###### Example job-dsl for matrix project?

``` bash
matrixJob('a') {
    axes  {text ("x", "a","b") }
    steps {shell('echo x: $x') }
}
```

#### Stop an unstoppable build?

``` bash
     # with jenkins cli (groovysh or groovy):
jobName='jobName'
jobNum=111
jenkins.model.Jenkins.instance.getItemByFullName(jobName).getBuildByNumber(jobNum).finish(hudson.model.Result.ABORTED,new java.io.IOException("Aborting build")
```

## Visualization

### Online visualization of Wikipedia's graph?

- <http://tools.medialab.sciences-po.fr/seealsology/>
- <http://seealso.org/>

### Graphviz's dot language?

#### Example of colorscheme usage?

``` bash
.hexl-wrapped
:wq
:wq
:wq
```

``` bash
digraph G {
  node [style="rounded,filled", colorscheme="set28",shape=rectangle,colorscheme="pastel28";];
  a [fillcolor=1];
  b [fillcolor=2];
  c [fillcolor=3];
  d [fillcolor=4];
  e [fillcolor=5];
  a -> b,c;
  c -> e,f;
}
```

### Grafana

#### Grafana custom time formating for the x-axis ?

- It's kind of hidden!
- You need to customize the unit of the x-axis (using an override)
- Then override the unit
- But instead of choosing a pre-defined format:
- Type in the input box:
  - `time: <fmt>`
  - where \<fmt\> can be a format supported by Grafana, some examples:

| fmt        |                                    | ex         |
|------------|------------------------------------|------------|
| YYYY.MM.DD | \<year\>.\<month\>.\<day\>         | 2024.12.20 |
| YYYY MMM   | \<year\>.\<month in human format\> | 2024 Mar   |
| WW         | \<weekNumber\>                     | 3          |
|            | A literal Y, M, D                  |            |

## Video editing

### how to copy part of a video?

``` bash
start=00:30:00
duration=00:00:55
in=originalfile
out=newfile
avconv -ss $start -t $duration -i $in -codec copy $out
```

## Repositories

### Nexus

#### V2

##### self hosted api doc for nexus v2?

\$NEXUS<sub>URL</sub>/nexus-restlet1x-plugin/default/docs/index.html

### Monitoring

#### how to connect jconsole to a jvm running in a remote docker container?

- In the container: Change the start of your java app to include those
  properties:

``` bash
-Dcom.sun.management.jmxremote  \
-Dcom.sun.management.jmxremote.port=8888 \
-Dcom.sun.management.jmxremote.rmi.port=8888 \
-Djava.rmi.server.hostname=$(DOCKER_HOST:?)     \
-Dcom.sun.management.jmxremote.ssl=false  \
-Dcom.sun.management.jmxremote.authenticate=false  \
```

- on the machine where jconsole is running, start a new connection on
  `$DOCKER_SERVER:8888`

# Special

## Unicode(UTF8)

### How can I search by name for unicode char on the command line?

- Could use unipicker: <https://github.com/jeremija/unipicker>
- Install with:

``` shell
nix-env -iA nixpkgs.unipicker
```

### Handy unicode(utf8) chars?

#### Handy emoticon ?

|                             |                 |     |
|-----------------------------|-----------------|-----|
| pay attention               | 🖐 👉 👈 👇 👆 ⚠ |     |
| thumbs up                   | 👍              |     |
| applause                    | 👏y             |     |
| speaker                     | 🔇              |     |
| speaker sound none/high/low | 🔈 🔉 🔊        |     |
| warn                        | ⚠               |     |
| full block                  | █               |     |
| cross                       | ✘               |     |
| arrow                       | ↘               |     |

#### arrows

``` bash
        0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
U+219x  ←   ↑   →   ↓   ↔   ↕   ↖   ↗   ↘   ↙   ↚   ↛   ↜   ↝   ↞   ↟
U+21Ax  ↠   ↡   ↢   ↣   ↤   ↥   ↦   ↧   ↨   ↩   ↪   ↫   ↬   ↭   ↮   ↯
U+21Bx  ↰   ↱   ↲   ↳   ↴   ↵   ↶   ↷   ↸   ↹   ↺   ↻   ↼   ↽   ↾   ↿
U+21Cx  ⇀   ⇁   ⇂   ⇃   ⇄   ⇅   ⇆   ⇇   ⇈   ⇉   ⇊   ⇋   ⇌   ⇍   ⇎   ⇏
U+21Dx  ⇐   ⇑   ⇒   ⇓   ⇔   ⇕   ⇖   ⇗   ⇘   ⇙   ⇚   ⇛   ⇜   ⇝   ⇞   ⇟
U+21Ex  ⇠   ⇡   ⇢   ⇣   ⇤   ⇥   ⇦   ⇧   ⇨   ⇩   ⇪   ⇫   ⇬   ⇭   ⇮   ⇯
U+21Fx  ⇰   ⇱   ⇲   ⇳   ⇴   ⇵   ⇶   ⇷   ⇸   ⇹   ⇺   ⇻   ⇼   ⇽   ⇾   ⇿
```

#### draft

see:
<https://en.wikipedia.org/wiki/List_of_Unicode_characters#Box_Drawing>

``` bash
   ┌┐
   └┘
   ┌┐┌┐
   └┘└┘
   ─┐
   ─┘
   ┌─┐
   └─┘
   ┌──┐
   │  │
   └──┘
   ╭─╮
   ╰─╯




   ┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌┐┌
   └┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘└┘
─
─
═ ║ ╒ ╓ ╔ ╕ ╖ ╗ ╘ ╙ ╚ ╛ ╜ ╝ ╞ ╟ ╠ ╡ ╢ ╣ ╤ ╥ ╦ ╧ ╨ ╩ ╪ ╫ ╬
p
╔════════╗
║        ║
║        ║
║        ║
╚════════╝
```

##### boxes

|          |          |          |
|----------|----------|----------|
| ┌──────┐ | ╭──────╮ | ╭┈┈┈┈┈┈╮ |
| │ │      | │ │      | ┊ ┊      |
| │ │      | │ │      | ┊ ┊      |
| └──────┘ | ╰──────╯ | ╰┈┈┈┈┈┈╯ |
| ╭╍╍╍╍╍╍╮ | ▛▀▀▀▀▀▀▜ | ░░░░░░░░ |
| ┇ ┇      | ▌ ▐      | ░ ░      |
| ┇ ┇      | ▌ ▐      | ░ ░      |
| ╰╍╍╍╍╍╍╯ | ▙▄▄▄▄▄▄▟ | ░░░░░░░░ |
| ▒▒▒▒▒▒▒▒ | ▓▓▓▓▓▓▓▓ | ████████ |
| ▒ ▒      | ▓ ▓      | █ █      |
| ▒ ▒      | ▓ ▓      | █ █      |
| ▒▒▒▒▒▒▒▒ | ▓▓▓▓▓▓▓▓ | ████████ |

#### use char by its code ?

#### unicode number in circle

|     |     |     |     |
|-----|-----|-----|-----|
| 1   | ①   | ❶   | ⬤   |
| 2   | ②   | ❷   |     |
| 3   | ③   | ❸   |     |
| 4   | ④   | ❹   |     |
| 5   | ⑤   | ❺   |     |
| 6   | ⑥   | ❻   |     |
| 7   | ⑦   | ❼   |     |
| 8   | ⑧   | ❽   |     |
| 9   | ⑨   | ❾   |     |
| 10  | ⑩   | ❿   |     |
| 11  | ⑪   |     |     |
| 12  | ⑫   |     |     |
| 13  | ⑬   |     |     |
| 14  | ⑭   |     |     |
| 15  | ⑮   |     |     |
| 16  | ⑯   |     |     |
| 17  | ⑰   |     |     |
| 18  | ⑱   |     |     |
| 19  | ⑲   |     |     |
| 20  | ⑳   |     |     |

#### lambda

``` bash
λ
```

#### elipsis?

``` bash
…
```

#### Checkmarks

##### check / uncheck marks?

``` bash
🗹 DONE stuff done
☐ TODO stuff todo
```

- alternative:

  ``` bash
  ☑

  ```

##### more check marks?

from: <https://en.wikipedia.org/wiki/X_mark>

| Symbol | Unicode Code point (hex) | Name                                  |
|--------|--------------------------|---------------------------------------|
| ☐      | U+2610                   | BALLOT BOX (checkbox)                 |
| ☒      | U+2612                   | BALLOT BOX WITH X (square with cross) |
| ✗      | U+2717                   | BALLOT X (cross)                      |
| ✘      | U+2718                   | HEAVY BALLOT X (bold cross)           |
|        |                          |                                       |

``` bash
| Symbol | Unicode Code point (hex) | Name                                               |
|--------+--------------------------+----------------------------------------------------|
| ×      | U+00D7                   | MULTIPLICATION SIGN (z notation Cartesian product) |
| ╳      | U+2573                   | BOX DRAWINGS LIGHT DIAGONAL CROSS                  |
| ☓      | U+2613                   | SALTIRE (St Andrew's Cross)                        |
| ✕      | U+2715                   | MULTIPLICATION X                                   |
| ✖      | U+2716                   | HEAVY MULTIPLICATION X                             |
| ❌     | U+274C                   | CROSS MARK                                         |
| ❎     | U+274E                   | NEGATIVE SQUARED CROSS MARK                        |
| ⨉      | U+2A09                   | N-ARY TIMES OPERATOR                               |
| ⨯      | U+2A2F                   | VECTOR OR CROSS PRODUCT                            |
| 🗙      | U+1F5D9                  | CANCELLATION X                                     |
| 🗴      | U+1F5F4                  | BALLOT SCRIPT X                                    |
| 🞩      | U+1F7A9                  | LIGHT SALTIRE                                      |
| ×      | U+00D7                   | MULTIPLICATION SIGN (z notation Cartesian product) |
| ╳      | U+2573                   | BOX DRAWINGS LIGHT DIAGONAL CROSS                  |
| ☓      | U+2613                   | SALTIRE (St Andrew's Cross)                        |
| ✕      | U+2715                   | MULTIPLICATION X                                   |
| ✖      | U+2716                   | HEAVY MULTIPLICATION X                             |
| ❌     | U+274C                   | CROSS MARK                                         |
| ❎     | U+274E                   | NEGATIVE SQUARED CROSS MARK                        |
| ⨉      | U+2A09                   | N-ARY TIMES OPERATOR                               |
| ⨯      | U+2A2F                   | VECTOR OR CROSS PRODUCT                            |
| 🗙      | U+1F5D9                  |   CANCELLATION X                                   |
| 🗴      | U+1F5F4                  |   BALLOT SCRIPT X                                  |
| 🞩      | U+1F7A9                  |  LIGHT SALTIRE                                     |
```

#### colored utf8 chars

##### some cool

|        |     |
|--------|-----|
| 127752 | 🌈  |
| 127744 | 🌀  |

##### some

|              |                                                                |
|--------------|----------------------------------------------------------------|
|              | 01234567891111111111233333333344444444445555555556             |
|              | ……….0123456789012345678901234567891234567890                   |
| 9700-9750:   | ◤◥◦◧◨◩◪◫◬◭◮◯◰◱◲◳◴◵◶◷◸◹◺◻◼◽◾◿☀☁☂☃☄★☆☇☈☉☊☋☌☍☎☏☐☑☒☓☔☕         |
| 9750-9800:   | ☖☗☘☙☚☛☜☝☞☟☠☡☢☣☤☥☦☧☨☩☪☫☬☭☮☯☰☱☲☳☴☵☶☷☸☹☺☻☼☽☾☿♀♁♂♃♄♅♆♇             |
| 9800-9850:   | ♈♉♊♋♌♍♎♏♐♑♒♓♔♕♖♗♘♙♚♛♜♝♞♟♠♡♢♣♤♥♦♧♨♩♪♫♬♭♮♯♰♱♲♳♴♵♶♷♸♹ |
| 9850-9900:   | ♺♻♼♽♾♿⚀⚁⚂⚃⚄⚅⚆⚇⚈⚉⚊⚋⚌⚍⚎⚏⚐⚑⚒⚓⚔⚕⚖⚗⚘⚙⚚⚛⚜⚝⚞⚟⚠⚡⚢⚣⚤⚥⚦⚧⚨⚩⚪⚫        |
| 9900-9950:   | ⚬⚭⚮⚯⚰⚱⚲⚳⚴⚵⚶⚷⚸⚹⚺⚻⚼⚽⚾⚿⛀⛁⛂⛃⛄⛅⛆⛇⛈⛉⛊⛋⛌⛍⛎⛏⛐⛑⛒⛓⛔⛕⛖⛗⛘⛙⛚⛛⛜⛝       |
| 9950-10000:  | ⛞⛟⛠⛡⛢⛣⛤⛥⛦⛧⛨⛩⛪⛫⛬⛭⛮⛯⛰⛱⛲⛳⛴⛵⛶⛷⛸⛹⛺⛻⛼⛽⛾⛿✀✁✂✃✄✅✆✇✈✉✊✋✌✍✎✏    |
| 10000-10050: | ✐✑✒✓✔✕✖✗✘✙✚✛✜✝✞✟✠✡✢✣✤✥✦✧✨✩✪✫✬✭✮✯✰✱✲✳✴✵✶✷✸✹✺✻✼✽✾✿❀❁            |
| 10050-10100: | ❂❃❄❅❆❇❈❉❊❋❌❍❎❏❐❑❒❓❔❕❖❗❘❙❚❛❜❝❞❟❠❡❢❣❤❥❦❧❨❩❪❫❬❭❮❯❰❱❲❳       |
| 10100-10150: | ❴❵❶❷❸❹❺❻❼❽❾❿➀➁➂➃➄➅➆➇➈➉➊➋➌➍➎➏➐➑➒➓➔➕➖➗➘➙➚➛➜➝➞➟➠➡➢➣➤➥          |
| 10150-10200: | ➦➧➨➩➪➫➬➭➮➯➰➱➲➳➴➵➶➷➸➹➺➻➼➽➾➿⟀⟁⟂⟃⟄⟅⟆⟇⟈⟉⟊⟋⟌⟍⟎⟏⟐⟑⟒⟓⟔⟕⟖⟗           |

##### zodiac

♈♉♊♋♌♍♎♏⛎♐♑♒♓

##### zodiac unambiguous

♈♉♌♎⛎♐♑♒♓

##### zodiac even more unambiguous

♈♉♌♎⛎♐♒
