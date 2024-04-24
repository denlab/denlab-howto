
# Table of Contents

-   [Operating Systems](#orge69ba8f)
    -   [Linux](#org739bc00)
        -   [Shells](#org8377233)
            -   [Bash](#org5aac2ac)
                -   [Non interactive](#org1d8df03)
                    -   [Use alises in non interactive bash?](#org37fa6ab)
                -   [Interactive use](#org1b12c0f)
                    -   [Complete](#org0e8950b)
                        -   [bash completion cheat sheet?](#org7737651)
                -   [Common tasks](#org85e6fed)
                    -   [Random](#org38d3aaa)
                        -   [Generate a lot of (pseudo) random data faster than /dev/urandom?](#org228686d)
                    -   [generate random string?](#orgae1f569)
                    -   [decimal / hex (and opposite) conversion?](#orgd68970f)
                    -   [redirect output in variable?](#orgf913d32)
                    -   [stop on error (even in subshell)?](#org31824b9)
                        -   [workaround1: set -e explicitly for each subshell](#org37e8182)
                        -   [workaround2: write shell script with '&&'](#orgeb3c04f)
                        -   [workaround3: write shell script with '||'](#org0de6550)
                    -   [loop over args?](#org32063c6)
                    -   [parse a string as args](#org695ae74)
                    -   [How to save a script params (before doing modifications like shift, ..)?](#orga6069f5)
                    -   [generate uuid?](#orgb81cbf4)
                    -   [List all possible commands (including functions)?](#org79701d3)
                -   [Programming](#org614aee1)
                    -   [Misc](#orgf6c84a0)
                        -   [bash pointer variables?](#org89b8898)
                    -   [Control flow](#org7cca2b8)
                        -   [Tests/Conditionnals](#orgc796d43)
                            -   [ternary operator in bash?](#org61f80ab)
                            -   [cheatsheet](#org16fec41)
                            -   [test files cheatsheet](#org43ac490)
                        -   [Looping](#org089f528)
                            -   [loop over cmd output with while?](#org82d0747)
                            -   [c style for loop?](#org3885687)
                        -   [switch case ?](#orgb2a9093)
                    -   [Types](#org5ae90f3)
                        -   [Datastructures](#orge0c4d5a)
                            -   [Arrays](#orga2860d8)
                                -   [Associative arrays](#orgae61a54)
                                    -   [declare, print, &#x2026;](#org318761a)
                                    -   [copy ?](#org37e3a22)
                                -   [Normal arrays](#org2d72d20)
                                    -   [declare/literal/set/getAll/size](#org969698d)
                                    -   [access empty array?](#orgc18cac6)
                                    -   [parse string to array?](#org38e4c06)
                                    -   [clone an array into another array?](#org6a04046)
                        -   [Strings](#orgd4bbc9f)
                            -   [bash strings cheat sheet?](#org78b81a6)
                            -   [Syntax](#org53f2099)
                                -   [ssh escape sequence?](#org03e5b55)
                            -   [Printf?](#org11e978c)
                                -   [print args, one by line with its position?](#orgc1f24b4)
                                -   [print a line accross the terminal?](#orgb0464ec)
                -   [Bash options](#org94826d2)
                    -   [How to get the values of errexit etc (set by set -e &#x2026;)?](#org61817a8)
                    -   [option so bash export all declared variables?](#org86cfb63)
                    -   [option to glob also hidden files?](#org33b5ad4)
                    -   [Bash config files](#orgda122ac)
                        -   [Order of loading of bash init files?](#org010350f)
                -   [Files and Redirections](#orgbb328cb)
                    -   [Stdin/out/err](#orgab99452)
                        -   [redirect file to stdin on the left side?](#orge4d1ca1)
                        -   [redirecting stdout, stderr](#orga33be96)
                        -   [use stdout as a file (with filename) for another cmd?](#org8f2b16c)
                        -   [swap stdout and stderr?](#org84db453)
                        -   [write to stdin of a backround process?](#orgd7ce4a3)
                        -   [here-string with indentation in src but not in output?](#org234673a)
                        -   [File Descriptors](#org63a8a11)
                            -   [Named File Descriptors](#org72da3b4)
                                -   [define a named file descriptor to a writable file and write to it?](#org34fbe7a)
                        -   [how to know if stdout is a terminal?](#org56bb27f)
                        -   [Printout](#orga16e179)
                            -   [Padding](#orgd36d08e)
                                -   [right / left pad with printf?](#org9bd69c7)
                                -   [zero padding numbers?](#orge04797a)
                    -   [Tmp files](#org62c4a1c)
                        -   ["delete while still open" trick to be sure a file will be deleted?](#org925d81a)
                -   [Env](#org996624c)
                    -   [how to run a command with the env cleared?](#org415f308)
                    -   [export bash function?](#org22ad07a)
                    -   [Replace all env var by values in file?](#org294ac38)
                    -   [how to make bash source a file before running a command?](#org5ed0d61)
                    -   [how to test if a variable is defined?](#org1e9a24a)
                -   [Debugging](#org9127fbc)
                    -   [how to make a bash script stop and print current line before running it?](#orge7a5d34)
                    -   [how to execute a script step by step?](#org4bd5e53)
            -   [Zsh](#org86ab30b)
        -   [Editors](#orgfd34fdd)
            -   [Emacs](#org2e296eb)
                -   [file type indicator header for emacs?](#orgbc138a5)
                -   [edit a file remotely over ssh with tramp?](#org4399d3e)
                -   [Spacemacs](#org1cc429d)
                    -   [Troubleshoot](#org634ec79)
                        -   [org-mode not working after a fresh install of spacemacs + practicalli config?](#orgc9f4c41)
                    -   [Clojure](#org5c83d69)
                        -   [Tests](#org954a30b)
                            -   [Switch between implementation and test in Spacemacs Clojure?](#org9a1e93b)
                            -   [Clojure's switch between implementation and test: how to create the test if not exists?](#org2595e3b)
                    -   [Install](#orgd519420)
                        -   ["No public key for 066DAFCB81E42C40" ?](#org6386247)
                    -   [evil cheat sheet?](#orgbe5f8c4)
                    -   [run a command and get the output in the current buffer?](#org9fff76e)
                        -   [Emacs](#orgef7985b)
                        -   [fix error when installing spacemacs: "No such file or directory, evil"?](#orgdcbc5c5)
                        -   [Spacemacs (evil mode)](#org4016d53)
                    -   [Universal argument in spacemacs (evil mode)?](#org33bc9d2)
                    -   [Project](#org641fcb9)
                        -   [`helm-project-do-ag` how to filter by file types?](#org1e160e4)
                        -   [search and replace in project?](#org434849c)
                    -   [SearchAndReplace](#org82a0bfb)
                        -   [How to search and replace starting at the cursor position?](#orgc9df0bc)
                    -   [Folding](#org01fa98f)
                        -   [a promising mode?](#orgb70526f)
                    -   [Misc](#org02bcd79)
                        -   [Exit emacs mode (holy mode) entered by error?](#orgf255f9e)
                            -   [pipe in table with code block](#org1b25ce4)
                            -   [org mode how to use pipes in tables? <code>[0%]</code>](#orgcf741e8)
                                -   [using contants?](#org77dc87b)
                                -   [macros?](#org92d83d0)
                                -   [latex?](#org678db24)
                                -   [html?](#org12767de)
                                -   [compute cells values ?](#org418a3f8)
                    -   [twbs export html](#org9c8fbd2)
                    -   [easy templates?](#orgd5f3a22)
                    -   [Babel](#org62c7074)
                        -   ["eval is disabled for shell"](#orgabe09f0)
                            -   [add to your init file](#org1e208d6)
                            -   [in the org mode file](#orgfcd1805)
                            -   [stop emacs](#org5da2169)
                            -   [remove the folder `~/.emacs.d/elpa/org-plus-contrib-*`](#orgaa91b01)
                            -   [start emacs](#org6f96e06)
                            -   [try to eval with `C-c C-c`](#orgd28491f)
                    -   [Spacemace: disable mouse under termux ?](#org04f4a15)
                -   [install emacs25 on ubuntu16.04?](#org78249a7)
                -   [Org-Mode](#orgc7b31bc)
                    -   [key binding to insert a code block?](#org1d884a0)
                    -   [How to track time spen on TODO STARTED DONE?](#org2f12aad)
                        -   [Text](#org6ab59b3)
                            -   [Less](#org244a7fd)
                                -   [how to search for a tab ?](#orgf564f54)
                            -   [Tail](#orgc1f4b34)
                                -   [skip the N first lines of input with tail?](#org109773c)
                    -   [Package managers](#org768d568)
                        -   [find which package manager is used on this machine?](#org0fcdcaf)
                        -   [apk](#orgb2e21c7)
                            -   [equivalent of apt-file search?](#org10e4f4e)
                    -   [Software packages](#org2a877c5)
                        -   [Admin](#org00a6e01)
                            -   [Tmux](#orgd48327e)
                                -   [how do i detach other client when reattach to session?](#org8f69829)
                                -   [create a new session specifying the name?](#org7cd6efb)
                                -   [reload .tmux.conf?](#org901c210)
                                -   [bindings to install plugins?](#org1764a74)
                                -   [bindings to upgrade plugins?](#orgb82505a)
                                -   [use another shell as the default (ex: zsh instead of bash)](#org2de64e7)
                            -   [Zip](#org28341e6)
                                -   [list content of a zip file from stdin?](#org46f2491)
                            -   [Apt-get](#org7fbc1aa)
                                -   [dpkg show all installed files of a .deb?](#org99a47dc)
                                -   [apt-get: what package provide this file?](#orgfbd4195)
                                -   [fix a broken state ?](#orge8f5472)
                                -   [install a specific version?](#org8e423bb)
                                -   [show version that a package can be upgraded to?](#org368ec14)
                                -   [customize output of dpkg -l?](#org9e5b939)
                                -   [Alternative](#org517e392)
                                    -   [rebuild alternative for a particular package?](#org45a8bc1)
                            -   [Rpm](#org74374e9)
                                -   [list files installed by a package?](#org28ff7a8)
                                -   [list only names of packages?](#orgb5cc936)
                            -   [Ps](#orgfa6f5cd)
                                    -   [list all processes, show only pids?](#org74b7a59)
                                    -   [ps: List processes with their elapsed running time ?](#orgaf4d846)
                            -   [SeLinux](#orgc68721f)
                                -   [status/enable/disable selinux?](#org63cd87f)
                            -   [Dd](#orgc2e0485)
                                -   [Typical dd invocation to copy a partition disk ?](#orge7cc59b)
                                -   [Show progress with dd?](#org1336105)
                            -   [Systrace](#org642d5a6)
                                -   [How to cp with a progress bar using strace?](#orgfd340f5)
                            -   [Security](#orgaa7e176)
                                -   [Other](#orge51f450)
                                    -   [list recent ssh connection on a host?](#org8a338e9)
                                -   [SeLinux](#orgca51537)
                                -   [status/enable/disable selinux?](#org1d8cc96)
                                -   [User/groups management](#orgb8532e6)
                                -   [Users's group management command](#org8d6e75d)
                        -   [Graphics](#orgf0e5988)
                            -   [Imagemagick](#org43206c5)
                                -   [how to change the quality of a jpeg image?](#org6ed0e64)
                            -   [Ffmpeg](#org9c4fdea)
                                -   [How to get only the 1st n minutes of videos?](#org78fb7a9)
                                -   [Record desktop?](#org8bef31c)
                                    -   [linux](#org5b2be16)
                                    -   [windows](#org04439b6)
                                        -   [directshow](#org4bc6f31)
                                        -   [built-in gdi screengrabber](#orgae3b788)
                                            -   [all displays](#org3e5e268)
                                            -   [region](#org4a9e878)
                                            -   [window](#orgce3bc5f)
                                            -   [hw encoding](#org1f60ca4)
                                    -   [lossless recording](#org4aa8618)
                        -   [Math](#orgc64b5e9)
                            -   [Bc](#org8aee6db)
                                -   [float precision?](#org79d8b5b)
                        -   [Net](#orge277e1e)
                            -   [General](#orge43bef5)
                                -   [Count all current tcp connection on linux host?](#orgc15a26f)
                                -   [List all tcp connections on a linux host?](#orge2366c8)
                                -   [List all ssh connections on a linux host?](#org97b4417)
                            -   [Netcat](#orgf848757)
                                -   [simple web server with netcat?](#orgcc2d4d9)
                            -   [Ssh](#org45777e3)
                                -   [How to check the **actual** configuration of a sshd server?](#org8e0d148)
                                -   [Ssh Tunnels](#org3341cb4)
                                    -   [ssh tunnels explained](#orga494265)
                                    -   [ssh reverse tunnel ?](#orgce68d85)
                                    -   [ssh tunnel example?](#org5ea4816)
                                    -   [ssh tunnel socks "channel 2: open failed: administratively prohibited: open failed"](#orgf8c708d)
                                -   [Passwordless and keyless ssh login](#org3b8a97b)
                                    -   [ssh without password or key?](#org85caf80)
                                    -   [ssh root without password or key?](#org2355bec)
                                    -   [working conf for openssh 7.1 on alpine?](#org87b5c94)
                                -   [generate public private key pair](#org465cda4)
                                -   [ssh or scp in a script without entering password ?](#org33602fd)
                                -   [get public key from private key ?](#org47990f0)
                                -   [Disable host verification?](#org28e71b9)
                                    -   [for one session](#org070a617)
                                    -   [for all sessions:](#org2c18b5f)
                                    -   [for all sessions and all hosts:](#orgd495b60)
                                -   [copy pub key to remote authorized<sub>keys</sub>?](#org594b04e)
                                -   [workaround for a ssh slow login on a particular server?](#orgc75880c)
                                -   [copy between two ssh hosts without intermediary copy?](#orgdb13cb1)
                                -   [disable host has in known<sub>hosts</sub>?](#org0241209)
                                -   [Non interactive sftp session with non pubkey password?](#orgbaff6a2)
                                -   [How to view actual ssh config (system wide + user config + cmdline/env)?](#orga0542f1)
                                -   [Sshfs](#orgb2a3ee0)
                                    -   [how to mount remote fs with sshfs?](#org2cd1a0e)
                                    -   [how to umount a mounted sshfs?](#orgaec71d3)
                                    -   [sshfs with autossh?](#orgaaefd41)
                                -   [alpine ssh send<sub>pubkey</sub><sub>test</sub>: no mutual signature algorithm ?](#orgd537152)
                            -   [Openssl](#org772a531)
                                -   [SslCerts](#org0927abe)
                                    -   [generate a self certificate for localhost (without prompt)?](#org2eb4daa)
                                    -   [How to add root cert to an Ubuntu install?](#org68d1cc5)
                                    -   [best explaination of "everything derive from the root ca key"?](#orgf30fd42)
                                    -   [Generate a self signed ca cert and key, and a cert and key for a how that works on the command line and chrome?](#org3b047ac)
                            -   [Rsync](#orgbb0e922)
                                -   [how to specify the port in rsync?](#org09906db)
                                -   [how to exactly copy a local directory to a remote host (remove extra remote file if necessary) and back ?](#orgeb11ae9)
                                -   [rsync and trailing slash behavior?](#org7d50044)
                            -   [Openvpn](#org10971ee)
                                -   [list and connect with openvpn from cli?](#org9cae677)
                                        -   [with nmanager](#orge807dba)
                            -   [Dns](#org91c5712)
                                -   [Get ip from hostname?](#orgf6c419e)
                                -   [Get hostname from ip?](#org75b7fec)
                            -   [Network analysis](#orgcfaa266)
                                -   [Ngrep](#org84a5a73)
                                    -   [Ngrep example?](#orgc46de72)
                        -   [Misc](#orgb95e225)
                            -   [VirtualBox](#org804b8ad)
                                -   [Windows host](#org49da054)
                                    -   [Linux Guest](#org7c2a90e)
                                        -   [How to disable HyperV so VBox can run correctly?](#org2741da2)
                                        -   [How to correctly install guestAdditon on ubuntu22.04?](#orgda5a558)
                                        -   [How to correctly install guestAdditon on debian12?](#org41e71dd)
                                            -   [Hint1](#org69aca69)
                                            -   [Hint2](#org7fee9d4)
                                            -   [Hint3](#org7d8c49f)
                        -   [Utils](#orgc14360c)
                            -   [Comm](#org2ed96ed)
                                -   [comm summary?](#orgfa6a16d)
                                -   [binary to compare the content of files (all in a but not in b, etc)?](#orga6d31d4)
                            -   [Find](#orgc2f3bc6)
                                -   [find files modified in the last x minutes](#org3a7631f)
                                -   [find files modified in the last x days](#orgdebce52)
                                -   [handle filenames with spaces ?](#org86c880f)
                                -   [sort files by modified date?](#orgd4febc7)
                                -   [find files bigger than x MBytes?](#org18704bd)
                                -   [find filename with regex?](#org458e546)
                                -   [find with logical or?](#orgea85648)
                            -   [Grep](#orgef913f9)
                                -   [Non capturing group?](#org4eee469)
                                -   [cheat sheet](#org5073a34)
                                -   [Character class for blanks?](#org2193670)
                                -   [match pattern on multiples lines?](#org4337671)
                            -   [Tr](#orge3e2367)
                                -   [remove all non printable characters from a file with tr ?](#org6fca69b)
                            -   [Nohup](#orgb93bedc)
                                -   [run nohup?](#org60208bd)
                            -   [MoreUtils](#org379e8e7)
                                -   [read / process / write the same file ?](#orgec06854)
                                -   [instead of xxx use moreutils yyy?](#org8c4ec4c)
                            -   [Stat](#org37cb109)
                                -   [Custom format with newlines?](#org9560418)
                            -   [Tar](#orgd6fc853)
                                -   [list the content of a remote tgz without intermediary files?](#org1035940)
                                -   [send tar compressed archive to stdout?](#orga94be02)
                                -   [recompress without intermediary files?](#org21bed7a)
                                -   [tar: archive files name coming from stdin?](#org7ae7c2c)
                                -   [Specify arbitrary order of files in tar file?](#orgc8efc6a)
                            -   [Bsdtar](#orgd81b66d)
                                -   [recompress without intermediary files?](#orgaee2822)
                            -   [Tree](#orga9fc54e)
                                -   [print tree with unicode characters?](#org25ca910)
                            -   [Xargs](#org91cb455)
                                -   [run a cmd on each line of stdin with xargs?](#org0a87480)
                                -   [use bash function?](#org3dea3d0)
                            -   [Zip](#org8ee6ce7)
                                -   [unzip a single file from archive?](#org0acf89c)
                                -   [compress dir recursive?](#orge7beda9)
                                -   [compress dir but exclude a directory ?](#org8ee7e32)
                        -   [Web](#org07276b1)
                            -   [Curl](#org42e2a30)
                                -   [follow redirects?](#org5d7a44a)
                                -   [post data from stdin?](#orge296a55)
                            -   [Wget](#org1f4b418)
                                -   [recursively download for example nexus ?](#org6766497)
                                -   [equivalent of curl -sS?](#orga852f1d)
                            -   [Nginx](#orgfbbd29f)
                                -   [Check config syntax?](#org5ba97b4)
                            -   [Lynx](#orgebf8f46)
                                -   [html to text by piping to lynx?](#orgea4d321)
                        -   [X11](#orgd974a39)
                            -   [NxClient](#orgafc2964)
                                -   [keyboard issue when connecting with nx ?](#org1cb1535)
                    -   [Hardware](#org2e121aa)
                        -   [Sound](#org342a752)
                            -   [Troubleshoot sound in Linux/Ubuntu ?](#org6309752)
                        -   [Ubuntu/Debian change the machine uuid (useful when the dhcp id is derived from it) ?](#orgf0d4c91)
                    -   [Sysadmin](#org0cdd21b)
                        -   [System Services (systemctl, &#x2026;)](#org5251b98)
                            -   [Systemd](#org6febee5)
                                -   [systemd / systemV cheatsheet](#orgd2ed86c)
                                -   [follow logs of a particular systemd service?](#org5bccfe5)
                                -   [restart network on systemd?](#orge19fedf)
                            -   [General Linux](#org57fce4c)
                                -   [Linux reload service config](#org4d3fa23)
                            -   [Centos](#org878cc74)
                                -   [create a new systemd unit file?](#orgda7caa4)
                                -   [the hostname keep coming back at its previous state after each restart?](#orge7124b4)
                        -   [User Admin](#orgd98c61d)
                            -   [how to add a group to a user ?](#orge25b2b8)
                            -   [add a user with specific groups ?](#orga913e0f)
                            -   [get the groups of a user ?](#org0b03270)
                            -   [change the shell of a user?](#orgdbedaad)
                            -   [remove a user?](#orga1e27e4)
                            -   [add a user?](#org4bd0299)
                            -   [view login activity?](#org3c416f8)
                        -   [Sudo](#orgdef9535)
                            -   [allow sudo without password for a user?](#org0e3db5a)
                            -   [execute a cmd as another user?](#org1ead71d)
                        -   [Devices (hdd,&#x2026;)](#org1748b55)
                            -   [eject a cd rom?](#orga56d7ee)
                            -   [how to list all supported FS for mounting?](#orgcfb6c1d)
                            -   [how to fix a screwed nfs mount without rebooting?](#org72bb245)
                            -   [Swap](#orgd009c96)
                                -   [manage swap (status, enable, disable)?](#orgad30cea)
                        -   [Dns](#orgdc564ca)
                            -   [How to query all the entries of a dns server ?](#org18dc00f)
                        -   [recover a lost root password at boot with grub](#org441ad16)
                        -   [Special files](#org3b64cd8)
                            -   [Removed /dev/null how to remake it?](#orgfc20d9d)
                    -   [Terminal](#org6408ddb)
                        -   [Colors](#orgd9ae163)
                            -   [simple way to color output with grep?](#org3128ab6)
                        -   [Replace capslock by ctrl in console?](#org276ec20)
                            -   [working also in virtual consoles?](#org05e4afd)
                            -   [working under X?](#orge853f22)
                        -   [replace capslock by ctrl in a terminal under X ?](#org87954a8)
                        -   [change language keyboard mapping](#orga8b852d)
                        -   [change text mode resolution?](#org79ac511)
                        -   [paste example?](#org6ee6b2a)
                        -   [show which key is pressed in a terminal?](#org4f7a59a)
                        -   [get the number of rows and colums?](#orgfdf0b85)
                        -   [Presentation conventions](#org197b7b1)
                            -   [display a command line?](#org24d59ff)
                    -   [Io](#orgbfac877)
                        -   [Disk](#org0c33116)
                            -   [list files open by a particular process](#orgf619b61)
                            -   [how to do a simple bind mount?](#orge843091)
                            -   [Disks](#orga835aae)
                                -   [Disks caches](#orge13ce5a)
                                    -   [how do I clear the disk caches in Linux?](#org09b55a1)
                            -   [Images](#org61de31a)
                                -   [Copy an img file to a disk with bad blocks?](#org2abf8e1)
                        -   [RemoteFs](#org041ac18)
                            -   [nfs](#org7541051)
                                -   [How to mount a remote nfs drive on a linux host?](#org4977719)
                                -   [List all nfs share of a remote nfs server?](#org6ecb77e)
                        -   [VirtualFs](#orgf40cbba)
                            -   [How to get the load with /proc?](#orgeecc0e7)
                        -   [Processes](#org27eecdb)
                            -   [How to find how are connected by pipes running processes?](#orgee54992)
                            -   [Autossh](#orgc6f0d9f)
                                -   [How to keep a ssh sesssion open with autossh?](#org5065d11)
                        -   [Completion](#org9b20497)
                            -   [using bash's autocomplete with zsh?](#org03a2572)
                            -   [Copy an existing completion for another command?](#org276a6bd)
                    -   [X](#org53a8622)
                        -   [copy to system clipboard from the command line?](#org519d09e)
                        -   [dual monitor setup: turn off one of the monitor and not the other?](#orgf9d8dbe)
                        -   [force X resolution when an external monitor is not detected?](#orga03d798)
                        -   [Fonts](#orgfada6f3)
                            -   [List fonts?](#orgcb8899f)
                        -   [Gnome](#orga5d5f65)
                            -   [How to logout from Gnome with the terminal?](#orgf711da8)
                        -   [Remote](#orgafee2ba)
                            -   [NoMachine NX](#orgdf43fa7)
                                -   [How to administrate the NX server?](#orgacea592)
                        -   [Xpra](#org4bbb9e7)
                            -   [xpra quickstart on ubuntu?](#orgf5f3fa9)
                        -   [Window managers](#org114f632)
                            -   [Gnome](#org034cfb0)
                                -   [open the network manager (for proxy settings) from the command line?](#org60038d5)
                                -   [Gnome 3](#org73b2314)
                                    -   [Gnome Shell](#org77f6650)
                                        -   [how to have cpu,etc montoring in the top bar?](#org2f7c3d9)
                                        -   [how restart gnome shell?](#org841ce22)
                                            -   [Gnome Shell Extensions?](#org82ba931)
                                                -   [how to manage enabling/disabling gnome shell user extensions (command line)?](#org63d1073)
                        -   [Xdg-open](#org29cca4d)
                            -   [choose browser to use with xdg-open?](#orgd717920)
                    -   [Converting formats](#org1bbb2a1)
                        -   [Converting human readable <-> bytes](#org687ea21)
                        -   [convert file format table?](#org45e2be0)
                        -   [Pdf](#org51444be)
                            -   [replace a string in a pdf file ?](#org45a29f9)
                        -   [units](#orgadbc56a)
                    -   [Locale](#org971f5af)
                        -   [fix locale config?](#org740bf7b)
                            -   [ubuntu / debian](#org689e2f8)
                            -   [centos](#orgd42b360)
                    -   [Network](#org7e0321a)
                        -   [How to trace all network activity?](#org63ae834)
                        -   [how to get the ip adresse of the local host ?](#org7dc2092)
                        -   [list open ports?](#org469c4a8)
                        -   [Proxy](#orgc9b578d)
                            -   [Request with curl through a proxy over ssh ?](#org1466218)
                        -   [how to list all open ports and their associated processes?](#orgedaa175)
                        -   [Mtu](#org1044055)
                            -   [temporary change the mtu of a network interface?](#orga1d1436)
                        -   [Wifi](#orga1954f0)
                            -   [Connect to wifi with via command line?](#org57b31af)
                                -   [Using nmcli](#orga52e1b3)
                    -   [Compression](#org558bea0)
                        -   [compress stdin, uncompress to stdout ?](#org105dbb7)
                        -   [Xz](#org745ffe2)
                            -   [compress/decompress stdin with xz?](#org68e6cd3)
                            -   [decompress stdin with xz?](#org88fc7e6)
                    -   [Fs](#orgca41595)
                        -   [difference between `/bin`, `/usr/bin`, `/usr/local/bin`?](#org1951ec2)
                        -   [Zfs](#orgb74a042)
                            -   [Dedup](#orgec1f342)
                                -   [Size RAM for online dedup ?](#org0c485c8)
                                -   [Current RAM usage for dedup on a particular zfs pool?](#org763c666)
                            -   [Create a new zfs "env" in a file?](#orgab9b643)
                            -   [How to destroy a zpool ?](#org54e80b4)
                            -   [How to add new devices to an exising pool?](#org71cd56d)
                            -   [How to view the dedup and compression properties of pools?](#org3115007)
                            -   [Snaphot clones, etc](#org4ca8ea0)
                            -   [Send/receive](#org4c3b66e)
                                -   [How to do send a whole pool to another pool?](#org06b1c03)
                                -   [How to to send a whole pool with dedup=on to another pool but with dedup=off?](#org7561ca9)
                                -   [zfs partial send / receive ?](#org48b2ea2)
                            -   [How to list all devices of a pool?](#org03cc13c)
                            -   [Grow a zfs pool when a device has grown?](#org7201064)
                        -   [AccessControl](#orgfd7090a)
                            -   [Set read right reccursive for all files and and dir in a given dir?](#org2d12e3a)
                    -   [Distribs](#org9a48f81)
                        -   [Alpine](#org0a1b5de)
                            -   [Apk](#orgdff903e)
                                -   [use a http cache for apk ?](#orgf1e7282)
                                -   [add a repo?](#org4ec761b)
                                -   [how to install telnet on alpine ???](#org8ce6dee)
                                -   [repo key rotated? (UNTRUSTED signature when `apk add`)?](#orgf9a0a03)
                        -   [Debian](#orgdd44845)
                            -   [Old debian GPG invalid signature when apt-get update?](#orgd7f3f11)
                            -   [Bookworm](#org049da55)
                                -   [how to install java8 on Debian Bookworm?](#orgc56b6ac)
                                -   [Fresh install of bookworm 12.5 via cd.iso apt update fails !?](#org15c81d3)
                        -   [Ubuntu](#org4eeb3b2)
                            -   [X](#orgbed3949)
                                -   [Disable Wayland to use Xorg instead?](#org3b01d1b)
                            -   [Admin](#orgb17726a)
                                -   [How to authorize normal user to connect to wifi withouth authenticating as admin ?](#org31fcd92)
                            -   [prevent snapd for ever installing?](#org37664f5)
                            -   [18.04](#org0dff21c)
                                -   [X](#org31a2d72)
                                    -   [Normal alt-tab?](#orged40137)
                                -   [uninstall snap?](#org4d3c724)
                        -   [Raspberry Pi](#org1955e67)
                            -   [Install docker on Raspberry Pi 4?](#orgcaabebf)
                    -   [Backup](#org3cb6302)
                        -   [Bup](#orgf993fdf)
                            -   [bup essentials?](#org8fe399e)
                -   [Other UNIXes](#orge028e8b)
                    -   [Solaris](#org8802286)
                        -   [equivalent of linux's `ps aux` ?](#org9ef2abc)
                    -   [AIX](#orge6e88b8)
                        -   [list all processes with their corresponding commands?](#org7b9f95a)
                                -   [How to know the actual amount of ram used by dedup on a particular dataset ?](#orga027b76)
                                    -   [common rsync flags?](#org2d62ced)
                                    -   [Compress / decompress on the fly?](#orge7320a6)
                                    -   [How to display the actual configuration of the ssh command?](#org3b56f12)
                                    -   [Signal to control nginx at runtime?](#orgc4ddc1f)
                -   [M$ Windows](#org8eef66d)
                    -   [Cygwin](#org5fa96f6)
                        -   [Sshd](#org53406b0)
                            -   [start sshd as a service after its installation with the Cygwin installer?](#org8d9eafa)
                                -   [to be verified](#org9196e3d)
                            -   [install gpg under cygwin?](#org652b44e)
                    -   [cmd.exe](#org76d5daa)
                        -   [windows services cheatsheet?](#org04bdbbf)
                    -   [Linux Guests in a Windows vbox host](#org990e7f8)
                            -   [Disable hyperV for vbox?](#orgd7e2002)
                            -   [manually mount a shared folder in a linux guest?](#orgc02a60b)
                            -   [host alt-tab when in a guest?](#org8d0b06b)
                            -   [Windows Hosts](#orgc967b37)
                                -   [Windows10](#orgb5fbe60)
                                    -   [VT-x is not available (VERR<sub>VMX</sub><sub>NO</sub><sub>VMX</sub>)](#orgbdc5427)
            -   [Vim](#org380b653)
                -   [Yaml](#orgd179327)
                    -   [Folding yaml in vim?](#org7b36198)
-   [Virtualization](#org1c00fc3)
    -   [Docker](#orgb5e14a9)
        -   [Images](#org4a25c0c)
            -   [find images on the command line ?](#orgbce8527)
            -   [Building](#org8592777)
                -   [docker build from stdin?](#org21fb6f7)
            -   [Tags](#orgd5f402a)
                -   [Give a name to an image?](#orge5bf223)
        -   [Containers](#org9a173f8)
            -   [docker run/start/exec ?](#org9ce52cc)
        -   [troubleshoot ubuntu network ?](#org7bdf58e)
        -   [Persistence](#orga0d1e6c)
            -   [repair docker after a disk full?](#orgc6bcd56)
        -   [Dockerfile](#org2c0bd71)
            -   [use bashism in Dockerfile?](#orgecfa38f)
        -   [Docker Compose](#org715d6b5)
            -   [commands cheatsheet ?](#org0f066cc)
            -   [pass env var at build time ?](#orgcc9e08c)
        -   [docker docs](#org117c7ca)
        -   [Network](#org2daa7e9)
            -   [bind host /lib and /bin to the guest to run (eg) wget?](#org3c55ccb)
        -   [DockerHub](#orga872fe3)
            -   [How to list all tags of a particular image?](#orgbdd97e2)
        -   [Misc](#orgfab6783)
            -   [use stdin with a container?](#orgfe91a14)
        -   [Cli](#org6c3e614)
            -   [Formatting](#org7c42697)
                -   [docker cli command output in json?](#org2a9db83)
        -   [DockerDistribs](#org0215246)
            -   [RancherOs](#orgfe68fa1)
                -   [How to switch the default console to ubuntu?](#orgc65d25f)
    -   [Vsphere](#org273ae93)
        -   [when cloning a win vm, how to avoid a duplicate ip adress?](#orge9f23ce)
-   [Crypto](#orge769824)
    -   [Gpg](#org9b42710)
        -   [How to encrypt symmetric stdin without X (Inappropriate ioctl for device)?](#orgd818ac2)
        -   [verify a gpg signed file?](#org47995e1)
        -   [how to dw a gpg public key from ubuntu key server?](#orgac0800c)
-   [Web Browsers](#orgb92373b)
    -   [Firefox](#org55a32b2)
        -   [Disable images loading?](#orgf752fed)
    -   [Chrome](#orgf0ba7d8)
        -   [How to keep a Chrome background active (eg: for avoiding sessions timeouts)?](#org199ec06)
            -   [Possible option1: Use Chrome build-in `ctrl-shift-click`](#orgd12a038)
                -   [1) use the buit-in chrome shortcut <code>[0/1]</code>](#org68022ab)
                    -   [to be verified](#orgb38fc74)
            -   [Possible option2: Use an extension like `Tab Reloader`](#org767c515)
                -   [to check](#org0b1f552)
    -   [Chromium](#org826cff1)
        -   [Run chromium diagnostics?](#orgbee4629)
        -   [Chromium crashes on startup, any hint?](#org2fab425)
-   [Videos](#org6e2b225)
    -   [Youtube](#orgd402f4a)
            -   [How do I send a link to a youtube video specifing the resolution?](#orgfe0bddb)
                    -   [Solution from stackoverflow](#org1764481)
                -   [In other words](#org20455cd)
-   [Programming](#org96e8148)
    -   [JVM ecosystem](#orgda7dc79)
        -   [Groovy](#orge0a1ff9)
            -   [Misc](#orgd17f869)
                -   [Get the Groovy version from within a Groovy script/class?](#orgd959d4b)
            -   [pipeline oriented programming in groovy like Clojure's threading macro?](#orga0ca8b9)
            -   [groovy switch case?](#org38d0f79)
            -   [groovy interval ?](#orgec5f6ba)
            -   [get cmd line args?](#org5390169)
            -   [run a system command in groovy ?](#org2b53db3)
            -   [groovy pprint datastructure?](#org4bd36a7)
        -   [Java](#org5c38694)
            -   [Create an object with the same behavior than System.out (for testing output)?](#org85a90b9)
            -   [timestamp in java ?](#orgf9e5130)
        -   [Gradle](#org886d2be)
            -   [how to create a new project from scratch?](#org3cd60ef)
        -   [Maven](#orgd6dcd2b)
            -   [simply download a jar with maven?](#orge465936)
                -   [simple](#orgb5d9f90)
                -   [specifying transitivity and repo](#org54440f7)
            -   [generate a simple maven project?](#orgf03d06f)
            -   [generate a simple webapp?](#orge43c237)
        -   [Clojure](#org3dc8c32)
            -   [Dev](#org957216e)
                -   [Repl](#org8e41e80)
                    -   [Change the alias of a ns in a ns def (Alias <alias> already exists in namespace <ns>,etc)?](#org9fcd7da)
                    -   [List all ns?](#org9c39755)
                -   [Strings](#orgc02d66b)
                    -   [ByteArrayInputStream to string?](#org46198b3)
                    -   [Convert a string to a regex?](#orgbf995f5)
                -   [Protocols](#org9cac41a)
                    -   [Full example of protocole usage for fast & simple polymorphic dispatch on a single type?](#orgc238d20)
                -   [Modulo/quotient/reminder?](#org7a33125)
                -   [Lein](#orgf359379)
                    -   [Show dependencies tree?](#org3ff3fe0)
                    -   [Connect to an existing nrepl process?](#orgd624b3c)
                -   [Bloody java.time dates](#orgacee60e)
                    -   [java.time formatting and parsing nanosecond precision dates with UTC timezone?](#org41bb061)
                        -   [conversion from seconds from epoch to DateTime:](#orgbc8b075)
                    -   [simple date formating like '16/Mar/2023' ?](#orga3a814b)
                    -   [current LocalDateTime?](#orgdbe76e8)
                    -   [convert LocalDateTime to ZonedDateTime utc?](#orga5d82be)
                    -   [date fmt & parse cheatsheet?](#org0a92e2c)
                        -   [parse 2023-03-23](#orgc5dda8e)
                -   [Misc](#org9fd42de)
                    -   [hex <-> decimal conversion?](#org25cb543)
            -   [Js](#orga31e298)
            -   [Babasha](#org050c993)
                -   [Parse a date in babashka?](#org73bdc90)
            -   [Processes](#org863717e)
                -   [Process output of a cmd lazily?](#org8cb6eca)
                    -   [Pure clojure (works with Clojure JVM + Babashka)](#org15b0d13)
                    -   [Using babashka process lib](#orgb1c8459)
                -   [Macros](#org2c3dd05)
                    -   [Threading](#org8f3c42b)
                        -   [how to use threading macros with functions with different argument position?](#org712c59b)
                        -   [how to use ->> with fns args mixed at the beginning and and?](#org4ad9d47)
                    -   [Functions](#org6bad784)
                        -   [Args](#orge8f6092)
                            -   [optional args with default values using keys?](#org95703fd)
                    -   [Ns](#orgaf63ca9)
                        -   [Alias](#org8defccf)
                            -   [How to remove an alias to a ns?](#orgc556d1a)
                    -   [Var](#org3dfbeda)
                        -   [symbol->var->value?](#org4bf2db8)
                            -   [alternative:](#orgca39085)
                            -   [in one go:](#org81793d7)
                            -   [or for conditional evaluation](#orgf99d309)
                    -   [Destructuring](#org008be25)
                        -   [Nested destructuring with map and seq ?](#org798241c)
                    -   [Files](#orgff78280)
                        -   [Read a file line by line?](#org659b443)
                    -   [Strings](#org977fddf)
                        -   [Regexes](#org6cc287f)
                            -   [named groups search and replace in Clojure?](#orgb1bba19)
                            -   [string to regex?](#org2750057)
                            -   [repeat expression between n and m?](#orgf40e822)
                    -   [Classpath](#orgbf656d8)
                        -   [slurp a resource in the classpath?](#org6007e04)
                    -   [Java interop](#orge2b56e8)
                        -   [Get all parents classes of an instance ?](#orgd6dfd6e)
                    -   [Generate uuid](#org16ff96f)
                    -   [Exceptions](#orgfb28ef4)
                        -   [try/catch/finally?](#org68d5c6c)
            -   [Java interop](#orgb8f8c71)
                -   [Start a clojure repl server from java?](#orga2a3318)
        -   [Web Servers](#org879d1c4)
            -   [Tomcat](#org7a8149f)
                -   [how to configure tomcat so that it can be managed programatically ?](#org68adb87)
                -   [tomcat rest api doc ?](#orgf418d60)
    -   [Databases](#orgdd78989)
        -   [Sql language](#org40cc979)
            -   [DateTime](#org06aaca2)
                -   [Sql: how to select rows where a field date is greater than&#x2026;?](#org8afd224)
                -   [Sql: how to select rows where a field date is in [<date> ; <date> + 1 day]?](#org4ec631f)
            -   [GroupBy](#org6c5e2d3)
                -   [group by concatenate string?](#org1f73e0f)
            -   [Other](#org6b18fba)
                -   [Pseudo table in sql?](#org4c929dd)
                -   [Concatenate two tables?](#org941ea25)
        -   [RDBMS](#org63c58a2)
            -   [PostgreSQL](#orgcd550ef)
                    -   [Posgresql cheatsheet?](#orgc75ee79)
            -   [sqlite](#orga319316)
                -   [sqlite3](#orgb9366c6)
                    -   [import](#orgd5de118)
                        -   [How do I import a csv from stdin with field containing '"' into a sqlite3 db (non interactively)?](#org766832f)
        -   [timeserie db](#org3c2d1bd)
            -   [influxdb](#org615aaf5)
                -   [flux](#org471da14)
                    -   [flux query example?](#org29141c3)
    -   [Node](#orgf84daac)
        -   [Npm](#orgadaec4a)
            -   [Cli usage](#org20966b9)
                -   [how to install global packages without sudo?](#org62a401f)
                -   [upgrade npm to latest?](#org48aa0cd)
                -   [color config in npm?](#org9e6c77b)
                -   [npm list all config keys?](#org7725fb3)
                -   [npm install a module from a git url ?](#orga2e1b08)
            -   [Searching](#org43a2d53)
                -   [how to search npm packages (and filter by populariy, &#x2026;)?](#org18a523e)
        -   [how to read all lines from stdin in one go?](#org6d49d25)
    -   [Regex](#org714a82e)
        -   [General](#org41654fd)
            -   [regex cheatsheet?](#orgf4ddf3e)
        -   [Sed](#orga9b15f9)
            -   [use a backreference without grouping?](#orgdd5db7d)
            -   [remove backslash EOL with sed?](#orga86b8b8)
            -   [join lines of a files two by two?](#orga53d304)
            -   [add a line before the first line of a file?](#orgf03c12c)
            -   [output lines from regex to N line after it?](#orgd192e32)
        -   [Perl](#org20fff57)
            -   [Multiline search and replace?](#org7b7744f)
    -   [Python](#orgd894551)
        -   [Pip](#orgaa29fce)
            -   [How to install pip for python 3 ?](#org6b1a8f0)
            -   [How to install pip for python 2 ?](#orga882250)
            -   [pip completion on the command line?](#orgf30fd6f)
            -   [avoid pip warning when pip list in a script?](#orgc3168eb)
        -   [Json](#orgcf6005e)
            -   [Parse a json string?](#org83a6994)
        -   [read from stdin?](#org09f5c49)
    -   [GnuMake](#org3b430c1)
        -   [build in a diferent directory than the Makefile?](#org9b5770e)
        -   [GnuMake language](#org20f3c0f)
            -   [print newline?](#org9ab0a1c)
            -   [print all variables?](#org7a5ba70)
        -   [print all targets?](#orga9756ba)
        -   [how do I fail the build if an env var is not defined for a particular target?](#org9423c27)
        -   [how to use a multiline make var in a shell recipe?](#org7b0205c)
        -   [selfDoc](#orgef48017)
            -   [how to extract all targets from a Makefile without a make command ?](#org5b411b2)
    -   [Lorem ipsum](#org158f131)
    -   [Git](#org139e441)
        -   [Submodules](#orgf940172)
            -   [submodule lifecycle mgmt](#org6db987d)
            -   [submodule: track latest?](#org039504a)
            -   [how to deregister a submodule?](#org439f75d)
        -   [Tags / branches lifecycle mgmt](#org8c96f6b)
        -   [rm a big file from history?](#org85b5627)
        -   [list branch sorted by last commit date?](#orgc5d9df3)
        -   [grep history?](#org5e845d8)
        -   [essential git config?](#org0696606)
        -   [config for colors?](#orge6f5ab5)
        -   [Git Lfs essentials?](#org7faf679)
        -   [git & ssh](#org14b7efd)
            -   [view ssh details?](#org556891d)
                -   [git v2.3.0 or higher:](#orgac33e3d)
            -   [how to specify the ssh key used by git?](#org257c25b)
        -   [Diffing](#org4a8bcc7)
            -   [show only the filnames that changed](#org65c7250)
        -   [Syntax](#orgeb4ba0c)
            -   [Reference Nthieme commit from HEAD?](#org243ef07)
        -   [Colors](#orgcd9162a)
            -   [git colors=always?](#org8936b2c)
        -   [hacks](#orga401faf)
            -   [how to git diff even if the repo do not have an empty init commit?](#org6a351f9)
    -   [Jq](#org29312b0)
        -   [Finding](#org3491d26)
            -   [recursively find a value by key?](#org824bacf)
            -   [recursively find all values of a given key?](#org3dff4b9)
            -   [recursively find all path leading to a given key](#orga55fb6e)
            -   [recursively find all path leading to a certain value?](#org87cebc0)
            -   [get all the values of an object?](#orga0a08ae)
            -   [does this array contains this element?](#orgecd9b38)
        -   [Modifying](#orgfcc06f2)
            -   [delete the key of an object?](#org6e62d29)
            -   [jq update ?](#orgaaa6102)
            -   [delete in nested datastructure?](#org0e18643)
            -   [recursively delete all keys leading to pair numbers?](#orgff5ec35)
            -   [deep merge two nested datastructure?](#orge9814a7)
        -   [Strings / Regex](#org59f424f)
            -   [jq regexes cheet sheat ?](#org6e58d63)
                -   [jq regex flags](#org3b6e553)
                -   [jq regex functions](#orgd3b6cda)
            -   [recursively find containers having a value that match a given regex?](#org7dd5def)
            -   [convert string to upper case?](#org5330279)
            -   [jq regex replace?](#org9c0048c)
            -   [jq regex search and replace with backreferences](#orgd228f2f)
            -   [substring?](#orgbf69492)
        -   [Quoting](#org6fa314f)
            -   [given a known char I want to encode it in a json string for consumption by jq](#org46361cc)
            -   [Single Quote](#org4999f44)
                -   [single quote as a integer (to escape it in bash)?](#orgc4c13e7)
                -   [encode a single quote in a string for jq to decode?](#orga703731)
        -   [Interop](#orgd0f7bcc)
            -   [output a array for bash?](#org77588e7)
        -   [Functional](#orgda6213e)
            -   [reduce ?](#org51258c6)
            -   [zip two arrays into a map?](#orgda19180)
            -   [Comma in function args](#org72e0205)
                -   [given a list of strings and a list of regexes, for each string check wether it matches all the given regexes or not](#org9298ee5)
            -   [clojure's reductions equivalent in jq?](#orgba6d12f)
        -   [Convert](#orge50511c)
            -   [element to array?](#org69803b7)
            -   [convert an array to a map?](#orge9d6889)
        -   [Dates and time](#org3197e3b)
            -   [Get a human readable date of current time?](#orgdfce400)
            -   [Convert Unix epoch time in second to human readable?](#orgd7a4433)
            -   [parse and format date with jq?](#org6294e89)
        -   [Other](#org0935959)
            -   [Undocumented debug options?](#org2ade21b)
            -   [Syntax](#orge4b940c)
                -   [Liberal Object notation?](#orgbf1e5b9)
    -   [Lua](#orga1b1733)
        -   [Call external command and get stdout?](#org5fd4fb8)
        -   [Call external command and get stdout and return code?](#org28cc029)
    -   [Jira](#org2ac324a)
        -   [Jira webapp keyboard shortcut cheat sheet](#org4a852e3)
        -   [command line online help?](#org2e59aee)
    -   [CheatSheets](#org9c80b3c)
        -   [Clojure](#orgd2283fb)
    -   [Doc](#orgdb481ee)
        -   [Markdown](#org3e0cc46)
            -   [Cheatsheet?](#org0e0fe28)
                -   [Links?](#org1d5cb7b)
            -   [get values by their path (eg: ["a",1,"b"])?](#org6b0c52a)
            -   [Bitbucket flavored markdown](#org800a1de)
                -   [How do I create a link to the same page in Bitbucket flavored markdown?](#orgba83aed)
    -   [CI](#org0104bd7)
        -   [Jenkins](#orgd36b78b)
            -   [RestApi](#org64f9da6)
                -   [Jenkins Rest Api Essentials?](#org00fb468)
                -   [JSON](#org288dba8)
                    -   [Get all build result with time of particulatar job?](#org1edebf6)
                -   [XML](#org998d778)
            -   [parallel map in groovy?](#orgd45b520)
            -   [dump nested object as json/xml ?](#orgb381462)
                -   [native but do not handle cycles](#org600b2e1)
                -   [with xstream (handle cycles)](#orge53b6eb)
                    -   [Demo with cycles](#orgada851a)
                -   [with xstream: json](#org3d87b02)
            -   [legacy jobs](#orgc6687b0)
                -   [job-dsl plugin](#org26b2969)
                    -   [Example job-dsl for matrix project?](#org7e7a882)
            -   [Stop an unstoppable build?](#orgdd593a1)
    -   [Visualization](#org631c044)
        -   [Online visualization of Wikipedia's graph?](#org5dc88ae)
        -   [Graphviz's dot language?](#org199a7de)
            -   [Example of colorscheme usage?](#org38856f5)
        -   [Grafana](#orgda11fdd)
            -   [Grafana custom time formating for the x-axis ?](#org0706b47)
    -   [Video editing](#org9ff5de3)
        -   [how to copy part of a video?](#org379c51b)
    -   [Repositories](#org860f5cb)
        -   [Nexus](#orgd12ce44)
            -   [V2](#org5fb3012)
                -   [self hosted api doc for nexus v2?](#org2908b0e)
        -   [Monitoring](#org62f2f6a)
            -   [how to connect jconsole to a jvm running in a remote docker container?](#org04a14a0)
-   [Special](#orgb6d987e)
    -   [Unicode(UTF8)](#orgc2ef068)
        -   [How can I search by name for unicode char on the command line?](#org42e6cfc)
        -   [Handy unicode(utf8) chars?](#org3cd3fa1)
            -   [Handy emoticon ?](#orga897945)
            -   [arrows](#orgee53f65)
            -   [draft](#org5bf73ba)
                -   [boxes](#org559fca9)
            -   [use char by its code ?](#orgdc4d68b)
            -   [unicode number in circle](#org0f7b60a)
            -   [lambda](#org50f8a83)
            -   [elipsis?](#org3529e95)
            -   [Checkmarks](#orgde88548)
                -   [check / uncheck marks?](#orgebee837)
                -   [more check marks?](#org7110834)
            -   [colored utf8 chars](#orgca608f0)
                -   [some cool](#org07e30da)
                -   [some](#org456704c)
                -   [zodiac](#orgd6df40e)
                -   [zodiac unambiguous](#org07b6323)
                -   [zodiac even more unambiguous](#org843efea)

My personal howto for things I know I knew, but keep forgetting 😸

Also serve:

-   Large org-mode real world test
-   A Rough log of my computer-related interests over time (with the Git history)


<a id="orge69ba8f"></a>

# Operating Systems


<a id="org739bc00"></a>

## Linux


<a id="org8377233"></a>

### Shells


<a id="org5aac2ac"></a>

#### Bash


<a id="org1d8df03"></a>

##### Non interactive


<a id="org37fa6ab"></a>

###### Use alises in non interactive bash?

    shopt | egrep expand_aliases
    #> expand_aliases  off
    shopt -s expand_aliases
    #>
    shopt | egrep expand_aliases
    expand_aliases  on


<a id="org1b12c0f"></a>

##### Interactive use


<a id="org0e8950b"></a>

###### Complete

-   bash completion cheat sheet?

    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <thead>
    <tr>
    <th scope="col" class="org-left">complete on</th>
    <th scope="col" class="org-left">cmd</th>
    <th scope="col" class="org-left">options</th>
    <th scope="col" class="org-left">&#xa0;</th>
    <th scope="col" class="org-left">&#xa0;</th>
    <th scope="col" class="org-left">for what?</th>
    <th scope="col" class="org-left">short form</th>
    </tr>
    </thead>
    <tbody>
    <tr>
    <td class="org-left">remove</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-r</code></td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">all</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">&#xa0;</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-r</code></td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left">&#xa0;</td>
    </tr>
    </tbody>
    <tbody>
    <tr>
    <td class="org-left">complete on alias names</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>alias</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>-a</code></td>
    </tr>
    </tbody>
    <tbody>
    <tr>
    <td class="org-left">array variable names</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>arrayvar</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">readline key binding names</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>binding</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">names of shell builtin commands</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>builtin</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>-b</code></td>
    </tr>
    
    <tr>
    <td class="org-left">command names</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>command</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">directory names</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>directory</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>-d</code></td>
    </tr>
    
    <tr>
    <td class="org-left">disabled shell builtins</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>disabled</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">enabled shell builtins</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>enabled</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">names of exported shell variables</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>export</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>-e</code></td>
    </tr>
    
    <tr>
    <td class="org-left">file names</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>file</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>-f</code></td>
    </tr>
    
    <tr>
    <td class="org-left">names of shell functions</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>function</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">group names</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>group</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>-g</code></td>
    </tr>
    
    <tr>
    <td class="org-left">help topics accepted by the help builtin</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>helptopic</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">hostnames as taken from the file specifed by the HOSTFILE shell variable</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>hostname</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">job names</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>job</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>-j</code></td>
    </tr>
    
    <tr>
    <td class="org-left">shell reserved words</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>keyword</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>-k</code></td>
    </tr>
    
    <tr>
    <td class="org-left">names of running jobs</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>running</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">service names</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>service</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">valid args for the -o option of the set builtin</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>setopt</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">shell option names as accepted by the shopt builtin</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>shopt</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">signal names</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>signal</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">names of stopped jobs</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>stopped</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">user names</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>user</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>-u</code></td>
    </tr>
    
    <tr>
    <td class="org-left">names of all shell variables</td>
    <td class="org-left"><code>complete</code></td>
    <td class="org-left"><code>-A</code></td>
    <td class="org-left"><code>variable</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>cmd1 … cmdN</code></td>
    <td class="org-left"><code>-v</code></td>
    </tr>
    </tbody>
    </table>


<a id="org85e6fed"></a>

##### Common tasks


<a id="org38d3aaa"></a>

###### Random

-   Generate a lot of (pseudo) random data faster than /dev/urandom?

        openssl enc -aes-256-ctr -pass pass:"$(head -c128 /dev/urandom | base64)" -nosalt < /dev/zero | pv > randomfile.bin


<a id="orgae1f569"></a>

###### generate random string?

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

<https://gist.github.com/earthgecko/3089509>


<a id="orgd68970f"></a>

###### decimal / hex (and opposite) conversion?

    # decimal to hex
    echo "obase=16; 34" | bc
    # hex to decimal
     echo $((0xa))
     # 10


<a id="orgf913d32"></a>

###### redirect output in variable?

"must read" about the differents techniques of redirection: <http://stackoverflow.com/questions/13763942/bash-why-piping-input-to-read-only-works-when-fed-into-while-read-const>


<a id="org31824b9"></a>

###### stop on error (even in subshell)?

It seems that bash disable -e in subshells.

-   workaround1: set -e explicitly for each subshell

        set -e explicitly at the start of each subshell

-   workaround2: write shell script with '&&'

    Write each commands as a binary and:
    
        :        \
        && cmd1  \
        && cmd 2 \
        && cmd 3 \
        ;

-   workaround3: write shell script with '||'

        cmd1 || false
        cmd2 || false
        cmd3 || false


<a id="org32063c6"></a>

###### loop over args?

    for var in "$@"
    do
      echo "$var"
    done

<http://stackoverflow.com/questions/255898/how-to-iterate-over-arguments-in-a-bash-script>


<a id="org695ae74"></a>

###### parse a string as args

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


<a id="orga6069f5"></a>

###### How to save a script params (before doing modifications like shift, ..)?

    # save with
    original_params=("$@")
    # use the copy with
    echo "${original_params[@]}"


<a id="orgb81cbf4"></a>

###### generate uuid?

    cat /proc/sys/kernel/random/uuid
    #> aa6bc854-9eab-43cd-986d-d2318bf4a845


<a id="org79701d3"></a>

###### List all possible commands (including functions)?

    # also works for zsh
    compgen -c


<a id="org614aee1"></a>

##### Programming


<a id="orgf6c84a0"></a>

###### Misc

-   bash pointer variables?


<a id="org7cca2b8"></a>

###### Control flow

-   Tests/Conditionnals

    -   ternary operator in bash?
    
            bash -c 'b=5 c=2 && d=3 && let a=b==5?c:d; echo $a'
    
    -   cheatsheet
    
        <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
        
        
        <colgroup>
        <col  class="org-left" />
        
        <col  class="org-left" />
        
        <col  class="org-left" />
        
        <col  class="org-left" />
        </colgroup>
        <thead>
        <tr>
        <th scope="col" class="org-left">&#xa0;</th>
        <th scope="col" class="org-left">&#xa0;</th>
        <th scope="col" class="org-left">&#xa0;</th>
        <th scope="col" class="org-left">&#xa0;</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td class="org-left">file</td>
        <td class="org-left">is empty</td>
        <td class="org-left"><code>[ -s a ]</code></td>
        <td class="org-left">single brackets</td>
        </tr>
        
        <tr>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">&#xa0;</td>
        </tr>
        </tbody>
        </table>
    
    -   test files cheatsheet
    
              from: <https://wiki-dev.bash-hackers.org/commands/classictest>
        **For classic test `[ <..> ]`**
        
        <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
        
        
        <colgroup>
        <col  class="org-left" />
        
        <col  class="org-left" />
        </colgroup>
        <thead>
        <tr>
        <th scope="col" class="org-left">Operator syntax</th>
        <th scope="col" class="org-left">Description</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td class="org-left">-a &lt;FILE&gt;</td>
        <td class="org-left">True if &lt;FILE&gt; exists. :!: (not recommended, may collide with -a for AND, see below)</td>
        </tr>
        
        <tr>
        <td class="org-left">-e &lt;FILE&gt;</td>
        <td class="org-left">True if &lt;FILE&gt; exists.</td>
        </tr>
        
        <tr>
        <td class="org-left">-f &lt;FILE&gt;</td>
        <td class="org-left">True, if &lt;FILE&gt; exists and is a regular file.</td>
        </tr>
        
        <tr>
        <td class="org-left">-d &lt;FILE&gt;</td>
        <td class="org-left">True, if &lt;FILE&gt; exists and is a directory.</td>
        </tr>
        
        <tr>
        <td class="org-left">-c &lt;FILE&gt;</td>
        <td class="org-left">True, if &lt;FILE&gt; exists and is a character special file.</td>
        </tr>
        
        <tr>
        <td class="org-left">-b &lt;FILE&gt;</td>
        <td class="org-left">True, if &lt;FILE&gt; exists and is a block special file.</td>
        </tr>
        
        <tr>
        <td class="org-left">-p &lt;FILE&gt;</td>
        <td class="org-left">True, if &lt;FILE&gt; exists and is a named pipe (FIFO).</td>
        </tr>
        
        <tr>
        <td class="org-left">-S &lt;FILE&gt;</td>
        <td class="org-left">True, if &lt;FILE&gt; exists and is a socket file.</td>
        </tr>
        
        <tr>
        <td class="org-left">-L &lt;FILE&gt;</td>
        <td class="org-left">True, if &lt;FILE&gt; exists and is a symbolic link.</td>
        </tr>
        
        <tr>
        <td class="org-left">-h &lt;FILE&gt;</td>
        <td class="org-left">True, if &lt;FILE&gt; exists and is a symbolic link.</td>
        </tr>
        
        <tr>
        <td class="org-left">-g &lt;FILE&gt;</td>
        <td class="org-left">True, if &lt;FILE&gt; exists and has sgid bit set.</td>
        </tr>
        
        <tr>
        <td class="org-left">-u &lt;FILE&gt;</td>
        <td class="org-left">True, if &lt;FILE&gt; exists and has suid bit set.</td>
        </tr>
        
        <tr>
        <td class="org-left">-r &lt;FILE&gt;</td>
        <td class="org-left">True, if &lt;FILE&gt; exists and is readable.</td>
        </tr>
        
        <tr>
        <td class="org-left">-w &lt;FILE&gt;</td>
        <td class="org-left">True, if &lt;FILE&gt; exists and is writable.</td>
        </tr>
        
        <tr>
        <td class="org-left">-x &lt;FILE&gt;</td>
        <td class="org-left">True, if &lt;FILE&gt; exists and is executable.</td>
        </tr>
        
        <tr>
        <td class="org-left">-s &lt;FILE&gt;</td>
        <td class="org-left">True, if &lt;FILE&gt; exists and has size bigger than 0 (not empty).</td>
        </tr>
        
        <tr>
        <td class="org-left">-t &lt;fd&gt;</td>
        <td class="org-left">True, if file descriptor &lt;fd&gt; is open and refers to a terminal.</td>
        </tr>
        
        <tr>
        <td class="org-left">&lt;FILE1&gt; -nt &lt;FILE2&gt;</td>
        <td class="org-left">True, if &lt;FILE1&gt; is newer than &lt;FILE2&gt; (mtime). :!:</td>
        </tr>
        
        <tr>
        <td class="org-left">&lt;FILE1&gt; -ot &lt;FILE2&gt;</td>
        <td class="org-left">True, if &lt;FILE1&gt; is older than &lt;FILE2&gt; (mtime). :!:</td>
        </tr>
        
        <tr>
        <td class="org-left">&lt;FILE1&gt; -ef &lt;FILE2&gt;</td>
        <td class="org-left">True, if &lt;FILE1&gt; and &lt;FILE2&gt; refer to the same device and inode numbers. :!:</td>
        </tr>
        </tbody>
        </table>

-   Looping

    -   loop over cmd output with while?
    
            iseq 3 | while read l; do echo ">$l"; done
            #> >1
            #> >2
            #> >3
    
    -   c style for loop?
    
            for ((i=0;i<3;i++)); do
              echo $i
            done

-   switch case ?

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


<a id="org5ae90f3"></a>

###### Types

-   Datastructures

    -   Arrays
    
        -   Associative arrays
        
            -   declare, print, &#x2026;
            
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
            
            -   copy ?
            
                    declare -A arr=([this]=hello [\'that\']=world [theother]='and "goodbye"!')
                    declare -A newarr
                    for idx in "${!arr[@]}"; do
                        newarr[$idx]=${arr[$idx]}
                    done
                    
                    diff <(echo "$temp") <(declare -p newarr | sed 's/newarr=/arr=/')
                    # no output
                
                <http://stackoverflow.com/questions/19417015/bash-copy-from-one-array-to-another>
        
        -   Normal arrays
        
            -   declare/literal/set/getAll/size
            
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
            
            -   access empty array?
            
                    declare -a a=()
                    echo -n a=
                    echo ${a[@} + "${a[@]}"}
            
            -   parse string to array?
            
                    IFS=', ' read -r -a array <<< "a, b, c"
                    echo "array=${array[@]}"
                    #> array=a b c
            
            -   clone an array into another array?
            
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

-   Strings

    -   bash strings cheat sheet?
    
        <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
        
        
        <colgroup>
        <col  class="org-left" />
        
        <col  class="org-left" />
        
        <col  class="org-left" />
        </colgroup>
        <thead>
        <tr>
        <th scope="col" class="org-left">what</th>
        <th scope="col" class="org-left">how</th>
        <th scope="col" class="org-left">example</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td class="org-left">size</td>
        <td class="org-left"><code>${#str}</code></td>
        <td class="org-left">&#xa0;</td>
        </tr>
        
        <tr>
        <td class="org-left">substring</td>
        <td class="org-left"><code>${str:pos}</code></td>
        <td class="org-left">&#xa0;</td>
        </tr>
        
        <tr>
        <td class="org-left">substring</td>
        <td class="org-left"><code>${str:pos:length}</code></td>
        <td class="org-left">&#xa0;</td>
        </tr>
        
        <tr>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">&#xa0;</td>
        </tr>
        
        <tr>
        <td class="org-left">char to int</td>
        <td class="org-left"><code>printf '%d\n' "'y"</code></td>
        <td class="org-left">&#xa0;</td>
        </tr>
        
        <tr>
        <td class="org-left">int to char</td>
        <td class="org-left"><code>printf "\x$(printf %x 65)"</code></td>
        <td class="org-left">&#xa0;</td>
        </tr>
        
        <tr>
        <td class="org-left">replace all</td>
        <td class="org-left"><code>bash -c 'x=abcabc; echo ${x//b/z} # axcaxc</code></td>
        <td class="org-left">&#xa0;</td>
        </tr>
        
        <tr>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">&#xa0;</td>
        </tr>
        </tbody>
        </table>
    
    -   Syntax
    
        -   ssh escape sequence?
        
            `ENTER, ~, .`
    
    -   Printf?
    
        -   print args, one by line with its position?
        
            from: <http://wiki.bash-hackers.org/commands/builtin/printf>
            
                printf '"%b"\n' "$0" "$@" | nl -v0 -s": "
                #> 0: "-zsh"
                #> 1: "foo"
                #> 2: "bar"
        
        -   print a line accross the terminal?
        
            from: <http://wiki.bash-hackers.org/commands/builtin/printf>
            
                bash -c "l=$(tput cols)"' && printf -v line "%*s" $l && echo ${line// /-}'
                #> --------------------------------------------------------------------------------


<a id="org94826d2"></a>

##### Bash options


<a id="org61817a8"></a>

###### How to get the values of errexit etc (set by set -e &#x2026;)?

    set -o
    #> allexport       off
    #> braceexpand     on
    #> emacs           on
    #> errexit         off
    #> errtrace        off


<a id="org86cfb63"></a>

###### option so bash export all declared variables?

    a=1
    bash -c 'echo "a=$a"'
    set -a
    a=1
    bash -c 'echo "a=$a"'
    #> a=
    #> a=1


<a id="org33b5ad4"></a>

###### option to glob also hidden files?

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


<a id="orgda122ac"></a>

###### Bash config files

-   Order of loading of bash init files?

    -   See diagram: <https://blog.flowblok.id.au/2013-02/shell-startup-scripts.html>
    -   graphviz code repo: `hg clone https://bitbucket.org/flowblok/shell-startup`
    
    ![img](./img/shell-startup.png)


<a id="orgbb328cb"></a>

##### Files and Redirections


<a id="orgab99452"></a>

###### Stdin/out/err

-   redirect file to stdin on the left side?

    see: <http://www.tldp.org/LDP/abs/html/io-redirection.html>
    
        < input-file command > output-file
        # non standard

-   redirecting stdout, stderr

        | redirect from | to   | cmd                            | notes          |
        |---------------+------+--------------------------------+----------------|
        | out           | err  |  ls 1>&2                       |                |
        | out & err     | file |  ls &>   file                  |                |
        |               |      |  ls >    file 2>&1             | for older bash |
        | err           | out  |  ls 2>&1                       |                |
        | err & out     | pipe |  ls 2>&1 |  grep '.*'          |                |
        |               |      |  ls      |& grep '.*'          | equiv          |
        | err           | proc |  ls 2> >(grep foo)  '          | equiv          |

-   use stdout as a file (with filename) for another cmd?

        cmd <(cat f)

-   swap stdout and stderr?

    `cmd 3>&1 1>&2 2>&3`
    
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

-   write to stdin of a backround process?

    see: <https://serverfault.com/questions/188936/writing-to-stdin-of-background-process>
    
        # create server
        mkfifo in
        cat > in &
        echo $! > pid
        cat in | sed 's/.*/changed> &/' &
        # use server
        echo foo > in
        # stop server
        kill -9 $(cat pid)

-   here-string with indentation in src but not in output?

              cat <<EOF''
        <TAB>hi
        EOF
              #> <TAB>hi
              # But:
              cat <<-EOF''
        <TAB>hi
        EOF
              #> hi

-   File Descriptors

    -   Named File Descriptors
    
        -   define a named file descriptor to a writable file and write to it?
        
                # open
                exec {filew}>outputfile
                # write
                echo foo >&$filew
                # check
                cat outputfile
                #> foo
                # close
                exec {filew}>&-

-   how to know if stdout is a terminal?

        echo -n "stdout is: "
        if [ -t 1 ]; then
          echo "a terminal"
        else
          echo "not a terminal"
        fi

-   Printout

    -   Padding
    
        -   right / left pad with printf?
        
                printf "%40s\n" foo | tr ' ' .
                #> .....................................foo
                printf "%-40s\n" foo | tr ' ' .
                #> foo.....................................
        
        -   zero padding numbers?
        
                printf "%05d\n" 99
                #> 00099


<a id="org62c4a1c"></a>

###### Tmp files

-   "delete while still open" trick to be sure a file will be deleted?

    from: <https://unix.stackexchange.com/questions/181937/how-create-a-temporary-file-in-shell-script>
    
        tmpfile=$(mktemp /tmp/abc-script.XXXXXX)
        exec 3>"$tmpfile"
        rm "$tmpfile"
        : ...
        echo foo >&3


<a id="org996624c"></a>

##### Env


<a id="org415f308"></a>

###### how to run a command with the env cleared?

    env -i bash -c env
    #>        -i, --ignore-environment
    #>        start with an empty environment


<a id="org22ad07a"></a>

###### export bash function?

    f() { echo "I'm f!" ; }
    export -f f
    bash -c f
    #> I'm f!


<a id="org294ac38"></a>

###### Replace all env var by values in file?

    envsubst


<a id="org5ed0d61"></a>

###### how to make bash source a file before running a command?

Use the `BASH_ENV` to tell bash to source a file:

    touch .bashrc
    echo foo=bar >> .bashrc
    bash -c 'echo $foo'
    #>
    BASH_ENV=.bashrc bash -c 'echo $foo'
    #> bar


<a id="org1e9a24a"></a>

###### how to test if a variable is defined?

    if [[ ${varname:-} ]]; then
      echo "var is defined"
    else
      echo "var not defined or empt"
    fi

-   Another way from [bash hackers](https://wiki-dev.bash-hackers.org/scripting/posparams):
    
        if [ ${x+defined} ]; then echo "x is not defined"; \
                             else echo "x is defined (may be blank)"; \
        fi \
        ;


<a id="org9127fbc"></a>

##### Debugging


<a id="orge7a5d34"></a>

###### how to make a bash script stop and print current line before running it?

Add to your script:

    trap '(read -p "[$BASH_SOURCE:$LINENO] $BASH_COMMAND?")' DEBUG

From: <https://translate.google.co.uk/translate?hl=fr&sl=en&tl=fr&u=http%3A%2F%2Fwww.softpanorama.org%2FScripting%2FShellorama%2Fbash_debugging.shtml&anno=2>


<a id="org4bd5e53"></a>

###### how to execute a script step by step?

Add to your script:

    trap 'echo TRAP ERROR something wrong happened, errcode=$? 1>&2 ; finish' ERR

    declare varName=foo
    declare -n refToVar=varName
    echo ${refToVar}
    #> foo

works recursively:

    $ declare varName=foo
    $ declare -n refToVar=varName
    $ declare -n refToRefToVar=refToVar
    $ echo ${refToRefToVar}
    #> foo


<a id="org86ab30b"></a>

#### Zsh


<a id="orgfd34fdd"></a>

### Editors


<a id="org2e296eb"></a>

#### Emacs


<a id="orgbc138a5"></a>

##### file type indicator header for emacs?

    -*- mode: outline -*-


<a id="org4399d3e"></a>

##### edit a file remotely over ssh with tramp?

    C-x C-f
    /<user>@<host>:<file>


<a id="org1cc429d"></a>

##### Spacemacs


<a id="org634ec79"></a>

###### Troubleshoot

-   org-mode not working after a fresh install of spacemacs + practicalli config?

    -   Remove any org mode in `$HOME/.emacs.d/elpa`
    -   Restart emacs it should work


<a id="org5c83d69"></a>

###### Clojure

-   Tests

    -   Switch between implementation and test in Spacemacs Clojure?
    
        -   Keybinding: `<SPC> p a`
        -   Function: projectile-switch-between-implementation-and-test
    
    -   Clojure's switch between implementation and test: how to create the test if not exists?
    
        -   In the spacemacs config add:
        
            (spacemacs-project
                  :variables
                  projectile-create-missing-test-files t)


<a id="orgd519420"></a>

###### Install

-   "No public key for 066DAFCB81E42C40" ?

        gpg --homedir ~/.emacs.d/elpa/gnupg --receive-keys 066DAFCB81E42C40


<a id="orgbe5f8c4"></a>

###### evil cheat sheet?

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">what</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">cmds</th>
<th scope="col" class="org-left">example</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left">general cmd</td>
<td class="org-left">pattern 1</td>
<td class="org-left">&lt;cmd&gt; [n] &lt;object&gt;</td>
<td class="org-left"><code>d 3 3</code> # delete 3 words</td>
</tr>

<tr>
<td class="org-left">"</td>
<td class="org-left">pattern 2</td>
<td class="org-left">[n] &lt;cmd&gt; &lt;object&gt;</td>
<td class="org-left"><code>3 d w</code> # delete 3 words</td>
</tr>

<tr>
<td class="org-left">undo / redo</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">u / ctrl-r</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">put (after copy)</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">p</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">change word</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">cw</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">go to a specific line number</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">:&lt;lineNb&gt;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">search and replace</td>
<td class="org-left">current line</td>
<td class="org-left">:s/search/repl/[g]</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">"</td>
<td class="org-left">between lines N and M</td>
<td class="org-left">:N,Ms/search/repl/[g]</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">"</td>
<td class="org-left">whole buffer</td>
<td class="org-left">%s/search/repl/[g]</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">locate matching parentesis (or curly, &#x2026;)</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">%</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">regex modifier to confirm before each replace?</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">c: s/search/repl/gc</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">write current file</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">:w</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">save as &lt;newName&gt;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">:w &lt;newName&gt;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">page up / page down</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">C-j C-k</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">insert the content of a file in the current buffer</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">:r &lt;filename&gt;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">insert new line</td>
<td class="org-left">below</td>
<td class="org-left">o</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">above</td>
<td class="org-left">O</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">replace (like replace mode - opposite of insert)</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">R</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">append at the end of the line</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">A</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>


<a id="org9fff76e"></a>

###### run a command and get the output in the current buffer?

-   Emacs

    `C-u M-! <shell-command>`

-   fix error when installing spacemacs: "No such file or directory, evil"?

    May be a simply missing gpg elpa key:
    
        gpg --homedir ~/.emacs.d/elpa/gnupg --receive-keys 066DAFCB81E42C40

-   Spacemacs (evil mode)

    `SPC u SPC ! <shell-command>`


<a id="org33bc9d2"></a>

###### Universal argument in spacemacs (evil mode)?

instead of the traditional `C-u`
`SPC u`


<a id="org641fcb9"></a>

###### Project

-   `helm-project-do-ag` how to filter by file types?

    -   Example, searching for:
        -   `*.clj` files
        -   containing `defn`
    
    `SPC s a p`
    `--clojure defn`

-   search and replace in project?

    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <thead>
    <tr>
    <th scope="col" class="org-left">&#xa0;</th>
    <th scope="col" class="org-left">&#xa0;</th>
    <th scope="col" class="org-left">&#xa0;</th>
    </tr>
    </thead>
    <tbody>
    <tr>
    <td class="org-left">search string in project</td>
    <td class="org-left"><code>helm-project-do-ag</code></td>
    <td class="org-left"><code>SPC s a p</code></td>
    </tr>
    
    <tr>
    <td class="org-left">edit the search results</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left"><code>C-c C-e</code></td>
    </tr>
    
    <tr>
    <td class="org-left">commit the changes</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left"><code>C-c C-c</code></td>
    </tr>
    </tbody>
    </table>


<a id="org82a0bfb"></a>

###### SearchAndReplace

-   How to search and replace starting at the cursor position?

        :.,$s/\vBEFORE/AFTER/gc


<a id="org01fa98f"></a>

###### Folding

-   a promising mode?

    -   hint: `spacemacs/fold-transient-state/evil-close-fold`


<a id="org02bcd79"></a>

###### Misc

-   Exit emacs mode (holy mode) entered by error?

    Exit holy mode:
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <thead>
    <tr>
    <th scope="col" class="org-left">&#xa0;</th>
    <th scope="col" class="org-left">in holy mode</th>
    <th scope="col" class="org-left">in evil mode</th>
    </tr>
    </thead>
    <tbody>
    <tr>
    <td class="org-left">spacemacs/toggle-holy-mode</td>
    <td class="org-left"><code>M-m t E e</code></td>
    <td class="org-left"><code>SPC t E e</code></td>
    </tr>
    
    <tr>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    </tbody>
    </table>
    
    -   pipe in table with code block
    
        -   create the table in org mode
        
        <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
        
        
        <colgroup>
        <col  class="org-left" />
        
        <col  class="org-left" />
        </colgroup>
        <thead>
        <tr>
        <th scope="col" class="org-left">x</th>
        <th scope="col" class="org-left">l</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td class="org-left">cmd1</td>
        <td class="org-left">cmd</td>
        </tr>
        
        <tr>
        <td class="org-left">cmd2</td>
        <td class="org-left">cmd &lt;pipe&gt; cmdx</td>
        </tr>
        </tbody>
        </table>
        
        -   copy and pase the table in a code block and add the missing pipes:
            
                | x    | l               |
                |------+-----------------|
                | cmd1 | cmd             |
                | cmd2 | cmd | cmdx      |
    
    -   TODO org mode how to use pipes in tables? <code>[0%]</code>
    
        -   TODO using contants?
        
            <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
            
            
            <colgroup>
            <col  class="org-left" />
            
            <col  class="org-left" />
            </colgroup>
            <thead>
            <tr>
            <th scope="col" class="org-left">name</th>
            <th scope="col" class="org-left">value</th>
            </tr>
            </thead>
            <tbody>
            <tr>
            <td class="org-left">c</td>
            <td class="org-left">$c</td>
            </tr>
            
            <tr>
            <td class="org-left">pi</td>
            <td class="org-left">$pi</td>
            </tr>
            
            <tr>
            <td class="org-left">eps</td>
            <td class="org-left">$eps</td>
            </tr>
            </tbody>
            </table>
        
        -   TODO macros?
        
        -   TODO latex?
        
        -   TODO html?
        
        -   TODO compute cells values ?


<a id="org9c8fbd2"></a>

###### twbs export html

Controlling html output?

    #+OPTIONS: num:5 whn:2 toc:4 H:6
    And to set these via your publish configuration using the org-publish-project-alist, the options would be :section-numbers, :headline-levels and :with-toc.
    
    The above options are described in the export settings section of the orgmode manual. This component introduces a new setting whn for per document, and :with-headline-numbers for publish config, which controls the display of section numbers. To disable, set to nil, to enable, set to t, and to control depth of display, use a whole number.

from: <https://github.com/marsmining/ox-twbs>


<a id="orgd5f3a22"></a>

###### easy templates?

from: <http://orgmode.org/manual/Easy-Templates.html#Easy-Templates>

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">s</td>
<td class="org-left"><code>#+BEGIN_SRC ... #+END_SRC</code></td>
</tr>

<tr>
<td class="org-left">e</td>
<td class="org-left"><code>#+BEGIN_EXAMPLE ... #+END_EXAMPLE</code></td>
</tr>

<tr>
<td class="org-left">q</td>
<td class="org-left"><code>#+BEGIN_QUOTE ... #+END_QUOTE</code></td>
</tr>

<tr>
<td class="org-left">v</td>
<td class="org-left"><code>#+BEGIN_VERSE ... #+END_VERSE</code></td>
</tr>

<tr>
<td class="org-left">c</td>
<td class="org-left"><code>#+BEGIN_CENTER ... #+END_CENTER</code></td>
</tr>

<tr>
<td class="org-left">l</td>
<td class="org-left"><code>#+BEGIN_LaTeX ... #+END_LaTeX</code></td>
</tr>

<tr>
<td class="org-left">L</td>
<td class="org-left"><code>#+LaTeX:</code></td>
</tr>

<tr>
<td class="org-left">h</td>
<td class="org-left"><code>#+BEGIN_HTML ... #+END_HTML</code></td>
</tr>

<tr>
<td class="org-left">H</td>
<td class="org-left"><code>#+HTML:</code></td>
</tr>

<tr>
<td class="org-left">a</td>
<td class="org-left"><code>#+BEGIN_ASCII ... #+END_ASCII</code></td>
</tr>

<tr>
<td class="org-left">A</td>
<td class="org-left"><code>#+ASCII:</code></td>
</tr>

<tr>
<td class="org-left">i</td>
<td class="org-left"><code>#+INDEX: line</code></td>
</tr>

<tr>
<td class="org-left">I</td>
<td class="org-left"><code>#+INCLUDE: line</code></td>
</tr>
</tbody>
</table>


<a id="org62c7074"></a>

###### Babel

-   "eval is disabled for shell"

    -   add to your init file
    
        **use `shell` and not `sh`**
        
              (org-babel-do-load-languages
              'org-babel-load-languages
              '(
              (js         . t)
              ;; (sh         . t)
              (emacs-lisp . t)
              (shell      . t)
              (clojure    . t)
            ))
    
    -   in the org mode file
    
            #+BEGIN_SRC sh
            f() { echo "I'm f!" ; }
            export -f f
            bash -c f
            #+END_SRC
    
    -   stop emacs
    
    -   remove the folder `~/.emacs.d/elpa/org-plus-contrib-*`
    
    -   start emacs
    
    -   try to eval with `C-c C-c`


<a id="org04f4a15"></a>

###### Spacemace: disable mouse under termux ?

-   in your `defun dotspacemacs/user-config ()` :
-   add `(xterm-mouse-mode 0)`


<a id="org78249a7"></a>

##### install emacs25 on ubuntu16.04?

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


<a id="orgc7b31bc"></a>

##### Org-Mode


<a id="org1d884a0"></a>

###### key binding to insert a code block?

-   Type:

`<s>`

-   Then complete (eg: `M-/`)


<a id="org2f12aad"></a>

###### How to track time spen on TODO STARTED DONE?

-   start clock in with: org-clock-in
-   stop clock with    : org-clock-out
-   when you pass the task  as DONE: org mode will inster the total time spent

-   Text

    -   Less
    
        -   how to search for a tab ?
        
            Enter a literal tab with: `CTRL-v TAB`.
    
    -   Tail
    
        -   skip the N first lines of input with tail?
        
                seq 10 | tail -n +2
                #> 2
                #> 3
                #> 4
                #> 5
                #> 6
                #> 7
                #> 8
                #> 9


<a id="org768d568"></a>

###### Package managers

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">distrib</th>
<th scope="col" class="org-left">pkg manager</th>
<th scope="col" class="org-left">no sudo</th>
<th scope="col" class="org-left">inst</th>
<th scope="col" class="org-left">inst ver</th>
<th scope="col" class="org-left">list all installed</th>
<th scope="col" class="org-left">list all installed w ver</th>
<th scope="col" class="org-left">list avail vers of pkg</th>
<th scope="col" class="org-left">list files of pkg</th>
<th scope="col" class="org-left">rm</th>
<th scope="col" class="org-left">update list of pkg</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left"><code>alpine</code></td>
<td class="org-left"><code>apk</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>add</code></td>
<td class="org-left"><code>add &lt;pkg&gt;=&lt;ver&gt;</code></td>
<td class="org-left"><code>info</code></td>
<td class="org-left"><code>apk info &lt;pipe&gt; xargs apk info</code></td>
<td class="org-left"><code>apk info &lt;pkg&gt;</code></td>
<td class="org-left"><code>apk -L $p</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left"><code>python</code></td>
<td class="org-left"><code>pip</code></td>
<td class="org-left"><code>--user</code></td>
<td class="org-left"><code>install</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>ls</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>?</code></td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left"><code>node</code></td>
<td class="org-left"><code>npm</code></td>
<td class="org-left"><code>--global</code></td>
<td class="org-left"><code>install</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>ls</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>?</code></td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left"><code>perl</code></td>
<td class="org-left"><code>cpan</code></td>
<td class="org-left"><code>?</code></td>
<td class="org-left"><code>install</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>cpan -a</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>?</code></td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left"><code>debian</code></td>
<td class="org-left"><code>aptitude</code></td>
<td class="org-left"><code>?</code></td>
<td class="org-left"><code>install</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>dpkg -l</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>dpkg -L $p</code></td>
<td class="org-left"><code>purge</code></td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left"><code>debian</code></td>
<td class="org-left"><code>apt</code></td>
<td class="org-left"><code>?</code></td>
<td class="org-left"><code>install</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>dpkg -l</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>apt-cache policy $pkg</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>apt purge</code></td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left"><code>rhel</code></td>
<td class="org-left"><code>yum</code></td>
<td class="org-left"><code>?</code></td>
<td class="org-left"><code>install</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>rpm -qa</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>yum --showduplicates list $pkg</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>?</code></td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left"><code>groovy</code></td>
<td class="org-left"><code>sdk</code></td>
<td class="org-left"><code>?</code></td>
<td class="org-left"><code>install</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>?</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>?</code></td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left"><code>ruby</code></td>
<td class="org-left"><code>gem</code></td>
<td class="org-left"><code>--user-install</code></td>
<td class="org-left"><code>install</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>?</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>?</code></td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left"><code>nix=</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>nix-env -i -v "${pkg}"</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>nix-env -qa --description</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>nix-env --uninstall "$pkg"</code></td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left"><code>opensuse</code></td>
<td class="org-left"><code>zypper</code></td>
<td class="org-left"><code>?</code></td>
<td class="org-left"><code>install</code> or <code>in</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>remove</code> or <code>rm</code></td>
<td class="org-left"><code>ref</code> or <code>refresh</code></td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>

-   find which package manager is used on this machine?

        #!/usr/bin/env bash
        while read p; do $p --version &> /dev/null && echo $p ; done <<< $'yum\napt\napk'

-   apk

    -   equivalent of apt-file search?


<a id="org2a877c5"></a>

###### Software packages

Top level sections as per the 'Section' attribute of `aptitude show <pkg>`.

-   Admin

    -   Tmux
    
        -   how do i detach other client when reattach to session?
        
                tmux -2 a -dt 0
        
        -   create a new session specifying the name?
        
                # create a session named "net'
                tmux -2 new-session -s net
        
        -   reload .tmux.conf?
        
                tmux source-file ~/.tmux.conf
        
        -   bindings to install plugins?
        
                <prefix> + I
            
            Note: After an tmux you may need to upgrade plugins too [see upgrading](#orgb82505a).
        
        -   bindings to upgrade plugins?
        
            -   update plugins: ~<prefix> + U
            -   remove plugins not on the list: `<prefix> + alt + u`
        
        -   use another shell as the default (ex: zsh instead of bash)
        
            In the tmux config file (example: `$HOME/.tmux.conf`)
            
                set -g default-command /usr/local/bin/zsh
    
    -   Zip
    
        -   list content of a zip file from stdin?
        
                curl file://$(pwd)/dir.zip | bsdtar -xvf-
                #> % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                #> Dload  Upload   Total   Spent    Left  Speed
                #> 100  1964  100  1964    0     0  43.5M      0 --:--:-- --:--:-- --:--:-- 43.5M
                #> x dir/
                #> x dir/2/
                #> x dir/2/5/
                #> x dir/2/5/data
    
    -   Apt-get
    
        -   dpkg show all installed files of a .deb?
        
                dpkg -L jenkins
        
        -   apt-get: what package provide this file?
        
                apt-get install apt-file
                apt-file update
                apt-file find <file>
        
        -   fix a broken state ?
        
                sudo apt-get install --fix-broken
        
        -   install a specific version?
        
                apt-get install my-lib-java=2016.03.30-79 my-lib=2016.03.30-79
        
        -   show version that a package can be upgraded to?
        
                apt-cache policy google-chrome-stable
        
        -   customize output of dpkg -l?
        
                dpkg-query --show --showformat='${Package}\n'
        
        -   Alternative
        
            -   rebuild alternative for a particular package?
            
                Note: there's problably a better way :)
                But this had worked:
                
                    sudo aptitude purge openjdk-8-jdk
                    sudo aptitude install openjdk-8-jdk
    
    -   Rpm
    
        -   list files installed by a package?
        
                rpm -ql [packageName]
        
        -   list only names of packages?
        
                rpm -qa --qf "%{NAME}\n"
    
    -   Ps
    
        -   list all processes, show only pids?
        
                ps ax -o pid=
                #> 3409
                #> 3413
                #> 3417
        
        -   ps: List processes with their elapsed running time ?
        
                ps a   -o pid,state,tname,time,etime,command
                #> PID S TTY          TIME     ELAPSED COMMAND
                #> 8728 S pts/2    00:00:02       48:45 -zsh
                #> 1248 R pts/2    00:00:00       00:00  \_ ps af -o pid,state,tname,time,etime,command
                #> 23774 R pts/0    00:16:13       25:50 sha256sum
    
    -   SeLinux
    
        -   status/enable/disable selinux?
        
                # with the selinux-utils pkg:
                # for example on debian like systems:
                aptitude install selinux-utils
                # get selinux status
                getenforce
                # enable
                setenforce 1
                # disable
                setenforce 0
    
    -   Dd
    
        -   Typical dd invocation to copy a partition disk ?
        
                dd if=/dev/ad0 of=/dev/ad1 bs=64M conv=noerror
        
        -   Show progress with dd?
        
                dd if=/dev/sda of=/dev/sdb status=progress
    
    -   Systrace
    
        -   How to cp with a progress bar using strace?
        
            Adapted from: <https://chris-lamb.co.uk/posts/can-you-get-cp-to-give-a-progress-bar-like-wget>
            
                :                                        \                                                                                                                                                                 15:23:48
                && size=$(stat --format='%s' big)        \
                && size=$((size / (1024 * 1024) ))       \
                && { strace -ewrite cp big big2 2>&1 ; } \
                   | tee ~/tmp/cp.out                    \
                   | pv -l -s $size                      \
                   > /dev/null  \
                ;
    
    -   Security
    
        -   Other
        
            -   list recent ssh connection on a host?
            
                    last
        
        -   SeLinux
        
        -   status/enable/disable selinux?
        
                # with the selinux-utils pkg:
                # for example on debian like systems:
                aptitude install selinux-utils
                # get selinux status
                getenforce
                # enable
                setenforce 1
                # disable
                setenforce 0
        
        -   User/groups management
        
        -   Users's group management command
        
            <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
            
            
            <colgroup>
            <col  class="org-left" />
            
            <col  class="org-left" />
            
            <col  class="org-left" />
            
            <col  class="org-left" />
            
            <col  class="org-left" />
            </colgroup>
            <thead>
            <tr>
            <th scope="col" class="org-left">Subject</th>
            <th scope="col" class="org-left">Action</th>
            <th scope="col" class="org-left">Object</th>
            <th scope="col" class="org-left">Command</th>
            <th scope="col" class="org-left">Notes</th>
            </tr>
            
            <tr>
            <th scope="col" class="org-left">user</th>
            <th scope="col" class="org-left">add to</th>
            <th scope="col" class="org-left">group</th>
            <th scope="col" class="org-left"><code>sudo usermod -aG $g $u</code></th>
            <th scope="col" class="org-left">&#xa0;</th>
            </tr>
            </thead>
            <tbody>
            <tr>
            <td class="org-left">&#xa0;</td>
            <td class="org-left">list</td>
            <td class="org-left">groups</td>
            <td class="org-left"><code>group $u</code></td>
            <td class="org-left">&#xa0;</td>
            </tr>
            
            <tr>
            <td class="org-left">&#xa0;</td>
            <td class="org-left">rm from</td>
            <td class="org-left">group</td>
            <td class="org-left"><code>sudo gpasswd -d  $u $g</code></td>
            <td class="org-left"><b><b>beware the reversed args from the previous cmd!</b></b></td>
            </tr>
            
            <tr>
            <td class="org-left">&#xa0;</td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>sudo deluser $u $g</code></td>
            <td class="org-left">&#xa0;</td>
            </tr>
            </tbody>
            <tbody>
            <tr>
            <td class="org-left">user's group</td>
            <td class="org-left">refresh without logout</td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>#TODO</code></td>
            <td class="org-left">&#xa0;</td>
            </tr>
            </tbody>
            <tbody>
            <tr>
            <td class="org-left">group</td>
            <td class="org-left">add</td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>sudo groupadd $g</code></td>
            <td class="org-left">&#xa0;</td>
            </tr>
            
            <tr>
            <td class="org-left">&#xa0;</td>
            <td class="org-left">rm</td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>groupdel $g</code></td>
            <td class="org-left">&#xa0;</td>
            </tr>
            
            <tr>
            <td class="org-left">&#xa0;</td>
            <td class="org-left">add with uid</td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>sudo groupadd -g $gid $g</code></td>
            <td class="org-left">&#xa0;</td>
            </tr>
            </tbody>
            </table>
            
            sudo groupadd $g
            
            sudo groupadd -g $gid $g

-   Graphics

    -   Imagemagick
    
        -   how to change the quality of a jpeg image?
        
                convert input.png -quality 75 output.jpg
    
    -   Ffmpeg
    
        -   How to get only the 1st n minutes of videos?
        
                set -- i.mp4
                ffmpeg -i "$1" -ss 0 -t 60 -c copy "${1/./.prev.}"
        
        -   Record desktop?
        
            Depends on the OS. see <https://trac.ffmpeg.org/wiki/Capture/Desktop>
            
            -   linux
            
                ffmpeg -video<sub>size</sub> 1024x768 -framerate 25 -f x11grab -i :0.0+100,200 output.mp4
            
            -   windows
            
                -   directshow
                
                    ffmpeg -f dshow -i video="screen-capture-recorder" output.mkv
                
                -   built-in gdi screengrabber
                
                    -   all displays
                    
                        ffmpeg -f gdigrab -framerate 30 -i desktop output.mkv
                    
                    -   region
                    
                        ffmpeg -f gdigrab -framerate 30 -offset<sub>x</sub> 10 -offset<sub>y</sub> 20 -video<sub>size</sub> 640x480 -show<sub>region</sub> 1 -i desktop output.mkv
                    
                    -   window
                    
                        ffmpeg -f gdigrab -framerate 30 -i title=Calculator output.mkv
                    
                    -   hw encoding
                    
                        ffmpeg -f gdigrab -framerate 30 -i desktop -c:v h264<sub>nvenc</sub> -qp 0 output.mkv
                        
                            ffmpeg -i output2.m4v -vf "scale=(trunc(iw/4)*4)/4:(trunc(ih/4)*4)/4" video.mp4
            
            -   lossless recording
            
                ffmpeg -video<sub>size</sub> 1920x1080 -framerate 30 -f x11grab -i :0.0 -c:v libx264rgb -crf 0 -preset ultrafast -color<sub>range</sub> 2 output.mkv

-   Math

    -   Bc
    
        -   float precision?
        
                echo 'scale=2 ; 1/3' | bc -l

-   Net

    -   General
    
        -   Count all current tcp connection on linux host?
        
                wc -l /proc/net/tcp
        
        -   List all tcp connections on a linux host?
        
                ss
                # or
                netstat
        
        -   List all ssh connections on a linux host?
        
                ss | grep ssh
    
    -   Netcat
    
        -   simple web server with netcat?
        
                while true; do nc -l 8989 <<< "Hi! the time is now $(date)"; done
    
    -   Ssh
    
        -   How to check the **actual** configuration of a sshd server?
        
            check the **actual** configuration of the dst server with: `ssh sshd -T`
        
        -   Ssh Tunnels
        
            -   ssh tunnels explained
            
                <https://unix.stackexchange.com/questions/115897/whats-ssh-port-forwarding-and-whats-the-difference-between-ssh-local-and-remot>
                
                [img]
                [[./img/ssh-tunnels-explained2.png][img2](./img/ssh-tunnels-explained.png)
            
            -   ssh reverse tunnel ?
            
                    # from the target machine:
                    ssh -R 2210:localhost:22 bserver.outside.com
                
                from: <https://toic.org/blog/2009/reverse-ssh-port-forwarding/>
            
            -   ssh tunnel example?
            
                    localPort=5555                              \
                    remotePort=5555                             \
                    sshStr=jenkins@jenkins-deploy.fircosoft.net \
                      bash -c 'ssh -N  -f -L ${localPort}:localhost:${remotePort} ${sshStr}'
            
            -   ssh tunnel socks "channel 2: open failed: administratively prohibited: open failed"
            
                -   make sure the destination ssh server has config in `/etc/ssh/sshd_config`:
                
                `AllowTcpForwarding all=q
                        =PermitOpen any`
                
                -   check the **actual** configuration of the dst server with: `ssh sshd -T`
        
        -   Passwordless and keyless ssh login
        
            -   ssh without password or key?
            
                    # remove password for user
                    passwd -d user
                    # sshd: allow empty password
                    sed -r 's/#(PermitEmptyPasswords) no/\1 yes/' -i.bak /etc/ssh/sshd_config
                    # allow login with passwords
                    sed -r                                       \
                        -e 's/#(PasswordAuthentication yes)/\1/' \
                        -i /etc/ssh/sshd_config                                                                          \
            
            -   ssh root without password or key?
            
                    passwd -d root                               \
                    && sed -r                                    \
                       -e 's/#(PermitEmptyPasswords) no/\1 yes/' \
                       -e 's/#(PasswordAuthentication yes)/\1/'  \
                       -e 's/#(PermitRootLogin).*$/\1 yes/'      \
                       -i /etc/ssh/sshd_config                   \
                
                -   dockerfile:
                    
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
            
            -   working conf for openssh 7.1 on alpine?
            
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
        
        -   generate public private key pair
        
                ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
        
        -   ssh or scp in a script without entering password ?
        
                expect -c "
                   spawn scp login@somehost.com:/somefile .
                   expect yes/no { send yes\r ; exp_continue }
                   expect password: { send password\r }
                   expect 100%
                   exit
                "
        
        -   get public key from private key ?
        
                ssh-keygen -y -f ~/.ssh/id_rsa
        
        -   Disable host verification?
        
            -   for one session
            
                    ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no peter@192.168.0.100
                
                <http://linuxcommando.blogspot.co.uk/2008/10/how-to-disable-ssh-host-key-checking.html>
            
            -   for all sessions:
            
                in `~/.ssh/config`:
                
                    Host 192.168.0.*
                      StrictHostKeyChecking no
                      UserKnownHostsFile=/dev/null
            
            -   for all sessions and all hosts:
            
                in `~/.ssh/config`:
                
                    StrictHostKeyChecking no
                    UserKnownHostsFile=/dev/null
        
        -   copy pub key to remote authorized<sub>keys</sub>?
        
                ssh-copy-id <user>@<host>
        
        -   workaround for a ssh slow login on a particular server?
        
            Use port forwarding to keep the connection open
            
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
        
        -   copy between two ssh hosts without intermediary copy?
        
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
        
        -   disable host has in known<sub>hosts</sub>?
        
                HashKnownHosts=false
        
        -   Non interactive sftp session with non pubkey password?
        
                sshpass -e -- sftp -oBatchMode=no -b - user@host << !
                      get /path/to/file
                      bye
                  !
        
        -   How to view actual ssh config (system wide + user config + cmdline/env)?
        
                ssh -G localhost
                #> hostname localhost
                #> port 22
                #> addressfamily any
                #> batchmode no
                #> (...)
        
        -   Sshfs
        
            -   how to mount remote fs with sshfs?
            
                -   mount:
                
                    # usage
                    sshfs USERNAME@HOSTNAME_OR_IP:/REMOTE_PATH LOCAL_MOUNT_POINT SSH_OPTIONS
                    # example
                    sshfs sessy@mycomputer:/remote/path /local/path -C -p 9876 -o allow_other
                
                <https://wiki.archlinux.org/index.php/SSHFS>
                
                -   umount: [how to umount a mounted sshfs?](#orgaec71d3)
            
            -   how to umount a mounted sshfs?
            
                    fusermount -u  /path/to
            
            -   sshfs with autossh?
            
                From: <https://wiki.gentoo.org/wiki/Autossh>
                
                             sshfs -o reconnect,compression=yes,transform_symlinks,ServerAliveInterval=45,ServerAliveCountMax=2,ssh_command='autossh -M 0' username@server:/ /mnt/remote"
                    Removal
        
        -   alpine ssh send<sub>pubkey</sub><sub>test</sub>: no mutual signature algorithm ?
        
            Depending on the actual algorithm avail on the server, a workaround would look like:
            ssh -o PubkeyAcceptedKeyTypes=+ssh-rsa $server
    
    -   Openssl
    
        -   SslCerts
        
            -   generate a self certificate for localhost (without prompt)?
            
                from: <https://letsencrypt.org/docs/certificates-for-localhost/>
                
                         openssl req -x509 -out localhost.crt -keyout localhost.key \
                    -newkey rsa:2048 -nodes -sha256 \
                    -subj '/CN=localhost' -extensions EXT -config <( \
                     printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
            
            -   How to add root cert to an Ubuntu install?
            
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
            
            -   best explaination of "everything derive from the root ca key"?
            
                <https://serverfault.com/questions/306345/certification-authority-root-certificate-expiry-and-renewal>
            
            -   Generate a self signed ca cert and key, and a cert and key for a how that works on the command line and chrome?
            
                from: <https://stackoverflow.com/questions/7580508/getting-chrome-to-accept-self-signed-localhost-certificate>
                Response: With only 5 openssl commands, you can accomplish this.
                
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
    
    -   Rsync
    
        -   how to specify the port in rsync?
        
                rsync -rvz -e 'ssh -p 2222' --progress --remove-sent-files ./dir user@host:/path
        
        -   how to exactly copy a local directory to a remote host (remove extra remote file if necessary) and back ?
        
                # local -> remote
                rsync -rvza --progress --delete workspace/ jenkins@localhost:/home/jenkins/workspace
                # remote -> local
                rsync -rvza --progress --delete jenkins@localhost:/home/jenkins/workspace/ workspace
        
        -   rsync and trailing slash behavior?
        
            Only matter for the source dir:
            
            -   if there is a trainling slash, means: copy the content of the dir
            -   without trailing slash mean copy the directory
    
    -   Openvpn
    
        -   list and connect with openvpn from cli?
        
            -   with nmanager
            
                    # list the connections
                    nmcli con show
                    # get the nome of a connection
                    con=openvpn
                    nmcli con up id $con
    
    -   Dns
    
        -   Get ip from hostname?
        
                host google.com
                #> google.com has address 172.217.17.78
        
        -   Get hostname from ip?
        
                nslookup $ip domain.com
                #> <ip> name = <domain>
    
    -   Network analysis
    
        -   Ngrep
        
            -   Ngrep example?
            
                    ngrep -l -W byline -d eth0 src host.com  and dst port 80
                      #               `-l` Line buffered output
                      #        `-W byline` Output suitable for HTTP
                      #          `-d eth0` Listen on interface eth0
                      #     `src host.com` Match only incomming traffic from host.com
                      #           `dst 80` Match only traffic going to port 80

-   Misc

    -   VirtualBox
    
        -   Windows host
        
            -   Linux Guest
            
                -   How to disable HyperV so VBox can run correctly?
                
                -   How to correctly install guestAdditon on ubuntu22.04?
                
                           # First how to check if installed properly:
                         for i in status status-kernel status-user; do sudo /sbin/rcvboxadd $i ; done
                           # the vobxadd installer needs:
                        sudo apt-get install build-essential gcc make perl dkms
                        #  not finished yet ! ;)
                
                -   How to correctly install guestAdditon on debian12?
                
                    -   Hint1
                    
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
                    
                    -   Hint2
                    
                        Also it seems to help to uninstall vbox (with /usr/sbin/vbox-uninstall-guest-additions)
                        And reinstall it again
                    
                    -   Hint3
                    
                        Beware of not enought video memory, it can impact the resolution of the vm

-   Utils

    -   Comm
    
        -   comm summary?
        
            `comm <(echo $'a\nb') <(echo $'a\nc')`
            
            <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
            
            
            <colgroup>
            <col  class="org-right" />
            
            <col  class="org-right" />
            
            <col  class="org-left" />
            </colgroup>
            <thead>
            <tr>
            <th scope="col" class="org-right">1</th>
            <th scope="col" class="org-right">2</th>
            <th scope="col" class="org-left">3</th>
            </tr>
            </thead>
            <tbody>
            <tr>
            <td class="org-right">&#xa0;</td>
            <td class="org-right">&#xa0;</td>
            <td class="org-left">a</td>
            </tr>
            
            <tr>
            <td class="org-right">b</td>
            <td class="org-right">&#xa0;</td>
            <td class="org-left">&#xa0;</td>
            </tr>
            
            <tr>
            <td class="org-right">&#xa0;</td>
            <td class="org-right">c</td>
            <td class="org-left">&#xa0;</td>
            </tr>
            </tbody>
            </table>
            
            -   column1: only in FILE1
            -   colukn2: only in FILE2
            -   column3: in FILE1 and FILE2
        
        -   binary to compare the content of files (all in a but not in b, etc)?
        
            `comm`
    
    -   Find
    
        -   find files modified in the last x minutes
        
                find . -cmin -5
        
        -   find files modified in the last x days
        
                find . -ctime -5
        
        -   handle filenames with spaces ?
        
                find . -maxdepth 1 -print0 | while read -d $'\0' d ; do echo $d ; done
            
            <http://www.cyberciti.biz/tips/handling-filenames-with-spaces-in-bash.html>
        
        -   sort files by modified date?
        
                find -type f -printf '%T@ %p\0' |
                sort -zk 1nr |
                sed -z 's/^[^ ]* //' | tr '\0' '\n'
        
        -   find files bigger than x MBytes?
        
                find . -size +500M -exec l {} \;
        
        -   find filename with regex?
        
                find . -type f -regextype egrep -regex '.*\.(msg|txt)$$'
        
        -   find with logical or?
        
                -name "*.xyz" OR ( -name "*.abc" AND -exec ... )
    
    -   Grep
    
        -   Non capturing group?
        
            Use: -(?:)-
            
                echo foo bar baz \
                | egrep '(?:foo)? bar'
                foo bar baz
        
        -   cheat sheet
        
            <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
            
            
            <colgroup>
            <col  class="org-left" />
            
            <col  class="org-left" />
            
            <col  class="org-left" />
            </colgroup>
            <thead>
            <tr>
            <th scope="col" class="org-left">&#xa0;</th>
            <th scope="col" class="org-left">short opt</th>
            <th scope="col" class="org-left">long opt</th>
            </tr>
            </thead>
            <tbody>
            <tr>
            <td class="org-left">print file name with match</td>
            <td class="org-left"><code>-H</code></td>
            <td class="org-left"><code>--with-filename</code></td>
            </tr>
            
            <tr>
            <td class="org-left">print only filename for matches</td>
            <td class="org-left"><code>-l</code></td>
            <td class="org-left"><code>--files-with-matches</code></td>
            </tr>
            </tbody>
            </table>
        
        -   Character class for blanks?
        
                jq -nRr '"1: \t", "2:  "' | egrep '[[:space:]]' | jq -R .
                #> "1: \t"
                #> "2:  "
        
        -   match pattern on multiples lines?
        
                seq 4  | grep -Pz '1\n2'
                #               ||
                #               |+-------+ treat input as a set of lines  null terminated
                #               +-----------+ Perl regex mode
                #> =1=
                #> =2=
                #>  3
                #>  4
    
    -   Tr
    
        -   remove all non printable characters from a file with tr ?
        
                tr -cd '[:print:]' < file > newfile
    
    -   Nohup
    
        -   run nohup?
        
                nohup bash -c "(time bash executeScript 1 input fileOutput > scrOutput) &> timeUse.txt" &
    
    -   MoreUtils
    
        -   read / process / write the same file ?
        
            -   Use:  `sponge`
            -   `sponge` will read stdin and write to specified file. Unlike a shell redirect it will soaks all its input before writing the output file.
            
                sort f | sponge f
        
        -   instead of xxx use moreutils yyy?
        
            <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
            
            
            <colgroup>
            <col  class="org-left" />
            
            <col  class="org-left" />
            
            <col  class="org-left" />
            </colgroup>
            <thead>
            <tr>
            <th scope="col" class="org-left">cmd</th>
            <th scope="col" class="org-left">insteadof</th>
            <th scope="col" class="org-left">use</th>
            </tr>
            </thead>
            <tbody>
            <tr>
            <td class="org-left"><code>chronic</code></td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>chronic backup_script.sh</code></td>
            </tr>
            
            <tr>
            <td class="org-left"><code>sponge</code></td>
            <td class="org-left"><code>sort filename</code> &vert; <code>uniq/ &gt; temp</code></td>
            <td class="org-left"><code>sort filename</code> &vert; <code>uniq \vert sponge filename</code></td>
            </tr>
            
            <tr>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>mv temp filename</code></td>
            <td class="org-left">&#xa0;</td>
            </tr>
            
            <tr>
            <td class="org-left"><code>isutf8</code></td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>isutf8 filename</code></td>
            </tr>
            
            <tr>
            <td class="org-left"><code>ifne</code></td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>./script.sh</code> &vert; <code>ifne less</code></td>
            </tr>
            
            <tr>
            <td class="org-left"><code>pee</code></td>
            <td class="org-left"><code>./script.sh</code> &vert; <code>tee output1 output2</code></td>
            <td class="org-left"><code>./script.sh</code> &vert; <code>pee 'grep pattern1' 'gzip -c &gt; output.gz'_</code></td>
            </tr>
            
            <tr>
            <td class="org-left"><code>ifdata</code></td>
            <td class="org-left"><code>&lt;parsing ifconfig&gt;</code></td>
            <td class="org-left">&#xa0;</td>
            </tr>
            
            <tr>
            <td class="org-left"><code>zrun</code></td>
            <td class="org-left"><code>diff &lt;(zcat one.gz) &lt;(zcat two.gz)</code></td>
            <td class="org-left"><code>zrun diff one.gz two.gz</code></td>
            </tr>
            
            <tr>
            <td class="org-left"><code>ts</code></td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>$ { echo "One" ; sleep 3s ; echo "Two" ; }</code> &vert; <code>ts</code></td>
            </tr>
            
            <tr>
            <td class="org-left"><code>errno</code></td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>$ errno 98</code></td>
            </tr>
            
            <tr>
            <td class="org-left"><code>vipe</code></td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>command1</code> &vert; <code>vipe</code> &vert; <code>command2</code></td>
            </tr>
            
            <tr>
            <td class="org-left"><code>vidir</code></td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>vidir directory/</code></td>
            </tr>
            
            <tr>
            <td class="org-left"><code>combine</code></td>
            <td class="org-left"><code>comm -12 file1 file2</code></td>
            <td class="org-left"><code>combine file1 and file2</code></td>
            </tr>
            
            <tr>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>comm -23 fileA fileB</code></td>
            <td class="org-left"><code>combine fileA not fileB</code></td>
            </tr>
            
            <tr>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>sort file1 file2</code> &vert; <code>uniq</code></td>
            <td class="org-left"><code>combine file1 or file2</code></td>
            </tr>
            
            <tr>
            <td class="org-left">&#xa0;</td>
            <td class="org-left"><code>sort file1 file2</code> &vert; <code>uniq --unique</code></td>
            <td class="org-left"><code>combine file1 xor file2</code></td>
            </tr>
            </tbody>
            </table>
            
            See: <http://devblog.nestoria.com/post/110168998173/moreutils-basic-unix-tools-that-ought-to-be>
    
    -   Stat
    
        -   Custom format with newlines?
        
                # use --printf to insert the code sequences
                stat --printf='%U\n%G\n%C\n%z\n' /var/log/secure
    
    -   Tar
    
        -   list the content of a remote tgz without intermediary files?
        
                curl http://url/to/file.tgz | tar tzfv -
        
        -   send tar compressed archive to stdout?
        
                seq 3 > x && tar czv x > x.tgz
        
        -   recompress without intermediary files?
        
            don't know how to do it with regular target
            but there's a solution with bsdtar
        
        -   tar: archive files name coming from stdin?
        
                find a -type f | tar cvf a.tgz -T -
        
        -   Specify arbitrary order of files in tar file?
    
    -   Bsdtar
    
        -   recompress without intermediary files?
        
                bsdtar -cJf - @- < a.tar.lzo > a.tar.xz
    
    -   Tree
    
        -   print tree with unicode characters?
        
                tree -N
    
    -   Xargs
    
        -   run a cmd on each line of stdin with xargs?
        
                echo 'a
                b
                c' | xargs -I {} ./f {}
        
        -   use bash function?
        
                f() { bc; }
                echo '1 * 1
                2 * 2
                3 * 3'                                            \
                | xargs -i echo "$(declare -f f) ; echo '{}' | f" \
                | bash
    
    -   Zip
    
        -   unzip a single file from archive?
        
                unzip -p myarchive.zip path/to/zipped/file.txt >file.txt
        
        -   compress dir recursive?
        
        -   compress dir but exclude a directory ?
        
                zip -9 -r --exclude=*.svn*  foo.zip [directory-to-compress]
            
                zip -r archive.zip /dir

-   Web

    -   Curl
    
        -   follow redirects?
        
                curl -L <url>
        
        -   post data from stdin?
        
                cat data.json | curl -H "Content-Type: application/json" -X POST -d @- http://api
    
    -   Wget
    
        -   recursively download for example nexus ?
        
                wget --header="Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"                  \
                     --header="User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko/20100101 Firefox/48.0" \
                     --recursive                                                                                         \
                     -e robots=off                                                                                       \
                     --no-parent                                                                                         \
                     http://nexus-url/x/y/z
        
        -   equivalent of curl -sS?
    
    -   Nginx
    
        -   Check config syntax?
        
                /usr/nginx/sbin/nginx -t -c /usr/nginx/conf/nginx.conf
                /usr/nginx/sbin/nginx -t
    
    -   Lynx
    
        -   html to text by piping to lynx?
        
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

-   X11

    -   NxClient
    
        -   keyboard issue when connecting with nx ?
        
            Try:
            
                setxkbmap -model evdev -layout us


<a id="org2e121aa"></a>

###### Hardware

-   Sound

    -   Troubleshoot sound in Linux/Ubuntu ?
    
        Source: <https://help.ubuntu.com/community/SoundTroubleshootingProcedure>
        
            ( set -xv && killall pulseaudio; pulseaudio -k  ; rm -r ~/.config/pulse/* ; rm -r ~/.pulse* )
            sleep 10
            pulseaudio --start

-   Ubuntu/Debian change the machine uuid (useful when the dhcp id is derived from it) ?

    from: <https://bugs.launchpad.net/ubuntu/+source/cloud-init/+bug/1563951>
    
        # once per instance remove /etc/machine-id and run systemd-machine-id-setup


<a id="org0cdd21b"></a>

###### Sysadmin

-   System Services (systemctl, &#x2026;)

    -   Systemd
    
        -   systemd / systemV cheatsheet
        
            from: <https://fedoraproject.org/wiki/SysVinit_to_Systemd_Cheatsheet>
            
            <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
            
            
            <colgroup>
            <col  class="org-left" />
            
            <col  class="org-left" />
            
            <col  class="org-left" />
            </colgroup>
            <thead>
            <tr>
            <th scope="col" class="org-left">service</th>
            <th scope="col" class="org-left">Sysvinit Command</th>
            <th scope="col" class="org-left">Systemd Command</th>
            </tr>
            </thead>
            <tbody>
            <tr>
            <td class="org-left">stop</td>
            <td class="org-left"><code>service ${name} stop</code></td>
            <td class="org-left"><code>systemctl stop        ${name}</code></td>
            </tr>
            
            <tr>
            <td class="org-left">start</td>
            <td class="org-left"><code>service ${name} start</code></td>
            <td class="org-left"><code>systemctl start       ${name}</code></td>
            </tr>
            
            <tr>
            <td class="org-left">restart</td>
            <td class="org-left"><code>service ${name} restart</code></td>
            <td class="org-left"><code>systemctl restart     ${name}</code></td>
            </tr>
            
            <tr>
            <td class="org-left">reload conf</td>
            <td class="org-left"><code>service ${name} reload</code></td>
            <td class="org-left"><code>systemctl reload      ${name}</code></td>
            </tr>
            
            <tr>
            <td class="org-left">restart if service already running</td>
            <td class="org-left"><code>service ${name} condrestart</code></td>
            <td class="org-left"><code>systemctl condrestart ${name}</code></td>
            </tr>
            
            <tr>
            <td class="org-left">status</td>
            <td class="org-left"><code>service ${name} status</code></td>
            <td class="org-left"><code>systemctl status      ${name}</code></td>
            </tr>
            </tbody>
            <tbody>
            <tr>
            <td class="org-left">enable</td>
            <td class="org-left"><code>chkconfig ${name} on</code></td>
            <td class="org-left"><code>systemctl enable     ${name}</code></td>
            </tr>
            
            <tr>
            <td class="org-left">disable</td>
            <td class="org-left"><code>chkconfig ${name} off</code></td>
            <td class="org-left"><code>systemctl disable    ${name}</code></td>
            </tr>
            
            <tr>
            <td class="org-left">isEnabled?</td>
            <td class="org-left"><code>chkconfig ${name}</code></td>
            <td class="org-left"><code>systemctl is-enabled ${name}</code></td>
            </tr>
            </tbody>
            <tbody>
            <tr>
            <td class="org-left">reload when created or modififeds</td>
            <td class="org-left"><code>chkconfig ${name} --add</code></td>
            <td class="org-left"><code>systemctl daemon-reload</code></td>
            </tr>
            </tbody>
            <tbody>
            <tr>
            <td class="org-left">list all services</td>
            <td class="org-left"><code>ls /etc/rc.d/init.d/</code></td>
            <td class="org-left"><code>systemctl</code></td>
            </tr>
            
            <tr>
            <td class="org-left">&#xa0;</td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left">(or) <code>systemctl list-unit-files --type=service</code></td>
            </tr>
            
            <tr>
            <td class="org-left">&#xa0;</td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left">(or) <code>ls /{etc,lib}/systemd/system/*.service</code></td>
            </tr>
            </tbody>
            <tbody>
            <tr>
            <td class="org-left">print levels where this service</td>
            <td class="org-left"><code>chkconfig ${name} --list</code></td>
            <td class="org-left"><code>systemctl list-unit-files --type=service</code></td>
            </tr>
            
            <tr>
            <td class="org-left">is on/off</td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left">(or) <code>ls /etc/systemd/system/*.wants/</code></td>
            </tr>
            </tbody>
            <tbody>
            <tr>
            <td class="org-left">print graphical mode services</td>
            <td class="org-left"><code>chkconfig --list \vert grep 5:on</code></td>
            <td class="org-left"><code>systemctl list-dependencies graphical.target</code></td>
            </tr>
            </tbody>
            <tbody>
            <tr>
            <td class="org-left">print what level of this service</td>
            <td class="org-left"><code>chkconfig ${name} --list</code></td>
            <td class="org-left"><code>ls /etc/systemd/system/*.wants/${serviceName}.service</code></td>
            </tr>
            </tbody>
            </table>
        
        -   follow logs of a particular systemd service?
        
                journalctl -fu collectd
        
        -   restart network on systemd?
        
            Depends, on recent installation, may work:
            
                systemctl restart systemd-networkd
    
    -   General Linux
    
        -   Linux reload service config
        
                sudo systemctl daemon-reload
    
    -   Centos
    
        -   create a new systemd unit file?
        
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
            
                # list all services
                systemctl list-unit-files --type=service
                
                # check if a service is running
                systemctl status name.service
                
                # enable a service
                systemctl enable docker.service
                
                # check if a service is enabled
        
        -   the hostname keep coming back at its previous state after each restart?
        
            Try setting the hostanem in `/etc/hostname`

-   User Admin

    -   how to add a group to a user ?
    
            sudo usermod -aG docker u
    
    -   add a user with specific groups ?
    
            adduser -G group1,group2 <user>
    
    -   get the groups of a user ?
    
            groups <user>
    
    -   change the shell of a user?
    
            usermod -s /bin/bash user
    
    -   remove a user?
    
            export U=<user>
            userdel -r $U
    
    -   add a user?
    
            adduser <user>
    
    -   view login activity?
    
            last

-   Sudo

    -   allow sudo without password for a user?
    
            # if there's a sudo group add the user to this group
    
    -   execute a cmd as another user?
    
            sudo -u <user> /bin/ls -alrth <...>
            # WARN! path to binaries must be absolute!

-   Devices (hdd,&#x2026;)

    -   eject a cd rom?
    
            ejet /dev/cdrom
    
    -   how to list all supported FS for mounting?
    
            cat /proc/filesystems
    
    -   how to fix a screwed nfs mount without rebooting?
    
        TODO: should be completed
        
        -   Find the list of process open on the screwed fs:
        
            lsof | grep '/path/to/nfs'
        
        -   kill them
        -   remount
        
        ref: <http://joelinoff.com/blog/?p=356>
    
    -   Swap
    
        -   manage swap (status, enable, disable)?
        
                # status
                swapon -s
                # alloff
                swapoff -a
                # allon
                swapon -a

-   Dns

    -   How to query all the entries of a dns server ?
    
            set -- domain=mydomain.net
            dig +nocmd ${domain} any +multiline +noall +answer

-   recover a lost root password at boot with grub

    -   type some keys at boot to display the menu
    -   edit the boot options
    -   change the line
        -   that contains: &#x2026; kerne &#x2026; quiet splash
        -   remove quiet splash
        -   add at the end: init=/bin/bash
    -   boot
    -   at the prompt:
        
            mount -o remount,rw /
            mount -o remount,rw /proc
            passwd
            sync
    -   reboot

-   Special files

    -   Removed /dev/null how to remake it?
    
        mknod /dev/null c 1 3
        chmod 666 /dev/null


<a id="org6408ddb"></a>

###### Terminal

-   Colors

    -   simple way to color output with grep?
    
            echo -e 'foo\nbar\nbaz'                           \
            | GREP_COLOR='01;36' egrep --color=always 'foo|$' \
            | GREP_COLOR='01;31' egrep --color=always 'baz|$'
            #> foo *colored turquoise*
            #> bar
            #> baz *colored red*

-   Replace capslock by ctrl in console?

    -   working also in virtual consoles?
    
            #in  /etc/default/keyboard
            #replace XKBOPTIONS="" by XKBOPTIONS="ctrl:nocaps"
            # then run
            run sudo dpkg-reconfigure -phigh console-setup
        
        ref: <https://www.emacswiki.org/emacs/MovingTheCtrlKey#toc9>
    
    -   working under X?
    
            setxkbmap -option ctrl:nocaps

-   replace capslock by ctrl in a terminal under X ?

-   change language keyboard mapping

        # run
        dpkg-reconfigure keyboard-configuration
        # or
        # edit /etc/default/keyboard:
        #   change XKBLAYOUT="us,de,fr,ua,ru" by "us" for example
        
        # for changes to take effect:
        service keyboard-setup restart
        
        # it should suffice, but if not:
        udevadm trigger --subsystem-match=input --action=change
    
    <https://wiki.debian.org/Keyboard>

-   change text mode resolution?

-   paste example?

        $ paste <(seq 1 3) <(seq 1 3)
        1       1
        2       2
        3       3

-   show which key is pressed in a terminal?

    -   showkey
    -   if in a ssh session
        
            sudo apt install ncurses-examples
            /usr/lib/ncurses/examples/demo_altkeys

-   get the number of rows and colums?

        tput lines
        tput cols

-   Presentation conventions

    -   display a command line?
    
            `npm install -g jsonresume-theme-kendall`


<a id="orgbfac877"></a>

###### Io

-   Disk

    -   list files open by a particular process
    
            lsof -u jenkins | <grep/cut/jq>
    
    -   how to do a simple bind mount?
    
            # with mount cmd:
            mount --bind /src/path /dst/path
            
            # with /etc/fstab:
            /src/path /dst/path none defaults,bind 0 0
    
    -   Disks
    
        -   Disks caches
        
            -   how do I clear the disk caches in Linux?
            
                From <https://www.tecmint.com/clear-ram-memory-cache-buffer-and-swap-space-on-linux/>
                
                    # clear PageCache only
                    sync; echo 1 > /proc/sys/vm/drop_caches
                    # clear dentries and inodes
                    sync; echo 2 > /proc/sys/vm/drop_caches
                    # clear page cache, dentries and inodes (not on production!)
                    sync; echo 3 > /proc/sys/vm/drop_caches
    
    -   Images
    
        -   Copy an img file to a disk with bad blocks?
        
                sudo ddrescue  -r3 2020-08-20-raspios-buster-armhf-full.img -d -f /dev/sdX ddrescuemapfile

-   RemoteFs

    -   nfs
    
        -   How to mount a remote nfs drive on a linux host?
        
                mount -t nfs {remote_pc_address}:/remote/dir /some/local/dir
        
        -   List all nfs share of a remote nfs server?
        
                showmount my.nfs.server.com
            
            Can be found in package (on debian like): `nfs-common`

-   VirtualFs

    -   How to get the load with /proc?
    
            cat /proc/loadavg

-   Processes

    -   How to find how are connected by pipes running processes?
    
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
    
    -   Autossh
    
        -   How to keep a ssh sesssion open with autossh?
        
            Exemple from:  <https://wiki.gentoo.org/wiki/Autossh>
            
                # ssh on port 222, setup a sock proxy on port 999
                autossh                         \
                    -M 0                        \
                    -p 222                      \
                    -N                          \
                    -D 9999                     \
                    -o "ServerAliveInterval 45" \
                    -o "ServerAliveCountMax 2" username@myserver

-   Completion

    -   using bash's autocomplete with zsh?
    
            touch cmd && chmod +x cmd
            # run bashcompinit
            autoload bashcompinit
            bashcompinit
            # bash's way of saying that cmd can complete with foo or bar or baz:
            complete -W 'foo bar baz' cmd
            #> ./cmd b<tab><tab> will show "foo" "bar" "baz"
    
    -   Copy an existing completion for another command?
    
        -   From: <https://github.com/zsh-users/zsh-completions/blob/master/zsh-completions-howto.org>
        
            compdef cmd1=cmd2


<a id="org53a8622"></a>

###### X

-   copy to system clipboard from the command line?

        echo a | xclip -selection clipboard

-   dual monitor setup: turn off one of the monitor and not the other?

        # choose one of the monitor with:
        xrandr -q
        # disbale it
        xrandr --output LVDS1 --off

-   force X resolution when an external monitor is not detected?

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

-   Fonts

    -   List fonts?
    
            fc-list

-   Gnome

    -   How to logout from Gnome with the terminal?
    
            gnome-session-quit

-   Remote

    -   NoMachine NX
    
        -   How to administrate the NX server?
        
                sudo /usr/NX/bin/nxserver --status
                sudo /usr/NX/bin/nxserver --stop
                sudo /usr/NX/bin/nxserver --start

-   Xpra

    -   xpra quickstart on ubuntu?
    
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

-   Window managers

    -   Gnome
    
        -   open the network manager (for proxy settings) from the command line?
        
                gnome-control-center network
        
        -   Gnome 3
        
            -   Gnome Shell
            
                -   how to have cpu,etc montoring in the top bar?
                
                    -   Install system-monitor gnome extension
                    -   Can search it through gnome shell search (win key)
                
                -   how restart gnome shell?
                
                    -   `alt-F2`
                    -   `r`
                    
                    -   Gnome Shell Extensions?
                    
                        -   how to manage enabling/disabling gnome shell user extensions (command line)?
                        
                            from: <https://askubuntu.com/questions/1029376/how-to-enable-and-disable-gnome-extensions-from-command-line>
                            
                                # are all gnome shell user extensions disabled?
                                gsettings get org.gnome.shell disable-user-extensions
                                # disable all gnome shell user extensions
                                gsettings set org.gnome.shell disable-user-extensions true

-   Xdg-open

    -   choose browser to use with xdg-open?
    
            xdg-settings set default-web-browser google-chrome.desktop


<a id="org1bbb2a1"></a>

###### Converting formats

-   Converting human readable <-> bytes

    On linux, onw way is numfmt
    
        echo 1K | numfmt --from=iec
        #> 1024
    
    More Options here:Q <https://unix.stackexchange.com/questions/44040/a-standard-tool-to-convert-a-byte-count-into-human-kib-mib-etc-like-du-ls1>

-   convert file format table?

    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <thead>
    <tr>
    <th scope="col" class="org-left">src</th>
    <th scope="col" class="org-left">dst</th>
    <th scope="col" class="org-left">command</th>
    </tr>
    </thead>
    <tbody>
    <tr>
    <td class="org-left"><code>rtf</code></td>
    <td class="org-left"><code>pdf</code></td>
    <td class="org-left"><code>libreoffice --headless --invisible --norestore --convert-to pdf source-file.rtf</code></td>
    </tr>
    </tbody>
    </table>

-   Pdf

    -   replace a string in a pdf file ?
    
            pdftk file.pdf output uncompressed.pdf uncompress
            
            sed -e "s/ORIGINALSTRING/NEWSTRING/g" <uncompressed.pdf >modified.pdf
            
            pdftk modified.pdf output recompressed.pdf compress
        
        <http://stackoverflow.com/questions/9871585/how-to-find-and-replace-text-in-a-existing-pdf-file-with-pdftk-or-other-command>

-   units

    To convert many units


<a id="org971f5af"></a>

###### Locale

-   fix locale config?

    -   ubuntu / debian
    
            # add to /etc/environnement
            LC_ALL=en_US.UTF-8
            LANG=en_US.UTF-8
            
            sudo locale-gen "en_US.UTF-8"
            sudo dpkg-reconfigure locales
        
        **note**:
        
            
                  [warn] /etc/environment has been deprecated for locale information; use /etc/default/locale for LANG=en_US.UTF-8 instead ... (warning).
            [warn] /etc/environment has been deprecated for locale information; use /etc/default/locale for LC_ALL=en_US.UTF-8 instead ... (warning).
    
    -   centos
    
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


<a id="org7e0321a"></a>

###### Network

-   How to trace all network activity?

    `tcpflow`
    
        tcpflow -p -c -i eth0 port 80 | grep -oE '(GET|POST|HEAD) .* HTTP/1.[01]|Host: .*'
    
    <http://unix.stackexchange.com/questions/6279/on-the-fly-monitoring-http-requests-on-a-network-interface>

-   how to get the ip adresse of the local host ?

    **Note**: To be verfied!
    
        hostname -I
    
    or (?)
    
        hostname -I | cut -d' ' -f1

-   list open ports?

        netstat -lntu

-   Proxy

    -   Request with curl through a proxy over ssh ?
    
            remoteHost=remote.host
            remoteHostSshPort=22222
            # Create socks5 proxy on client machine
            ssh -vvv -D 8123 -f -C -N -p 55555 u@localhost
            # Request with curl telling him to use the proxy
            curl -x socks5h://localhost:8123 http://remote.host.com
            # OR
            curl --socks5-hostname localhost:8123 http://remote.host.com

-   how to list all open ports and their associated processes?

        sudo netstat -lntp

-   Mtu

    -   temporary change the mtu of a network interface?
    
            ifconfig eth0 mtu 9000

-   Wifi

    -   Connect to wifi with via command line?
    
        -   Using nmcli
        
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


<a id="org558bea0"></a>

###### Compression

-   compress stdin, uncompress to stdout ?

        |            | cmd                       |
        |------------+---------------------------|
        | compress   | echo foobarXgzip > msg.gz |
        | decompress | zcat msg.gz               |

-   Xz

    -   compress/decompress stdin with xz?
    
            # compress
            seq 3 | xz > out.xz
            # decompress
            cat out.xz | unxz
            #> 1
            #> 2
            #> 3
    
    -   decompress stdin with xz?


<a id="orgca41595"></a>

###### Fs

-   difference between `/bin`, `/usr/bin`, `/usr/local/bin`?

    From: <https://unix.stackexchange.com/questions/8656/usr-bin-vs-usr-local-bin-on-linux>
    
    -   `/bin`: for booting the os (must fit on a small partition)
    -   `/usr/bin`: Normal binaries installed by the package manager
    -   `/usr/local/bin`: Was installed after manually compiled (for exemple)

-   Zfs

    -   Dedup
    
        -   Size RAM for online dedup ?
        
            A random web page:
            "
            For every TB of pool data, you should expect 5 GB of dedup table data, assuming an average block size of 64K.
            "
        
        -   Current RAM usage for dedup on a particular zfs pool?
        
            See: <https://serverfault.com/questions/533877/how-large-is-my-zfs-dedupe-table-at-the-moment>
            
                  zpool status -D  tank
                #>  (...)
                #> dedup: DDT entries 10811910, size 475B on disk, 153B in core
                  jq -cn '10811910 * 153 | . / (1024 * 1024 * 1024) | {gb: .}'
                #> {"gb":1.5406145062297583}
    
    -   Create a new zfs "env" in a file?
    
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
    
    -   How to destroy a zpool ?
    
            zpool destroy <poolName>
    
    -   How to add new devices to an exising pool?
    
            # List already used devices
            sudo zpool status
            # check availavble devices
            lsblk
            # add a device to the pool
            sudo zpool add zpool-docker /dev/sde
            # list again to check it has been taken into account
            sudo zpool add zpool-docker /dev/sde
    
    -   How to view the dedup and compression properties of pools?
    
            # a starting point:
            sudo zfs list -o devices,type,mountpoint,compressratio,refcompressratio,compression,dedup
    
    -   Snaphot clones, etc
    
        from: <https://www.howtoforge.com/tutorial/how-to-use-snapshots-clones-and-replication-in-zfs-on-linux/>
        
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
    
    -   Send/receive
    
        -   How to do send a whole pool to another pool?
        
                # initial
                ssh src-host 'sudo zfs send -v -R -I srcpool@snap' | sudo zfs receive -v -Fdu dstpool
                # incremental
                ssh src-host 'sudo zfs send -v -R -I srcpool@snap srcpool@snap2' | sudo zfs receive -v -Fdu datapool-mir
            
            In one case I was only able to send the initial with:
            
                # initial
                ssh src-host 'sudo zfs send -v -R -I srcpool srcpool@snap' | sudo zfs receive -v -Fdu dstpool
        
        -   How to to send a whole pool with dedup=on to another pool but with dedup=off?
        
                # initial
                ssh src-host 'sudo zfs send -v -R -I srcpool srcpool@snap' \
                    | sudo zfs receive -o dedup=off -v -Fdu dstpool
        
        -   zfs partial send / receive ?
        
            from: <https://unix.stackexchange.com/questions/343675/zfs-on-linux-send-receive-resume-on-poor-bad-ssh-connection>
            
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
    
    -   How to list all devices of a pool?
    
            sudo zpool list  -v -L
    
    -   Grow a zfs pool when a device has grown?
    
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

-   AccessControl

    -   Set read right reccursive for all files and and dir in a given dir?
    
            dir=/path/to
            && find "$dir" -type f -print0 | xargs -0 chmod 744 \
            && find "$dir" -type d -print0 | xargs -0 chmod 755


<a id="org9a48f81"></a>

###### Distribs

-   Alpine

    -   Apk
    
        -   use a http cache for apk ?
        
            from: <https://hub.docker.com/r/vektorlab/apk-cache/>
            
            -   Run an apk-cache on port 80 + &#x2013;add-host:
            
                # run an apk-cache container
                docker run -d -p 80:80 --name=apk-cache vektorlab/apk-cache
                # run container by replacing dl-4.alpinelinux.org:
                docker run --add-host dl-cdn.alpinelinux.org:${hostIp} -it alpine:3.6
                # Alternative if not running on port 80, link the container:
                docker run -d -p 80:80 --name=apk-cache vektorlab/apk-cache
            
            -   Run an apk-cache on any port + link on port 80 + &#x2013;add-host:
            
                # run an apk-cache container
                docker run -d -p 8080:80 --name=apk-cache vektorlab/apk-cache
                # docker run with link
                docker run -ti --link apk-cache:dl-4.alpinelinux.org alpine:latest /bin/sh
            
            -   Run apk-cache on any port + overwrite resolution of dl-4.alpinelinux.org via dnsmasq
        
        -   add a repo?
        
                echo "http://107.181.185.116/alpine/v3.2/main" >> /etc/apk/repositories; \
        
        -   how to install telnet on alpine ???
        
        -   repo key rotated? (UNTRUSTED signature when `apk add`)?
        
                # add the new key
                apk add -X https://dl-cdn.alpinelinux.org/alpine/v3.14/main -u alpine-keys

-   Debian

    -   Old debian GPG invalid signature when apt-get update?
    
        Re-import expired pgp keys with:
        
            apt-key list | grep expired |  tr -s ' '  | cut -f2 -d ' ' | cut -f2 -d'/' | sed -r 's/.*/apt-key adv --recv-keys --keyserver keys.gnupg.net &/' | bash -xv
        
        Or try with an ubuntu keyserver (and port 80 to go through firewalls):
        
            apt-key list \
                | grep expired                                                                        \
                | tr -s ' '                                                                           \
                | cut -f2 -d ' '                                                                      \
                | cut -f2 -d'/'                                                                       \
                | sed -r 's|.*|apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80  &|' \
                | bash -xv \
            ;
    
    -   Bookworm
    
        -   how to install java8 on Debian Bookworm?
        
            Best solution found yet:
            
            -   enable (if necessary) the debian non-free repo
            -   install nvidia-openjdk-8-jre: `apt install nvidia-openjdk-8-jre`
            -   disable (if necessary) the debian non-free repo
            
            <https://packages.debian.org/bookworm/nvidia-openjdk-8-jre>
            
            And switch between old/new java with:
            `update-alternatives --config java`
            `update-alternatives --config javac`
        
        -   Fresh install of bookworm 12.5 via cd.iso apt update fails !?
        
                apt update
                
                #> Err:1 http://security.debian.org/debian-security bookworm-security/main amd64 libuv1 amd64 1.44.2-1+deb12u1
                #> 503  Service Unavailable [IP: 199.232.58.132 80]
                #> Err:2 http://security.debian.org/debian-security bookworm-security/main amd64 bind9-host amd64 1:9.18.24-1
            
            Solved it using <https://wiki.debian.org/SourcesList>
            
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

-   Ubuntu

    -   X
    
        -   Disable Wayland to use Xorg instead?
        
                Edit =/etc/gdm3/custom.conf=
                change:  :WaylandEnable=true:
                by    :  :WaylandEnable=false:
    
    -   Admin
    
        -   How to authorize normal user to connect to wifi withouth authenticating as admin ?
        
            -   Using the admin account, connect to the wifi
            -   And in the wifi properties, choose:
                -   "Make available to others users"
                -
    
    -   prevent snapd for ever installing?
    
        from: <https://askubuntu.com/questions/1345385/how-can-i-stop-apt-from-installing-snap-packages>
        
            # purge snapd
            apt purge snapd
            # holdit
            apt-mark hold snapd
    
    -   18.04
    
        -   X
        
            -   Normal alt-tab?
            
                From: <https://askubuntu.com/questions/1036248/how-to-separate-opened-windows-in-alttab-switcher-in-ubuntu-18-04>
                
                -   Go to `Settings > Devices > Keyboard`.
                -   Choose: "Switch windows"
                -   Assign 'alt-tab' to it
        
        -   uninstall snap?
        
            from: <https://stackoverflow.com/questions/50322306/how-to-remove-snap-store-from-ubuntu>
            
                sudo apt autoremove --purge snapd

-   Raspberry Pi

    -   Install docker on Raspberry Pi 4?
    
        <https://docs.docker.com/engine/install/debian/#install-using-the-convenience-script>
        As of 20230101:
        
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


<a id="org3cb6302"></a>

###### Backup

-   Bup

    -   bup essentials?
    
        <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
        
        
        <colgroup>
        <col  class="org-left" />
        
        <col  class="org-left" />
        
        <col  class="org-left" />
        </colgroup>
        <thead>
        <tr>
        <th scope="col" class="org-left">category</th>
        <th scope="col" class="org-left">what?</th>
        <th scope="col" class="org-left">cmd</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td class="org-left">init</td>
        <td class="org-left">init bup in curr dir</td>
        <td class="org-left"><code>bup init</code></td>
        </tr>
        </tbody>
        <tbody>
        <tr>
        <td class="org-left">save</td>
        <td class="org-left">local backup</td>
        <td class="org-left"><code>bup index $d</code></td>
        </tr>
        
        <tr>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">- of   dir : $d</td>
        <td class="org-left"><code>bup save -n ${n} ${d}</code></td>
        </tr>
        
        <tr>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">- with name: $n</td>
        <td class="org-left">&#xa0;</td>
        </tr>
        </tbody>
        <tbody>
        <tr>
        <td class="org-left">restore</td>
        <td class="org-left">Restore local backup</td>
        <td class="org-left"><code>bup restore -C ${p} ${n}/${d}</code></td>
        </tr>
        
        <tr>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">- of dir    : $d</td>
        <td class="org-left">&#xa0;</td>
        </tr>
        
        <tr>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">- with name : $n</td>
        <td class="org-left">&#xa0;</td>
        </tr>
        
        <tr>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">- at path   : $p</td>
        <td class="org-left">&#xa0;</td>
        </tr>
        </tbody>
        <tbody>
        <tr>
        <td class="org-left">list</td>
        <td class="org-left">list backup</td>
        <td class="org-left"><code>bup ls $n</code></td>
        </tr>
        
        <tr>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">- with name: $n</td>
        <td class="org-left">&#xa0;</td>
        </tr>
        </tbody>
        <tbody>
        <tr>
        <td class="org-left">save</td>
        <td class="org-left">local backup</td>
        <td class="org-left"><code>tar cvf $d</code> &lt;pipe&gt; <code>bup split -n $n -vv</code></td>
        </tr>
        
        <tr>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">- of   dir : $d</td>
        <td class="org-left">&#xa0;</td>
        </tr>
        
        <tr>
        <td class="org-left">&#xa0;</td>
        <td class="org-left">- with name: $n</td>
        <td class="org-left">&#xa0;</td>
        </tr>
        </tbody>
        </table>


<a id="orge028e8b"></a>

##### Other UNIXes


<a id="org8802286"></a>

###### Solaris

-   equivalent of linux's `ps aux` ?

    maybee not exaclty equiv, but roughly:
    
        ps -AfL


<a id="orge6e88b8"></a>

###### AIX

-   list all processes with their corresponding commands?

        ps -Af
    
    -   How to know the actual amount of ram used by dedup on a particular dataset ?
    
        from: <https://serverfault.com/questions/533877/how-large-is-my-zfs-dedupe-table-at-the-moment>
        
            sudo zpool status -D zpool-docker | jq -Rr 'capture("^\\s*dedup: DDT entries (?<ddt>[0-9]+)[^0-9]\\s+size (?<sizeOnDisk>[0-9]+) on disk, (?<inCore>[0-9]+) in core$") | map_values(fromjson) | { ramUsedForDedupInMBytes: (.ddt * .inCore / (1024 * 1024))}'
        
        -   common rsync flags?
        
                # to copy exactly (like above) plus more feedback:
                rsync -rvza --progress --delete --info=progress2 workspace/ jenkins@localhost:/home/jenkins/workspace
                # even more verbose
                rsync -rvza --progress --delete --info=stats2,misc1,flist0 workspace/ jenkins@localhost:/home/jenkins/workspace
        
        -   Compress / decompress on the fly?
        
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
        
        -   How to display the actual configuration of the ssh command?
        
                ssh user@host -G
        
        -   Signal to control nginx at runtime?
        
                quit – Shut down gracefully
                reload – Reload the configuration file
                reopen – Reopen log files
                stop – Shut down immediately (fast shutdown)


<a id="org8eef66d"></a>

##### M$ Windows


<a id="org5fa96f6"></a>

###### Cygwin

-   Sshd

    -   start sshd as a service after its installation with the Cygwin installer?
    
        -   TODO to be verified
        
            1.  Open a cmd.exe as administrator
            2.  Run:
                
                    cygrunsrv -S sshd
                
                (from: <https://unix.stackexchange.com/questions/296275/running-sshd-in-cygwin-var-empty-must-be-owned-by-root>
    
    -   install gpg under cygwin?
    
        It's already in the standard Cygwin repo, only called `gnupg`.


<a id="org76d5daa"></a>

###### cmd.exe

-   windows services cheatsheet?

    -   list all
        
            sc queryex type= service state= all
    
    -   list service containing the string "NATION"?
        
            sc queryex type= service state= all | find /i "NATION"


<a id="org990e7f8"></a>

###### Linux Guests in a Windows vbox host

-   Disable hyperV for vbox?

    -   open a windows cmd.exe as admin
    -   then run:
    
        mountvol X: /s
        copy %WINDIR%\System32\SecConfig.efi X:\EFI\Microsoft\Boot\SecConfig.efi /Y
        bcdedit /create {0cb3b571-2f2e-4343-a879-d86a476d7215} /d "DebugTool" /application osloader
        bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} path "\EFI\Microsoft\Boot\SecConfig.efi"
        bcdedit /set {bootmgr} bootsequence {0cb3b571-2f2e-4343-a879-d86a476d7215}
        bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} loadoptions DISABLE-LSA-ISO,DISABLE-VBS
        bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} device partition=X:
        mountvol X: /d
    
    -   reboot
    -   press F3 at all the question displayed pre-boot

-   manually mount a shared folder in a linux guest?

        sudo mount -t vboxsf <sharedFolderName> /path/to/shared/folder/dir

-   host alt-tab when in a guest?

     `host key`
     then
    alt-tab

-   Windows Hosts

    -   Windows10
    
        -   VT-x is not available (VERR<sub>VMX</sub><sub>NO</sub><sub>VMX</sub>)
        
            From:
            
            -   VT-x is not enabled in the BIOS
            -   The CPU doesn't support VT-x
            -   Hyper-V virtualization is enabled in Windows
            -   
            
            -   Run in command prompt:
            
                dism.exe /Online /Disable-Feature:Microsoft-Hyper-V
            
            -   And reboot


<a id="org380b653"></a>

#### Vim


<a id="orgd179327"></a>

##### Yaml


<a id="org7b36198"></a>

###### Folding yaml in vim?

from: <https://lornajane.net/posts/2018/vim-settings-for-working-with-yaml>
Starting point, put in your `~/.vimrc`:

    " add yaml stuffs
    au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


<a id="org1c00fc3"></a>

# Virtualization


<a id="orgb5e14a9"></a>

## Docker


<a id="org4a25c0c"></a>

### Images


<a id="orgbce8527"></a>

#### find images on the command line ?

???


<a id="org8592777"></a>

#### Building


<a id="org21fb6f7"></a>

##### docker build from stdin?

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


<a id="orgd5f402a"></a>

#### Tags


<a id="orge5bf223"></a>

##### Give a name to an image?

    docker tag <srcImgId>   <imgName>
    docker tag 978d85d02b87 firc/foo:1


<a id="org9a173f8"></a>

### Containers


<a id="org9ce52cc"></a>

#### docker run/start/exec ?

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">cmd</th>
<th scope="col" class="org-left">descr</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left">run</td>
<td class="org-left">run cmd in <b>new</b> container</td>
</tr>

<tr>
<td class="org-left">exec</td>
<td class="org-left">run cmd in <b>running</b> container</td>
</tr>

<tr>
<td class="org-left">start</td>
<td class="org-left">start a <b>stopped</b> container</td>
</tr>
</tbody>
</table>


<a id="org7bdf58e"></a>

### troubleshoot ubuntu network ?

-   ping 8.8.8.8 but no www.google.com ?
-   incomplete response:

    # Find your network's DNS server:
    $ nmcli dev show | grep 'IP4.DNS'
    IP4.DNS[1]:                             10.19.18.25
    
    # Open up /lib/systemd/system/docker.service and add DNS settings to the ExecStart line:
    ExecStart=/usr/bin/docker daemon --dns 8.8.8.8 --dns 10.19.18.25 -H fd://

From: <http://askubuntu.com/questions/475764/docker-io-dns-doesnt-work-its-trying-to-use-8-8-8-8>


<a id="orga0d1e6c"></a>

### Persistence


<a id="orgc6bcd56"></a>

#### repair docker after a disk full?

    service docker stop
    
    thin_check /var/lib/docker/devicemapper/devicemapper/metadata
    
    thin_check --clear-needs-check-flag /var/lib/docker/devicemapper/devicemapper/metadata
    
    service docker start

<http://stackoverflow.com/questions/30719896/docker-dm-task-run-failed-error>


<a id="org2c0bd71"></a>

### Dockerfile


<a id="orgecfa38f"></a>

#### use bashism in Dockerfile?

    # Define bash as the default shell
    SHELL ["bash", "-c"]
    # or:
    SHELL ["bash", "-ueo","pipefail", "-c"]


<a id="org715d6b5"></a>

### Docker Compose


<a id="org0f066cc"></a>

#### commands cheatsheet ?

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">cmd</th>
<th scope="col" class="org-left">act on</th>
<th scope="col" class="org-left">type</th>
<th scope="col" class="org-left">target</th>
<th scope="col" class="org-left">service</th>
<th scope="col" class="org-left">all</th>
<th scope="col" class="org-left">descr</th>
</tr>

<tr>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">state</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left">build</td>
<td class="org-left">img</td>
<td class="org-left">build</td>
<td class="org-left">any</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">Build or rebuild services</td>
</tr>

<tr>
<td class="org-left">create</td>
<td class="org-left">cont</td>
<td class="org-left">lifecycle</td>
<td class="org-left">any</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">Create services</td>
</tr>

<tr>
<td class="org-left">start</td>
<td class="org-left">cont</td>
<td class="org-left">lifecycle</td>
<td class="org-left">stopped</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">Start services</td>
</tr>

<tr>
<td class="org-left">up</td>
<td class="org-left">cont</td>
<td class="org-left">lifecycle</td>
<td class="org-left">stopped</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">Create and start containers</td>
</tr>

<tr>
<td class="org-left">run</td>
<td class="org-left">cont</td>
<td class="org-left">lifecycle</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Y</td>
<td class="org-left">N</td>
<td class="org-left">Run a one-off command</td>
</tr>

<tr>
<td class="org-left">exec</td>
<td class="org-left">cont</td>
<td class="org-left">lifecycle</td>
<td class="org-left">running</td>
<td class="org-left">Y</td>
<td class="org-left">N</td>
<td class="org-left">Execute a command in a running container</td>
</tr>

<tr>
<td class="org-left">stop</td>
<td class="org-left">cont</td>
<td class="org-left">lifecycle</td>
<td class="org-left">stopped</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">Stop services</td>
</tr>

<tr>
<td class="org-left">kill</td>
<td class="org-left">cont</td>
<td class="org-left">lifecycle</td>
<td class="org-left">running</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">Kill containers</td>
</tr>

<tr>
<td class="org-left">down</td>
<td class="org-left">img/cont</td>
<td class="org-left">lifecycle</td>
<td class="org-left">running</td>
<td class="org-left">N</td>
<td class="org-left">Y</td>
<td class="org-left">Stop and remove containers, networks, images, and volumes</td>
</tr>

<tr>
<td class="org-left">rm</td>
<td class="org-left">cont</td>
<td class="org-left">lifecycle</td>
<td class="org-left">stopped</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">Remove stopped containers</td>
</tr>

<tr>
<td class="org-left">restart</td>
<td class="org-left">cont</td>
<td class="org-left">lifecycle</td>
<td class="org-left">running</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">Restart services</td>
</tr>
</tbody>
<tbody>
<tr>
<td class="org-left">unpause</td>
<td class="org-left">cont</td>
<td class="org-left">lifecycle</td>
<td class="org-left">paused</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">Unpause services</td>
</tr>

<tr>
<td class="org-left">pause</td>
<td class="org-left">cont</td>
<td class="org-left">lifecycle</td>
<td class="org-left">running</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">Pause services</td>
</tr>

<tr>
<td class="org-left">scale</td>
<td class="org-left">cont</td>
<td class="org-left">lifecycle</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">Set number of containers for a service</td>
</tr>
</tbody>
<tbody>
<tr>
<td class="org-left">config</td>
<td class="org-left">compose</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">N</td>
<td class="org-left">Y</td>
<td class="org-left">Validate and view the compose file</td>
</tr>

<tr>
<td class="org-left">bundle</td>
<td class="org-left">img</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">?</td>
<td class="org-left">?</td>
<td class="org-left">Generate a Docker bundle from the Compose file</td>
</tr>

<tr>
<td class="org-left">pull</td>
<td class="org-left">img</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">Pulls service images</td>
</tr>

<tr>
<td class="org-left">push</td>
<td class="org-left">img</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">Push service images</td>
</tr>

<tr>
<td class="org-left">events</td>
<td class="org-left">cont</td>
<td class="org-left">infos</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">Receive real time events from containers</td>
</tr>

<tr>
<td class="org-left">logs</td>
<td class="org-left">cont</td>
<td class="org-left">infos</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">View output from containers</td>
</tr>

<tr>
<td class="org-left">port</td>
<td class="org-left">cont</td>
<td class="org-left">infos</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Y</td>
<td class="org-left">N</td>
<td class="org-left">Print the public port for a port binding</td>
</tr>

<tr>
<td class="org-left">ps</td>
<td class="org-left">cont</td>
<td class="org-left">infos</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">Y</td>
<td class="org-left">Y</td>
<td class="org-left">List containers</td>
</tr>

<tr>
<td class="org-left">help</td>
<td class="org-left">special</td>
<td class="org-left">infos</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">N</td>
<td class="org-left">N</td>
<td class="org-left">Get help on a command</td>
</tr>

<tr>
<td class="org-left">version</td>
<td class="org-left">special</td>
<td class="org-left">infos</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">N</td>
<td class="org-left">N</td>
<td class="org-left">Show the Docker-Compose version information</td>
</tr>
</tbody>
</table>


<a id="orgcc9e08c"></a>

#### pass env var at build time ?

from: <https://docs.docker.com/compose/compose-file/#cachefrom>:

    build:
      context: .
      args:
        buildno: 1
        password: secret


<a id="org117c7ca"></a>

### docker docs

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">what</th>
<th scope="col" class="org-left">url</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left">docker install</td>
<td class="org-left"><a href="https://docs.docker.com/engine/installation/linux/ubuntu/">ubuntu</a></td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><a href="https://docs.docker.com/engine/installation/linux/centos/">centos</a></td>
</tr>
</tbody>
<tbody>
<tr>
<td class="org-left">compose install</td>
<td class="org-left"><a href="https://github.com/docker/compose/releases">any OS</a></td>
</tr>
</tbody>
<tbody>
<tr>
<td class="org-left">storage drivers in practice</td>
<td class="org-left"><a href="https://docs.docker.com/engine/userguide/storagedriver/aufs-driver/">aufs in practice</a></td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><a href="https://docs.docker.com/engine/userguide/storagedriver/device-mapper-driver/">devicemapper in practice</a></td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><a href="https://docs.docker.com/engine/userguide/storagedriver/device-mapper-driver/">overlay in practice</a></td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><a href="https://docs.docker.com/engine/userguide/storagedriver/btrfs-driver/">btrfs in practice</a></td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><a href="https://docs.docker.com/engine/userguide/storagedriver/zfs-driver/">zfs in practice</a></td>
</tr>
</tbody>
</table>


<a id="org2daa7e9"></a>

### Network


<a id="org3c55ccb"></a>

#### bind host /lib and /bin to the guest to run (eg) wget?

    # on the host
    docker run -v /usr/lib/x86_64-linux-gnu:/usr-lib-host -v /lib/x86_64-linux-gnu/:/lib-host -v /usr/bin/:/bin-host -it ubuntu:16.04 bash
    # on the guest
    export LD_LIBRARY_PATH=/lib-host:/usr-lib-host && export PATH=$PATH:/bin-host
    wget google.com


<a id="orga872fe3"></a>

### DockerHub


<a id="orgbdd97e2"></a>

#### How to list all tags of a particular image?

    img=jenkins
    curl "https://registry.hub.docker.com/v1/repositories/${img}/tags"  | jq -c '.[]'
    #> {"layer":"","name":"2.7.3-alpine"}
    #> {"layer":"","name":"2.7.4"}
    #> {"layer":"","name":"2.7.4-alpine"}


<a id="orgfab6783"></a>

### Misc


<a id="orgfe91a14"></a>

#### use stdin with a container?

    seq 100 | docker run -i syn synesthesia 1


<a id="org6c3e614"></a>

### Cli


<a id="org7c42697"></a>

#### Formatting


<a id="org2a9db83"></a>

##### docker cli command output in json?

    docker history opensuse/portus:2.3.5 --format '{{json . }}'


<a id="org0215246"></a>

### DockerDistribs


<a id="orgfe68fa1"></a>

#### RancherOs


<a id="orgc65d25f"></a>

##### How to switch the default console to ubuntu?

Source: <https://rancher.com/docs/os/v1.2/en/configuration/switching-consoles/>

    # List available consoles
    sudo ros console list
    # Switch to another console
    sudo ros console switch ubuntu


<a id="org273ae93"></a>

## Vsphere


<a id="orge9f23ce"></a>

### when cloning a win vm, how to avoid a duplicate ip adress?

-   vsphere: clone the vm :
    -   but customize the hardware
    -   disable the network card
-   Open the vmware console to access the machine:
    -   win: setup a new ip adress
-   vsphere: enable "connect" "connect at startup"


<a id="orge769824"></a>

# Crypto


<a id="org9b42710"></a>

## Gpg


<a id="orgd818ac2"></a>

### How to encrypt symmetric stdin without X (Inappropriate ioctl for device)?

    # Workaround:
    ( export GPG_TTY=$(tty) && tar czv f | gpg --symmetric  > f.gpg )


<a id="org47995e1"></a>

### verify a gpg signed file?

    gpg --verify file.gpg file


<a id="orgac0800c"></a>

### how to dw a gpg public key from ubuntu key server?

    keyId=7C207910
    keyFingerprint='28D3 BED8 51FD F3AB 57FE F93C 2335 87A4 7C20 7910'
    gpg --keyserver keyserver.ubuntu.com --recv $keyId
    gpg --list-keys --with-fingerprint $keyId | tr -s ' ' | grep "${keyFingerprint}"

sometimes behind firewalls:

    gpg --keyid-format long --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x8EF0A9D3F274FCE7


<a id="orgb92373b"></a>

# Web Browsers


<a id="org55a32b2"></a>

## Firefox


<a id="orgf752fed"></a>

### Disable images loading?

go to about:config
firefox<sub>profile.set</sub><sub>preference</sub>('permissions.default.image', 2)


<a id="orgf0ba7d8"></a>

## Chrome


<a id="org199ec06"></a>

### How to keep a Chrome background active (eg: for avoiding sessions timeouts)?


<a id="orgd12a038"></a>

#### Possible option1: Use Chrome build-in `ctrl-shift-click`


<a id="org68022ab"></a>

##### STARTED 1) use the buit-in chrome shortcut <code>[0/1]</code>

`ctrl-click` on link open a link in another background.
`ctrl-shift-click` open a link in another tag **and keep it active**.


<a id="orgb38fc74"></a>

###### STARTED to be verified

It seems to work be needs to be used for a few days to be definitvely validated


<a id="org767c515"></a>

#### TODO Possible option2: Use an extension like `Tab Reloader`

<https://chrome.google.com/webstore/detail/tab-reloader-page-auto-re/dejobinhdiimklegodgbmbifijpppopn>


<a id="org0b1f552"></a>

##### TODO to check


<a id="org826cff1"></a>

## Chromium


<a id="orgbee4629"></a>

### Run chromium diagnostics?

    chromium --diagnostics


<a id="org2fab425"></a>

### Chromium crashes on startup, any hint?

-   Run `chrome --diagnostics`
-   look for the size of $HOME/.config/chromium
-   I had a case of a webworker cache dir huge (4gb), deleting it fix the problem


<a id="org6e2b225"></a>

# Videos


<a id="orgd402f4a"></a>

## Youtube


<a id="orgfe0bddb"></a>

#### How do I send a link to a youtube video specifing the resolution?


<a id="org1764481"></a>

###### Solution from stackoverflow

From: <https://stackoverflow.com/questions/23145257/is-there-a-way-to-link-someone-to-a-youtube-vieo-in-hd-1080p-quality>

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


<a id="org20455cd"></a>

##### In other words

-   send the link of your video in the following form:
    -   <https://www.youtube.com/embed/${videoCode}?vq=${qualityCode>}
    -   where:
        -   `videoCode`: Is the YouTube code of your video
        -   `qualityCode`: The code specifing the quality you need (see above for the table code -> resolution)
    -   for example:
        -   If my my `vieoCode` is  `EOoM2ooJICc`
        -   And the quality I want is `1440` (correspondihg code: `hd1440`)
        -   The url will be: <https://www.youtube.com/embed/EOoM2ooJICc?vq=hd1440>


<a id="org96e8148"></a>

# Programming


<a id="orgda7dc79"></a>

## JVM ecosystem


<a id="orge0a1ff9"></a>

### Groovy


<a id="orgd17f869"></a>

#### Misc


<a id="orgd959d4b"></a>

##### Get the Groovy version from within a Groovy script/class?

    println GroovySystem.version


<a id="orga0ca8b9"></a>

#### pipeline oriented programming in groovy like Clojure's threading macro?

    Collection.metaClass.or = { Closure c -> delegate.collect c }
    
    assert(
            [1]
          | {it + 1}
          | {it * 2}) == [4]


<a id="org38d0f79"></a>

#### groovy switch case?

    switch(val) {
      case ~/ab.*/:
        result="x"
        break
      case ...
      default:
        ...
        break
    }


<a id="orgec5f6ba"></a>

#### groovy interval ?

    (1..10).each{prinltn it}


<a id="org5390169"></a>

#### get cmd line args?

    println(args)


<a id="org2b53db3"></a>

#### run a system command in groovy ?

see: <http://docs.groovy-lang.org/latest/html/documentation/working-with-io.html>

    def process = "ls -l".execute()
    println "Found text ${process.text}"

    def process = "ls -l".execute()
    process.in.eachLine { line ->
        println line
    }

        def p = "rm -f foo.tmp".execute([], tmpDir)
    p.consumeProcessOutput()
    p.waitFor()


<a id="org4bd36a7"></a>

#### groovy pprint datastructure?

from: <https://gist.github.com/esycat/6410360>

    import static groovy.json.JsonOutput.*
    def config = ['test': 'lalala']
    println prettyPrint(toJson(config))


<a id="org5c38694"></a>

### Java


<a id="org85a90b9"></a>

#### Create an object with the same behavior than System.out (for testing output)?

    ByteArrayOutputStream os = new ByteArrayOutputStream();
    PrintStream ps = new PrintStream(os);
    ...
    String output = os.toString("UTF8");

<http://stackoverflow.com/questions/1760654/java-printstream-to-string>


<a id="orgf9e5130"></a>

#### timestamp in java ?

         import java.text.SimpleDateFormat;
         SimpleDateFormat sdf sdf = new SimpleDateFormat("yyyyMMdd-HHmmSS");
         String yyyyMMdd = sdf.format(new java.util.Date());
    
    Reference:
    Update: the question by The Elite Gentleman is important. If you start with a String , then you should first parse it to obtain the date object from the above example:
    Date date = new SimpleDateFormat("dd MMM yyyy").parse(dateString);


<a id="org886d2be"></a>

### Gradle


<a id="org3cd60ef"></a>

#### how to create a new project from scratch?

    gradle init --type basic


<a id="orgd6dcd2b"></a>

### Maven


<a id="orge465936"></a>

#### simply download a jar with maven?


<a id="orgb5d9f90"></a>

##### simple

    # Note: -U always update remote releases and snapshot repositoryies
    mvn -U dependency:get -Dartifact=org.springframework:spring-instrument:3.2.3.RELEASE

See: <http://stackoverflow.com/questions/7110114/how-to-simply-download-a-jar-using-maven>


<a id="org54440f7"></a>

##### specifying transitivity and repo

    mvn dependency:get -DremoteRepositories=https://repo.jenkins-ci.org/releases \
      -Dartifact=org.jenkins-ci.plugins:swarm-client:3.4                         \
      -Dtransitive=false


<a id="orgf03d06f"></a>

#### generate a simple maven project?

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


<a id="orge43c237"></a>

#### generate a simple webapp?

    mvn archetype:generate                         \
      -DgroupId=com.mycompany.app                  \
      -DartifactId=my-app                          \
      -DarchetypeArtifactId=maven-archetype-webapp \
      -DinteractiveMode=false


<a id="org3dc8c32"></a>

### Clojure


<a id="org957216e"></a>

#### Dev


<a id="org8e41e80"></a>

##### Repl


<a id="org9fcd7da"></a>

###### Change the alias of a ns in a ns def (Alias <alias> already exists in namespace <ns>,etc)?

If the ns is: `user.ns` and the alias is `alias`:

    (ns-unalias (find-ns 'user.ns) 'alias)


<a id="org9c39755"></a>

###### List all ns?

    (all-ns)


<a id="orgc02d66b"></a>

##### Strings


<a id="org46198b3"></a>

###### ByteArrayInputStream to string?

Use `slurp`:

      (let [s "foo"
           sb (java.io.ByteArrayInputStream. (.getBytes s))
           ]
       (slurp sb))
    #> "foo"


<a id="orgbf995f5"></a>

###### Convert a string to a regex?

    (re-pattern "a.*b")


<a id="org9cac41a"></a>

##### Protocols


<a id="orgc238d20"></a>

###### Full example of protocole usage for fast & simple polymorphic dispatch on a single type?

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


<a id="org7a33125"></a>

##### Modulo/quotient/reminder?

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


<a id="orgf359379"></a>

##### Lein


<a id="org3ff3fe0"></a>

###### Show dependencies tree?

    lein pom
    mvn dependency:tree -Dverbose=true


<a id="orgd624b3c"></a>

###### Connect to an existing nrepl process?

    lein repl :connect localhost:7888


<a id="orgacee60e"></a>

##### Bloody java.time dates


<a id="org41bb061"></a>

###### java.time formatting and parsing nanosecond precision dates with UTC timezone?

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

-   conversion from seconds from epoch to DateTime:

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


<a id="orga3a814b"></a>

###### simple date formating like '16/Mar/2023' ?

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


<a id="orgdbe76e8"></a>

###### current LocalDateTime?

java.time.LocalDateTime/now


<a id="orga5d82be"></a>

###### convert LocalDateTime to ZonedDateTime utc?

(def ldt (java.time.LocalDateTime/now))
(def zdt (ldt.atZone(java.time.ZoneId/of "UTC")))


<a id="org0a92e2c"></a>

###### date fmt & parse cheatsheet?

-   parse 2023-03-23

        bb -o '(def s "2023-03-23")
          (def fmt (java.text.SimpleDateFormat. "yyyy-MM-dd"))
         (.parse fmt s)
         '


<a id="org9fd42de"></a>

##### Misc


<a id="org25cb543"></a>

###### hex <-> decimal conversion?

Works with any base:

    (Integer/toString 123 16)
     ;;=> "7b"
     (Long/parseLong "7b" 16)
     ;=> 123


<a id="orga31e298"></a>

#### Js


<a id="org050c993"></a>

#### Babasha


<a id="org73bdc90"></a>

##### Parse a date in babashka?

    (java.time.LocalDateTime/parse "2019-12-18T16:01:41.485")


<a id="org863717e"></a>

#### Processes


<a id="org8cb6eca"></a>

##### Process output of a cmd lazily?


<a id="org15b0d13"></a>

###### Pure clojure (works with Clojure JVM + Babashka)

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


<a id="orgb1c8459"></a>

###### Using babashka process lib

    : ' -*- clojure -*- ' \
    && bb -o '
       (require (quote [babashka.process :as process]))
       (->> (process/process ["bash" "-c" "seq Infinity | pv -qlL1"] )
         :out
         (io/reader)
         line-seq )
           '


<a id="org2c3dd05"></a>

##### Macros


<a id="org8f3c42b"></a>

###### Threading

-   how to use threading macros with functions with different argument position?

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

-   how to use ->> with fns args mixed at the beginning and and?

        (let [s {}]
          (map  str
            (assoc s :k :v)))
        #> ("[:k :v]")
        (->> {}
          (#(assoc % :k :v))
          (map str))
        #> ("[:k :v]")


<a id="org6bad784"></a>

###### Functions

-   Args

    -   optional args with default values using keys?
    
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


<a id="orgaf63ca9"></a>

###### Ns

-   Alias

    -   How to remove an alias to a ns?
    
                    (let [ns-sym 'fapi.jira.sql.hicosql.explore
                        alias-sym 'jsqlh
            ](-> ns-sym
                       find-ns
                       (ns-unalias  alias-sym)
                       ))


<a id="org3dfbeda"></a>

###### Var

-   symbol->var->value?

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
    
    -   alternative:
    
            (def s #'mysym)
            (->> s
                 symbol
                name)
            #> "f"
    
    -   in one go:
    
            (->> 'x
                 resolve
                 var-get
            )
    
    -   or for conditional evaluation
    
            (if-let [v (resolve '*dev-mode*)]
              (if (var-get v)
                :dostuff))


<a id="org008be25"></a>

###### Destructuring

-   Nested destructuring with map and seq ?

        (def [s {:todo [:a :b]}])
        ;; #>
        (let [{[head & tail] :todo} s]
          [head tail])
        ;; #> [:a :b]


<a id="orgff78280"></a>

###### Files

-   Read a file line by line?

        (with-open [rdr (clojure.java.io/reader "/etc/passwd")]
          (count (line-seq rdr)))


<a id="org977fddf"></a>

###### Strings

-   Regexes

    -   named groups search and replace in Clojure?
    
            (str/replace "a b c " #"^(?<w1>\w+) (?<w2>\w+) (?<w3>\w+) *$" "${w2}")
    
    -   string to regex?
    
             (str/replace "foo" (re-pattern "o") "z")
            #> "fzz"
    
    -   repeat expression between n and m?
    
            (clojure.string/replace "chute" #"^c{0,3}ute$" "chute")
            #> "chute"


<a id="orgbf656d8"></a>

###### Classpath

-   slurp a resource in the classpath?

        (require '[clojure.java.io :as io])
        (slurp (io/resource "some_project_name/foo.txt"))


<a id="orge2b56e8"></a>

###### Java interop

-   Get all parents classes of an instance ?


<a id="org16ff96f"></a>

###### Generate uuid

    (str (java.util.UUID/randomUUID))


<a id="orgfb28ef4"></a>

###### Exceptions

-   try/catch/finally?

        (try (/ 1 0)
          (catch Throwable e (.printStackTrace e))
          (finally (prn :always-run)))


<a id="orgb8f8c71"></a>

#### Java interop


<a id="orga2a3318"></a>

##### Start a clojure repl server from java?

One way

-   Set the System property:
    
    -   `clojure.server.repl`"{:port 5555 :accept clojure.core.server/repl}"=
    -   then load the class clojure.lang.RT
    -   Example:
    
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
    
    -   Then connect to the repl with:


<a id="org879d1c4"></a>

### Web Servers


<a id="org7a8149f"></a>

#### Tomcat


<a id="org68adb87"></a>

##### how to configure tomcat so that it can be managed programatically ?

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


<a id="orgf418d60"></a>

##### tomcat rest api doc ?

<http://tomcat.apache.org/tomcat-7.0-doc/manager-howto.html#List_Currently_Deployed_Applications>


<a id="orgdd78989"></a>

## Databases


<a id="org40cc979"></a>

### Sql language


<a id="org06aaca2"></a>

#### DateTime


<a id="org8afd224"></a>

##### Sql: how to select rows where a field date is greater than&#x2026;?

Cast a string to a date type.
Ex in Postgresqldb:

    select * from table
    where
      true
      and created >  ('2019-01-02 09:00:00'::timestamp)


<a id="org4ec631f"></a>

##### Sql: how to select rows where a field date is in [<date> ; <date> + 1 day]?

    select * from table
    where
      true
      and created >   ('2019-01-02 09:00:00'::timestamp)
      and created <=  ('2019-01-02 09:00:00'::timestamp + '1 day'::interval)


<a id="org6c5e2d3"></a>

#### GroupBy


<a id="org1f73e0f"></a>

##### group by concatenate string?

-   postgresql > 9:

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

-   also possible to order the order:

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


<a id="org6b18fba"></a>

#### Other


<a id="org4c929dd"></a>

##### Pseudo table in sql?

their called value tables
postgresql and others:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-right" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-right">a</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-right">1</td>
</tr>

<tr>
<td class="org-right">2</td>
</tr>
</tbody>
</table>

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


<a id="org941ea25"></a>

##### Concatenate two tables?

-   with union (with duplicate rows elimination):

    select * from (VALUES (1, 'c'), (1, 'a')) t(b,a)
    union
    select * from (VALUES (1, 'c'), (1, 'a')) t(b,a)
    ;;> | :b | :a |
    ;;> |----+----|
    ;;> |  1 |  a |
    ;;> |  1 |  c |

-   with UNION ALL (no dup check):

    select * from (VALUES (1, 'c'), (1, 'a')) t(b,a)
    union all
    select * from (VALUES (1, 'c'), (1, 'a')) t(b,a)
    ;;> | :b | :a |
    ;;> |----+----|
    ;;> |  1 |  c |
    ;;> |  1 |  a |
    ;;> |  1 |  c |
    ;;> |  1 |  a |


<a id="org63c58a2"></a>

### RDBMS


<a id="orgcd550ef"></a>

#### PostgreSQL


<a id="orgc75ee79"></a>

###### Posgresql cheatsheet?

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">descr</th>
<th scope="col" class="org-left">sql</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left">get postgresql version</td>
<td class="org-left"><code>SHOW server_version;</code></td>
</tr>
</tbody>
</table>


<a id="orga319316"></a>

#### sqlite


<a id="orgb9366c6"></a>

##### sqlite3


<a id="orgd5de118"></a>

###### import

-   How do I import a csv from stdin with field containing '"' into a sqlite3 db (non interactively)?

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


<a id="org3c2d1bd"></a>

### timeserie db


<a id="org615aaf5"></a>

#### influxdb


<a id="org471da14"></a>

##### flux


<a id="org29141c3"></a>

###### flux query example?

    from(bucket: "telegraf")
      |> range(start: -12h)
      |> filter(fn: (r) => r._measurement == "system" and r._field  =~ /load(1|5|15)$/ )
      |> aggregateWindow(every: 10s, fn: mean)
      |> group(columns: ["_field"], mode: "by")


<a id="orgf84daac"></a>

## Node


<a id="orgadaec4a"></a>

### Npm


<a id="org20966b9"></a>

#### Cli usage


<a id="org62a401f"></a>

##### how to install global packages without sudo?

    #Make a directory for global installations:
    mkdir ~/.npm-global
    #Configure npm to use the new directory path:
    npm config set prefix '~/.npm-global'
    #Open or create a ~/.profile file and add this line:
    export PATH=~/.npm-global/bin:$PATH >> ~/.bashrc
    #Back on the command line, update your system variables:
    source ~/.profile

<https://docs.npmjs.com/getting-started/fixing-npm-permissions>


<a id="org48aa0cd"></a>

##### upgrade npm to latest?

    npm install npm@latest -g


<a id="org9e6c77b"></a>

##### color config in npm?

Starting point:

    npm config set color always


<a id="org7725fb3"></a>

##### npm list all config keys?

    npm config ls -l

<http://nipstr.com/>


<a id="orga2e1b08"></a>

##### npm install a module from a git url ?

notes, the repo:

-   must contains a package.json at it's root dir

    npm install 'git+ssh://git@github.com:denlab/denlab-examples.git#repo/npm/npmLib' --save


<a id="org43a2d53"></a>

#### Searching


<a id="org18a523e"></a>

##### how to search npm packages (and filter by populariy, &#x2026;)?

<http://nipstr.com>


<a id="org6d49d25"></a>

### how to read all lines from stdin in one go?

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


<a id="org714a82e"></a>

## Regex


<a id="org41654fd"></a>

### General


<a id="orgf4ddf3e"></a>

#### regex cheatsheet?

from: <https://www.regular-expressions.info/refadv.html>

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left">negative lookahead</td>
<td class="org-left"><code>(?!&lt;regex&gt;)</code></td>
</tr>

<tr>
<td class="org-left">lookahead</td>
<td class="org-left"><code>(?=&lt;regex&gt;)</code></td>
</tr>

<tr>
<td class="org-left">lookbehind</td>
<td class="org-left"><code>(?&lt;=&lt;regex&gt;)</code></td>
</tr>

<tr>
<td class="org-left">negative lookbehind</td>
<td class="org-left"><code>(?&lt;!&lt;regex&gt;)</code></td>
</tr>
</tbody>
</table>


<a id="orga9b15f9"></a>

### Sed


<a id="orgdd5db7d"></a>

#### use a backreference without grouping?

    echo bar | sed 's/.*/=> & <=/'
    # => bar <=


<a id="orga86b8b8"></a>

#### remove backslash EOL with sed?

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


<a id="orga53d304"></a>

#### join lines of a files two by two?

    seq 10  | sed 'N;s/\n/ /'
    1 2
    3 4
    5 6
    7 8
    9 10


<a id="orgf03c12c"></a>

#### add a line before the first line of a file?

from: <https://unix.stackexchange.com/questions/99350/how-to-insert-text-before-the-first-line-of-a-file>

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


<a id="orgd192e32"></a>

#### output lines from regex to N line after it?

    seq 1 100 \
    | sed -rn '/40/,+3 p'
    #> 40
    #> 41
    #> 42
    #> 43


<a id="org20fff57"></a>

### Perl


<a id="org7b7744f"></a>

#### Multiline search and replace?

    perl -pe 's/<search>/<replace>/'  < in.file > out.file


<a id="orgd894551"></a>

## Python


<a id="orgaa29fce"></a>

### Pip


<a id="org6b1a8f0"></a>

#### How to install pip for python 3 ?

-   install:
    on ubuntu/debian:
    
        aptitude install python3-pip
-   invoke:
    
        pip3 <cmd>


<a id="orga882250"></a>

#### How to install pip for python 2 ?

    sudo apt update
    curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
    sudo python2 get-pip.py


<a id="orgf30fd6f"></a>

#### pip completion on the command line?

    pip completion --bash >> ~/.profile

or

    eval "`pip completion --zsh`"

from: <https://pip.pypa.io/en/stable/user_guide/?highlight=completion%20#command-completion>


<a id="orgc3168eb"></a>

#### avoid pip warning when pip list in a script?

         cat >> ~/.pip/pip.conf <<EOF
    [list]
    format=columns
    EOF


<a id="orgcf6005e"></a>

### Json


<a id="org83a6994"></a>

#### Parse a json string?

        python <<- EOF
    import json
    j = json.loads('{"one" : "1", "two" : "2", "three" : "3"}')
    
    #print j['two']
    EOF


<a id="org09f5c49"></a>

### read from stdin?

       #!/usr/bin/env python
    import fileinput
    
    for line in fileinput.input():
      print line, # comma to avoid double printing newline


<a id="org3b430c1"></a>

## GnuMake


<a id="org9b5770e"></a>

### build in a diferent directory than the Makefile?

from: <https://stackoverflow.com/questions/37467969/how-to-change-current-directory-in-make>
`Makefile`:

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


<a id="org20f3c0f"></a>

### GnuMake language


<a id="org9ab0a1c"></a>

#### print newline?

`Makefile`:

        define \n
    
    
    endef
    
    $(info - newline: ${\n} has been inserted)


<a id="org7a5ba70"></a>

#### print all variables?

`Makefile`:

    info:
       @echo "V=$(foreach v, $(.VARIABLES), $(v):$($(v)))" | tr ' ' '\n' | jq -R '.' | jq -Ss '[ .[] | select(length > 0)  | [splits(":")]  | {key: .[0], value: .[1]}] | .[] | .key + ":" + .value' | jq -r '.' | column


<a id="orga9756ba"></a>

### print all targets?

    make -Rrnp  | egrep -v '^#|:= | = ' | grep ':'

or

    @grep '^[^#[:space:]].*:' Makefile

or

    make -prRn | egrep -v $'(^(#|\t)|=)' | egrep ':' 2> /dev/null | cut -d: -f1 | sort


<a id="org9423c27"></a>

### how do I fail the build if an env var is not defined for a particular target?

    check-env:
    ifndef cmd
      $(error cmd is undefined)
    endif


<a id="org7b0205c"></a>

### how to use a multiline make var in a shell recipe?

Export the make var, and use it in the recipe:

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


<a id="orgef48017"></a>

### selfDoc


<a id="org5b411b2"></a>

#### how to extract all targets from a Makefile without a make command ?

<del>BEGIN<sub>SRC</sub> sh
 egrep '^[^. :]</del>:' < proxy | sed -r -e 's/.\*/  - &/' -e 's/://g']
+END<sub>SRC</sub>


<a id="org158f131"></a>

## Lorem ipsum

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left">json</td>
<td class="org-left">online</td>
<td class="org-left"><code>curl https://registry.npmjs.com/lobar</code></td>
</tr>
</tbody>
</table>


<a id="org139e441"></a>

## Git


<a id="orgf940172"></a>

### Submodules


<a id="org6db987d"></a>

#### submodule lifecycle mgmt

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">action</th>
<th scope="col" class="org-left">normal git managed file</th>
<th scope="col" class="org-left">for submodule</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left">revert file to repo's version</td>
<td class="org-left"><code>git checkout --</code></td>
<td class="org-left"><code>git submodule update</code></td>
</tr>
</tbody>
</table>


<a id="org039504a"></a>

#### submodule: track latest?

         # add submodule to track master branch
    git submodule add -b master [URL to Git repo];
    
    # update your submodule
    git submodule update --remote


<a id="org439f75d"></a>

#### how to deregister a submodule?

Something that has worked for me:

    moduleToRemove=modules/toRm
    git rm -f $moduleToRemove
    rm -rf .git/modules/$moduleToRemove
    git clean -fd
    git reset --hard


<a id="org8c96f6b"></a>

### Tags / branches lifecycle mgmt

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">what</th>
<th scope="col" class="org-left">action</th>
<th scope="col" class="org-left">where</th>
<th scope="col" class="org-left">git command</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left">tag</td>
<td class="org-left">create</td>
<td class="org-left">local</td>
<td class="org-left"><code>git tag &lt;tagName&gt; &lt;commit&gt;</code></td>
</tr>

<tr>
<td class="org-left">tag</td>
<td class="org-left">fetch</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>git pull --tags</code></td>
</tr>

<tr>
<td class="org-left">tag</td>
<td class="org-left">push</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>git push origin &lt;tag_name&gt;</code></td>
</tr>

<tr>
<td class="org-left">tag</td>
<td class="org-left">delete</td>
<td class="org-left">local</td>
<td class="org-left"><code>git tag -d &lt;tagName&gt;</code></td>
</tr>

<tr>
<td class="org-left">tag</td>
<td class="org-left">delete</td>
<td class="org-left">remote</td>
<td class="org-left"><code>git push --delete origin &lt;tagName&gt;</code></td>
</tr>
</tbody>
<tbody>
<tr>
<td class="org-left">branch</td>
<td class="org-left">delete</td>
<td class="org-left">local</td>
<td class="org-left"><code>git branch -d feature/example</code></td>
</tr>

<tr>
<td class="org-left">branch</td>
<td class="org-left">delete</td>
<td class="org-left">remote</td>
<td class="org-left"><code>git push origin --delete feature/example</code></td>
</tr>

<tr>
<td class="org-left">branch</td>
<td class="org-left">push &amp;&amp; set upstream</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>git push origin --set-upstream new-branch</code></td>
</tr>

<tr>
<td class="org-left">branch</td>
<td class="org-left">rename</td>
<td class="org-left">local/remote</td>
<td class="org-left"><code>git branch -m $oldName $newName &amp;&amp; git push origin :$oldName &amp;&amp; git push --set-upstream origin $newName</code></td>
</tr>
</tbody>
</table>


<a id="org85b5627"></a>

### rm a big file from history?

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


<a id="orgc5d9df3"></a>

### list branch sorted by last commit date?

    git for-each-ref --sort=-committerdate refs/heads/


<a id="org5e845d8"></a>

### grep history?

    set -- '<regex>'
    git grep "$@" $(git rev-list --all)


<a id="org0696606"></a>

### essential git config?

       git config --global color.ui true                \
    && git config --global user.email "you@example.com" \
    && git config --global user.name "Your Name"


<a id="orge6f5ab5"></a>

### config for colors?

    git config --global color.ui true


<a id="org7faf679"></a>

### Git Lfs essentials?

<div class="org-center">
<p>
wget <a href="https://github.com/git-lfs/git-lfs/releases/download/v2.1.1/git-lfs-linux-amd64-2.1.1.tar.gz">https://github.com/git-lfs/git-lfs/releases/download/v2.1.1/git-lfs-linux-amd64-2.1.1.tar.gz</a>
tar xavf git-lfs-linux-amd64-2.1.1.tar.gz
cd xavf git-lfs-linux-amd64-2.1.1
</p>

<p>
./install.sh
git lfs install
</p>

<p>
git lfs track "*.psd"
</p>

<p>
#Make sure .gitattributes is tracked
</p>

<p>
git add .gitattributes
</p>

<p>
#There is no step three. Just commit and push to GitHub as you normally would.
</p>

<p>
git add file.psd
git commit -m "Add design file"
git push origin master
</p>
</div>

from: <https://git-lfs.github.com/>


<a id="org14b7efd"></a>

### git & ssh


<a id="org556891d"></a>

#### view ssh details?


<a id="orgac33e3d"></a>

##### git v2.3.0 or higher:

    GIT_SSH_COMMAND="ssh -vvv" git clone example


<a id="org257c25b"></a>

#### how to specify the ssh key used by git?

from: <https://stackoverflow.com/questions/4565700/specify-private-ssh-key-to-use-when-executing-shell-command-with-or-without-ruby>

    ssh-agent bash -c 'ssh-add /somewhere/yourkey; git clone git@github.com:user/project.git'


<a id="org4a8bcc7"></a>

### Diffing


<a id="org65c7250"></a>

#### show only the filnames that changed

    git diff --stat --names-only HEAD^^..HEAD^


<a id="orgeb4ba0c"></a>

### Syntax


<a id="org243ef07"></a>

#### Reference Nthieme commit from HEAD?

    git checkout HEAD@{30}


<a id="orgcd9162a"></a>

### Colors


<a id="org8936b2c"></a>

#### git colors=always?

    git -c color.status=always status


<a id="orga401faf"></a>

### hacks


<a id="org6a351f9"></a>

#### how to git diff even if the repo do not have an empty init commit?

Use the magic sha1: 4b825dc642cb6eb9a060e54bf8d69288fbee4904
Event if only one commit in a repo (without a base empty commmit),

    git diff 4b825d..HEAD
    #> will return the correct diff


<a id="org29312b0"></a>

## Jq


<a id="org3491d26"></a>

### Finding


<a id="org824bacf"></a>

#### recursively find a value by key?

    echo '[{"a": 1}, {"b": 2}]' | jq '.. | .a? // empty'
    #=> 1


<a id="org3dff4b9"></a>

#### recursively find all values of a given key?

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


<a id="orga55fb6e"></a>

#### recursively find all path leading to a given key

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


<a id="org87cebc0"></a>

#### recursively find all path leading to a certain value?

    
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

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">jq 'path (..</td>
<td class="org-left">.key?//empty)'</td>
</tr>
</tbody>
</table>

\#=> [
\#=>   "a",
\#=>   "c",
\#=>   "d",
\#=>   "key"
\#=> ]
\#+end<sub>src</sub>


<a id="orga0a08ae"></a>

#### get all the values of an object?

    jq -n '{"a": 1} | .[]'
    #=> 1


<a id="orgecd9b38"></a>

#### does this array contains this element?

    # - With contains:
    jq -n '[4,3,2,1] | contains([0])' #> false
    jq -n '[4,3,2,1] | contains([2])' #> true
    # - With inside:
    jq -n '[0] | inside([1,2])'       #> false


<a id="orgfcc06f2"></a>

### Modifying


<a id="org6e62d29"></a>

#### delete the key of an object?

    echo '{"k": 1}' | jq 'del(.k)'


<a id="orgaaa6102"></a>

#### jq update ?

       jq -n '{foo:1, bar:10} | .foo |= . + 1 '
    #=> {
    #=>   "foo": 2,
    #=>   "bar": 10
    #=> }


<a id="org0e18643"></a>

#### delete in nested datastructure?

    jq -n '{a:1, b:2, c:3} | del(.. | .a?//empty)'


<a id="orgff5ec35"></a>

#### recursively delete all keys leading to pair numbers?

Note: Probably could be written more concisely:

    jq -n '{a:1, b:2, c:3} \
      | del(.. | numbers | (if (. % 2) == 0 then . else empty end))'


<a id="orge9814a7"></a>

#### deep merge two nested datastructure?

Use the `*` operator:

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


<a id="org59f424f"></a>

### Strings / Regex


<a id="org6e58d63"></a>

#### jq regexes cheet sheat ?


<a id="org3b6e553"></a>

##### jq regex flags

flag usage example:

    jq -n '"FOO" | test("foo"; "i")'

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">flags</th>
<th scope="col" class="org-left">&#xa0;</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left"><code>g</code></td>
<td class="org-left">Global match, find all not just the first</td>
</tr>

<tr>
<td class="org-left"><code>i</code></td>
<td class="org-left">case Insensitive</td>
</tr>

<tr>
<td class="org-left"><code>m</code></td>
<td class="org-left">Multi line match '.' will match newlines</td>
</tr>

<tr>
<td class="org-left"><code>n</code></td>
<td class="org-left">ignore empty matches</td>
</tr>

<tr>
<td class="org-left"><code>p</code></td>
<td class="org-left">both s and m mode enabled</td>
</tr>

<tr>
<td class="org-left"><code>s</code></td>
<td class="org-left">Single line mode <code>('^' -&gt; '\\A','$'-&gt;\\Z')</code></td>
</tr>

<tr>
<td class="org-left"><code>l</code></td>
<td class="org-left">find Longest possible matches</td>
</tr>

<tr>
<td class="org-left"><code>x</code></td>
<td class="org-left">eXtended regex format (ignore whitespace and comments)</td>
</tr>
</tbody>
</table>


<a id="orgd3b6cda"></a>

##### jq regex functions

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">fn</th>
<th scope="col" class="org-left">args1</th>
<th scope="col" class="org-left">args2</th>
<th scope="col" class="org-left">result if match</th>
<th scope="col" class="org-left">else</th>
<th scope="col" class="org-left">jq program example</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left"><code>test</code></td>
<td class="org-left"><code>val</code></td>
<td class="org-left"><code>regex</code></td>
<td class="org-left"><code>true</code></td>
<td class="org-left"><code>false</code></td>
<td class="org-left"><code>test("foo")</code></td>
</tr>

<tr>
<td class="org-left"><code>test</code></td>
<td class="org-left"><code>”</code></td>
<td class="org-left"><code>regex; flags</code></td>
<td class="org-left"><code>true</code></td>
<td class="org-left"><code>false</code></td>
<td class="org-left"><code>test("foo")</code></td>
</tr>

<tr>
<td class="org-left"><code>match</code></td>
<td class="org-left"><code>”</code></td>
<td class="org-left"><code>”</code></td>
<td class="org-left"><code>{offset,length,string,captures}</code></td>
<td class="org-left"><code>empty</code></td>
<td class="org-left"><code>match("(abc)+"; "g")</code></td>
</tr>

<tr>
<td class="org-left"><code>capture</code></td>
<td class="org-left"><code>”</code></td>
<td class="org-left"><code>”</code></td>
<td class="org-left"><code>map of matches</code></td>
<td class="org-left"><code>empty</code></td>
<td class="org-left"><code>capture("(?&lt;a&gt;[a-z]+)-(?&lt;n&gt;[0-9]+)")</code></td>
</tr>

<tr>
<td class="org-left"><code>scan</code></td>
<td class="org-left"><code>”</code></td>
<td class="org-left"><code>”</code></td>
<td class="org-left"><code>stream of non overlapping matches</code></td>
<td class="org-left"><code>empty</code></td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left"><code>split</code></td>
<td class="org-left"><code>”</code></td>
<td class="org-left"><code>”</code></td>
<td class="org-left"><code>&lt;obsolete&gt;</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left"><code>splits</code></td>
<td class="org-left"><code>”</code></td>
<td class="org-left"><code>”</code></td>
<td class="org-left"><code>stream matches</code></td>
<td class="org-left"><code>?</code></td>
<td class="org-left"><code>splits("\\s+")</code></td>
</tr>
</tbody>
</table>


<a id="org7dd5def"></a>

#### recursively find containers having a value that match a given regex?

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


<a id="org5330279"></a>

#### convert string to upper case?

    jq -n '"abCD" | ascii_upcase'
    #=> "ABCD"


<a id="org9c0048c"></a>

#### jq regex replace?

    sub(regex; string)
    jq -n '"foo bar" | sub(" "; "x")'


<a id="orgd228f2f"></a>

#### jq regex search and replace with backreferences

    jq -n ' .
    | "foo"
    | gsub(
        "^(?<pre>.*)(?<n>o)(?<post>.*)$"
      ;
         "\(.pre) - \(.n) - \(.post)"
      )
    '
    #> "fo - o - "


<a id="orgbf69492"></a>

#### substring?

         echo foo | jq -R '.[0:1]'
    "f"


<a id="org6fa314f"></a>

### Quoting


<a id="org46361cc"></a>

#### given a known char I want to encode it in a json string for consumption by jq

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


<a id="org4999f44"></a>

#### Single Quote


<a id="orgc4c13e7"></a>

##### single quote as a integer (to escape it in bash)?

    jq -n '([39] | implode) as $quote | $quote'
    #> "'"


<a id="orga703731"></a>

##### encode a single quote in a string for jq to decode?

    # Encode the char in the string
    echo '"\\u0027"' | jq .
    #> "'"


<a id="orgd0f7bcc"></a>

### Interop


<a id="org77588e7"></a>

#### output a array for bash?

    echo '[1,2,3]' | jq '.|@tsv'


<a id="orgda6213e"></a>

### Functional


<a id="org51258c6"></a>

#### reduce ?

    echo '[1,2,3]' \
    | jq 'reduce .[] as $item (0; . + $item)'


<a id="orgda19180"></a>

#### zip two arrays into a map?

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


<a id="org72e0205"></a>

#### Comma in function args


<a id="org9298ee5"></a>

##### given a list of strings and a list of regexes, for each string check wether it matches all the given regexes or not

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


<a id="orgba6d12f"></a>

#### clojure's reductions equivalent in jq?

         # ex: infinite fibonacci sequence from an infinite seq of integers:
    seq 0 Infinity                                                                        \
    | jql -cn 'foreach ( inputs , null) as $l ( [1,1] ; [$l, .[0] + $l]?//empty ; .[1])'  \
    | head | xargs


<a id="orge50511c"></a>

### Convert


<a id="org69803b7"></a>

#### TODO element to array?


<a id="orge9d6889"></a>

#### convert an array to a map?

         echo '["a", "b", "c"]       ' \
         | jq '[{(.[]): null}] | add '
    #=>  {
    #=>   "a": null,
    #=>   "b": null,
    #=>   "c": null
    #=>  }


<a id="org3197e3b"></a>

### Dates and time


<a id="orgdfce400"></a>

#### Get a human readable date of current time?

    jq -n 'now | todate'
    #> "2017-09-12T18:35:01Z"


<a id="orgd7a4433"></a>

#### Convert Unix epoch time in second to human readable?

    # There may be more direct way..
    jql -n '
      .
      | 1565108215
      | gmtime
      | strftime("%Y-%m-%dT%H:%M:%SZ")
    '
    #> "2019-08-06T16:16:55Z"


<a id="org6294e89"></a>

#### parse and format date with jq?

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


<a id="org0935959"></a>

### Other


<a id="org2ade21b"></a>

#### Undocumented debug options?

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


<a id="orge4b940c"></a>

#### Syntax


<a id="orgbf1e5b9"></a>

##### Liberal Object notation?

          # can leave comma after last object:
          jq -n '.
    | {
        a: 1,
        b: 2,
      }
    '
    #> {"a":1,"b":2}
          # Note: do not seems to works wtih arrays ...


<a id="orga1b1733"></a>

## Lua


<a id="org5fd4fb8"></a>

### Call external command and get stdout?

     lua <<< '
    cmd="seq 3"
    f=assert(io.popen(cmd))
    for line in f:lines() do
      print(line)
    end'
    #> 1
    #> 2
    #> 3


<a id="org28cc029"></a>

### Call external command and get stdout and return code?

it seems not straighforward to do.
Seem to have to implement this by adding some way to get the rc from the command :-(


<a id="org2ac324a"></a>

## Jira


<a id="org4a852e3"></a>

### Jira webapp keyboard shortcut cheat sheet

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">action</th>
<th scope="col" class="org-left">shortcut</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left">send card to top of the board</td>
<td class="org-left"><code>s + t</code></td>
</tr>

<tr>
<td class="org-left">send card to bottom of the board</td>
<td class="org-left"><code>s + b</code></td>
</tr>
</tbody>
</table>


<a id="org2e59aee"></a>

### command line online help?

    # repl:
    python
    # import the wanted module (eg: yaml)
    import yaml
    # help:
    help(yaml.load)
    #> Help on function load in module yaml:
    #> ...

-   open the repl: `python`
-   import the wanted module;


<a id="org9c80b3c"></a>

## CheatSheets


<a id="orgd2283fb"></a>

### Clojure

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">emacs</td>
<td class="org-left">cider</td>
<td class="org-left"><a href="https://github.com/clojure-emacs/cider/blob/master/doc/using_the_repl.md">https://github.com/clojure-emacs/cider/blob/master/doc/using_the_repl.md</a></td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">online help</td>
<td class="org-left"><code>C-h f RET cider-repl-mode</code></td>
</tr>
</tbody>
</table>


<a id="orgdb481ee"></a>

## Doc


<a id="org3e0cc46"></a>

### Markdown


<a id="org0e0fe28"></a>

#### Cheatsheet?


<a id="org1d5cb7b"></a>

##### Links?

From: <https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#links>

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


<a id="org6b0c52a"></a>

#### get values by their path (eg: ["a",1,"b"])?

    jq -n '{a: {b: 1}} | getpath(["a","b"])'
    #> 1


<a id="org800a1de"></a>

#### Bitbucket flavored markdown


<a id="orgba83aed"></a>

##### How do I create a link to the same page in Bitbucket flavored markdown?

-   create link with: `<a name="section"></a>`
-   create anchor with: `<a name="section"></a>`
-   example:

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


<a id="org0104bd7"></a>

## CI


<a id="orgd36b78b"></a>

### Jenkins


<a id="org64f9da6"></a>

#### RestApi


<a id="org00fb468"></a>

##### Jenkins Rest Api Essentials?

    curl "$JENKINS_HOST/api/json?depth=1&tree=jobs[name,lastBuild[building]]{1,10000}"
    # for all jenkins jobs: get the name and the last build status (building or not)"


<a id="org288dba8"></a>

##### JSON


<a id="org1edebf6"></a>

###### Get all build result with time of particulatar job?

    j.jsonapi '/job/DevOps/job/maintenance/job/nexus/job/nexus-auto-restart/api/json?tree=builds[*]{1}'


<a id="org998d778"></a>

##### XML


<a id="orgd45b520"></a>

#### parallel map in groovy?

    @Grab('org.codehaus.gpars:gpars:1.2.1')
    import static groovyx.gpars.GParsPool.withPool
    withPool{
        println((1..3).collectParallel {it * 2})
    }


<a id="orgb381462"></a>

#### dump nested object as json/xml ?


<a id="org600b2e1"></a>

##### native but do not handle cycles

    // stackoverflow if cycle
    groovy.json.JsonOutput.toJson(this)
    // cycle handled
    @Grab(group='com.thoughtworks.xstream', module='xstream', version='1.4.11.1')
    import com.thoughtworks.xstream.XStream
    (new XStream()).toXML(this)


<a id="orge53b6eb"></a>

##### with xstream (handle cycles)

    @Grab(group='com.thoughtworks.xstream', module='xstream', version='1.4.11.1')
    import com.thoughtworks.xstream.XStream
    (new XStream()).toXML(this)


<a id="orgada851a"></a>

###### Demo with cycles

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


<a id="org3d87b02"></a>

##### with xstream: json

    @Grab(group='com.thoughtworks.xstream', module='xstream', version='1.4.11.1')
    import com.thoughtworks.xstream.XStream
    import com.thoughtworks.xstream.io.json.*
    println(new XStream(new com.thoughtworks.xstream.io.json.JsonHierarchicalStreamDriver()).toXML(this))


<a id="orgc6687b0"></a>

#### legacy jobs


<a id="org26b2969"></a>

##### job-dsl plugin


<a id="org7e7a882"></a>

###### Example job-dsl for matrix project?

    matrixJob('a') {
        axes  {text ("x", "a","b") }
        steps {shell('echo x: $x') }
    }


<a id="orgdd593a1"></a>

#### Stop an unstoppable build?

         # with jenkins cli (groovysh or groovy):
    jobName='jobName'
    jobNum=111
    jenkins.model.Jenkins.instance.getItemByFullName(jobName).getBuildByNumber(jobNum).finish(hudson.model.Result.ABORTED,new java.io.IOException("Aborting build")


<a id="org631c044"></a>

## Visualization


<a id="org5dc88ae"></a>

### Online visualization of Wikipedia's graph?

-   <http://tools.medialab.sciences-po.fr/seealsology/>
-   <http://seealso.org/>


<a id="org199a7de"></a>

### Graphviz's dot language?


<a id="org38856f5"></a>

#### Example of colorscheme usage?

    .hexl-wrapped
    :wq
    :wq
    :wq

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


<a id="orgda11fdd"></a>

### Grafana


<a id="org0706b47"></a>

#### Grafana custom time formating for the x-axis ?

-   It's kind of hidden!
-   You need to customize the unit of the x-axis (using an override)
-   Then override the unit
-   But instead of choosing a pre-defined format:
-   Type in the input box:
    -   `time: <fmt>`
    -   where <fmt> can be a format supported by Grafana, some examples:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-right" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">fmt</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-right">ex</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left">YYYY.MM.DD</td>
<td class="org-left">&lt;year&gt;.&lt;month&gt;.&lt;day&gt;</td>
<td class="org-right">2024.12.20</td>
</tr>

<tr>
<td class="org-left">YYYY MMM</td>
<td class="org-left">&lt;year&gt;.&lt;month in human format&gt;</td>
<td class="org-right">2024 Mar</td>
</tr>

<tr>
<td class="org-left">WW</td>
<td class="org-left">&lt;weekNumber&gt;</td>
<td class="org-right">3</td>
</tr>

<tr>
<td class="org-left">\Y \M \D</td>
<td class="org-left">A literal Y, M, D</td>
<td class="org-right">&#xa0;</td>
</tr>
</tbody>
</table>


<a id="org9ff5de3"></a>

## Video editing


<a id="org379c51b"></a>

### how to copy part of a video?

    start=00:30:00
    duration=00:00:55
    in=originalfile
    out=newfile
    avconv -ss $start -t $duration -i $in -codec copy $out


<a id="org860f5cb"></a>

## Repositories


<a id="orgd12ce44"></a>

### Nexus


<a id="org5fb3012"></a>

#### V2


<a id="org2908b0e"></a>

##### self hosted api doc for nexus v2?

$NEXUS<sub>URL</sub>/nexus-restlet1x-plugin/default/docs/index.html


<a id="org62f2f6a"></a>

### Monitoring


<a id="org04a14a0"></a>

#### how to connect jconsole to a jvm running in a remote docker container?

-   In the container: Change the start of your java app to include those properties:

    -Dcom.sun.management.jmxremote  \
    -Dcom.sun.management.jmxremote.port=8888 \
    -Dcom.sun.management.jmxremote.rmi.port=8888 \
    -Djava.rmi.server.hostname=$(DOCKER_HOST:?)     \
    -Dcom.sun.management.jmxremote.ssl=false  \
    -Dcom.sun.management.jmxremote.authenticate=false  \

-   on the machine where jconsole is running, start a new connection on `$DOCKER_SERVER:8888`


<a id="orgb6d987e"></a>

# Special


<a id="orgc2ef068"></a>

## Unicode(UTF8)


<a id="org42e6cfc"></a>

### How can I search by name for unicode char on the command line?

-   Could use unipicker: <https://github.com/jeremija/unipicker>
-   Install with:

    nix-env -iA nixpkgs.unipicker


<a id="org3cd3fa1"></a>

### Handy unicode(utf8) chars?


<a id="orga897945"></a>

#### Handy emoticon ?

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">pay attention</td>
<td class="org-left">🖐 👉 👈 👇 👆 ⚠</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">thumbs up</td>
<td class="org-left">👍</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">applause</td>
<td class="org-left">👏y</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">speaker</td>
<td class="org-left">🔇</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">speaker sound none/high/low</td>
<td class="org-left">🔈  🔉   🔊</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">warn</td>
<td class="org-left">⚠</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">full block</td>
<td class="org-left">█</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">cross</td>
<td class="org-left">✘</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">arrow</td>
<td class="org-left">↘</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>


<a id="orgee53f65"></a>

#### arrows

            0	1	2	3	4	5	6	7	8	9	A	B	C	D	E	F
    U+219x	←	↑	→	↓	↔	↕	↖	↗	↘	↙	↚	↛	↜	↝	↞	↟
    U+21Ax	↠	↡	↢	↣	↤	↥	↦	↧	↨	↩	↪	↫	↬	↭	↮	↯
    U+21Bx	↰	↱	↲	↳	↴	↵	↶	↷	↸	↹	↺	↻	↼	↽	↾	↿
    U+21Cx	⇀	⇁	⇂	⇃	⇄	⇅	⇆	⇇	⇈	⇉	⇊	⇋	⇌	⇍	⇎	⇏
    U+21Dx	⇐	⇑	⇒	⇓	⇔	⇕	⇖	⇗	⇘	⇙	⇚	⇛	⇜	⇝	⇞	⇟
    U+21Ex	⇠	⇡	⇢	⇣	⇤	⇥	⇦	⇧	⇨	⇩	⇪	⇫	⇬	⇭	⇮	⇯
    U+21Fx	⇰	⇱	⇲	⇳	⇴	⇵	⇶	⇷	⇸	⇹	⇺	⇻	⇼	⇽	⇾	⇿


<a id="org5bf73ba"></a>

#### draft

see: <https://en.wikipedia.org/wiki/List_of_Unicode_characters#Box_Drawing>

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


<a id="org559fca9"></a>

##### boxes

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">┌──────┐</th>
<th scope="col" class="org-left">╭──────╮</th>
<th scope="col" class="org-left">╭┈┈┈┈┈┈╮</th>
</tr>

<tr>
<th scope="col" class="org-left">│      │</th>
<th scope="col" class="org-left">│      │</th>
<th scope="col" class="org-left">┊      ┊</th>
</tr>

<tr>
<th scope="col" class="org-left">│      │</th>
<th scope="col" class="org-left">│      │</th>
<th scope="col" class="org-left">┊      ┊</th>
</tr>

<tr>
<th scope="col" class="org-left">└──────┘</th>
<th scope="col" class="org-left">╰──────╯</th>
<th scope="col" class="org-left">╰┈┈┈┈┈┈╯</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left">╭╍╍╍╍╍╍╮</td>
<td class="org-left">▛▀▀▀▀▀▀▜</td>
<td class="org-left">░░░░░░░░</td>
</tr>

<tr>
<td class="org-left">┇      ┇</td>
<td class="org-left">▌      ▐</td>
<td class="org-left">░      ░</td>
</tr>

<tr>
<td class="org-left">┇      ┇</td>
<td class="org-left">▌      ▐</td>
<td class="org-left">░      ░</td>
</tr>

<tr>
<td class="org-left">╰╍╍╍╍╍╍╯</td>
<td class="org-left">▙▄▄▄▄▄▄▟</td>
<td class="org-left">░░░░░░░░</td>
</tr>
</tbody>
<tbody>
<tr>
<td class="org-left">▒▒▒▒▒▒▒▒</td>
<td class="org-left">▓▓▓▓▓▓▓▓</td>
<td class="org-left">████████</td>
</tr>

<tr>
<td class="org-left">▒      ▒</td>
<td class="org-left">▓      ▓</td>
<td class="org-left">█      █</td>
</tr>

<tr>
<td class="org-left">▒      ▒</td>
<td class="org-left">▓      ▓</td>
<td class="org-left">█      █</td>
</tr>

<tr>
<td class="org-left">▒▒▒▒▒▒▒▒</td>
<td class="org-left">▓▓▓▓▓▓▓▓</td>
<td class="org-left">████████</td>
</tr>
</tbody>
</table>


<a id="orgdc4d68b"></a>

#### use char by its code ?


<a id="org0f7b60a"></a>

#### unicode number in circle

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-right" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-right">1</td>
<td class="org-left">①</td>
<td class="org-left">❶</td>
<td class="org-left">⬤</td>
</tr>

<tr>
<td class="org-right">2</td>
<td class="org-left">②</td>
<td class="org-left">❷</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">3</td>
<td class="org-left">③</td>
<td class="org-left">❸</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">4</td>
<td class="org-left">④</td>
<td class="org-left">❹</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">5</td>
<td class="org-left">⑤</td>
<td class="org-left">❺</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">6</td>
<td class="org-left">⑥</td>
<td class="org-left">❻</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">7</td>
<td class="org-left">⑦</td>
<td class="org-left">❼</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">8</td>
<td class="org-left">⑧</td>
<td class="org-left">❽</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">9</td>
<td class="org-left">⑨</td>
<td class="org-left">❾</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">10</td>
<td class="org-left">⑩</td>
<td class="org-left">❿</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">11</td>
<td class="org-left">⑪</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">12</td>
<td class="org-left">⑫</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">13</td>
<td class="org-left">⑬</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">14</td>
<td class="org-left">⑭</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">15</td>
<td class="org-left">⑮</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">16</td>
<td class="org-left">⑯</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">17</td>
<td class="org-left">⑰</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">18</td>
<td class="org-left">⑱</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">19</td>
<td class="org-left">⑲</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-right">20</td>
<td class="org-left">⑳</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>


<a id="org50f8a83"></a>

#### lambda

    λ


<a id="org3529e95"></a>

#### elipsis?

    …


<a id="orgde88548"></a>

#### Checkmarks


<a id="orgebee837"></a>

##### check / uncheck marks?

    🗹 DONE stuff done
    ☐ TODO stuff todo

-   alternative:
    
        ☑


<a id="org7110834"></a>

##### more check marks?

from: <https://en.wikipedia.org/wiki/X_mark>

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Symbol</th>
<th scope="col" class="org-left">Unicode Code point (hex)</th>
<th scope="col" class="org-left">Name</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left">☐</td>
<td class="org-left">U+2610</td>
<td class="org-left">BALLOT BOX (checkbox)</td>
</tr>

<tr>
<td class="org-left">☒</td>
<td class="org-left">U+2612</td>
<td class="org-left">BALLOT BOX WITH X (square with cross)</td>
</tr>

<tr>
<td class="org-left">✗</td>
<td class="org-left">U+2717</td>
<td class="org-left">BALLOT X (cross)</td>
</tr>

<tr>
<td class="org-left">✘</td>
<td class="org-left">U+2718</td>
<td class="org-left">HEAVY BALLOT X (bold cross)</td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>

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


<a id="orgca608f0"></a>

#### colored utf8 chars


<a id="org07e30da"></a>

##### some cool

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-right" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-right">127752</td>
<td class="org-left">🌈</td>
</tr>

<tr>
<td class="org-right">127744</td>
<td class="org-left">🌀</td>
</tr>
</tbody>
</table>


<a id="org456704c"></a>

##### some

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-right" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-right">&#xa0;</th>
<th scope="col" class="org-left">01234567891111111111233333333344444444445555555556</th>
</tr>

<tr>
<th scope="col" class="org-right">&#xa0;</th>
<th scope="col" class="org-left">&#x2026;&#x2026;&#x2026;.0123456789012345678901234567891234567890</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-right">9700-9750:</td>
<td class="org-left">◤◥◦◧◨◩◪◫◬◭◮◯◰◱◲◳◴◵◶◷◸◹◺◻◼◽◾◿☀☁☂☃☄★☆☇☈☉☊☋☌☍☎☏☐☑☒☓☔☕</td>
</tr>

<tr>
<td class="org-right">9750-9800:</td>
<td class="org-left">☖☗☘☙☚☛☜☝☞☟☠☡☢☣☤☥☦☧☨☩☪☫☬☭☮☯☰☱☲☳☴☵☶☷☸☹☺☻☼☽☾☿♀♁♂♃♄♅♆♇</td>
</tr>

<tr>
<td class="org-right">9800-9850:</td>
<td class="org-left">♈♉♊♋♌♍♎♏♐♑♒♓♔♕♖♗♘♙♚♛♜♝♞♟♠♡♢♣♤♥♦♧♨♩♪♫♬♭♮♯♰♱♲♳♴♵♶♷♸♹</td>
</tr>

<tr>
<td class="org-right">9850-9900:</td>
<td class="org-left">♺♻♼♽♾♿⚀⚁⚂⚃⚄⚅⚆⚇⚈⚉⚊⚋⚌⚍⚎⚏⚐⚑⚒⚓⚔⚕⚖⚗⚘⚙⚚⚛⚜⚝⚞⚟⚠⚡⚢⚣⚤⚥⚦⚧⚨⚩⚪⚫</td>
</tr>

<tr>
<td class="org-right">9900-9950:</td>
<td class="org-left">⚬⚭⚮⚯⚰⚱⚲⚳⚴⚵⚶⚷⚸⚹⚺⚻⚼⚽⚾⚿⛀⛁⛂⛃⛄⛅⛆⛇⛈⛉⛊⛋⛌⛍⛎⛏⛐⛑⛒⛓⛔⛕⛖⛗⛘⛙⛚⛛⛜⛝</td>
</tr>

<tr>
<td class="org-right">9950-10000:</td>
<td class="org-left">⛞⛟⛠⛡⛢⛣⛤⛥⛦⛧⛨⛩⛪⛫⛬⛭⛮⛯⛰⛱⛲⛳⛴⛵⛶⛷⛸⛹⛺⛻⛼⛽⛾⛿✀✁✂✃✄✅✆✇✈✉✊✋✌✍✎✏</td>
</tr>

<tr>
<td class="org-right">10000-10050:</td>
<td class="org-left">✐✑✒✓✔✕✖✗✘✙✚✛✜✝✞✟✠✡✢✣✤✥✦✧✨✩✪✫✬✭✮✯✰✱✲✳✴✵✶✷✸✹✺✻✼✽✾✿❀❁</td>
</tr>

<tr>
<td class="org-right">10050-10100:</td>
<td class="org-left">❂❃❄❅❆❇❈❉❊❋❌❍❎❏❐❑❒❓❔❕❖❗❘❙❚❛❜❝❞❟❠❡❢❣❤❥❦❧❨❩❪❫❬❭❮❯❰❱❲❳</td>
</tr>

<tr>
<td class="org-right">10100-10150:</td>
<td class="org-left">❴❵❶❷❸❹❺❻❼❽❾❿➀➁➂➃➄➅➆➇➈➉➊➋➌➍➎➏➐➑➒➓➔➕➖➗➘➙➚➛➜➝➞➟➠➡➢➣➤➥</td>
</tr>

<tr>
<td class="org-right">10150-10200:</td>
<td class="org-left">➦➧➨➩➪➫➬➭➮➯➰➱➲➳➴➵➶➷➸➹➺➻➼➽➾➿⟀⟁⟂⟃⟄⟅⟆⟇⟈⟉⟊⟋⟌⟍⟎⟏⟐⟑⟒⟓⟔⟕⟖⟗</td>
</tr>
</tbody>
</table>


<a id="orgd6df40e"></a>

##### zodiac

♈♉♊♋♌♍♎♏⛎♐♑♒♓


<a id="org07b6323"></a>

##### zodiac unambiguous

♈♉♌♎⛎♐♑♒♓


<a id="org843efea"></a>

##### zodiac even more unambiguous

♈♉♌♎⛎♐♒

