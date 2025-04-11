
# Table of Contents

-   [Operating Systems](#org67cf8d3)
    -   [Linux](#org27f7099)
        -   [Shells](#org1270213)
            -   [Bash](#orge6cc9eb)
                -   [Non interactive](#orgb07e741)
                    -   [Use alises in non interactive bash?](#org1221830)
                -   [Interactive use](#org81d26c2)
                    -   [Complete](#org330d55a)
                        -   [bash completion cheat sheet?](#org3b25e7b)
                -   [Common tasks](#orgef36139)
                    -   [Random](#org0b3a0d6)
                        -   [Generate a lot of (pseudo) random data faster than /dev/urandom?](#org161c913)
                    -   [generate random string?](#org55e583d)
                    -   [decimal / hex (and opposite) conversion?](#org26ac9ed)
                    -   [redirect output in variable?](#orgbe0339b)
                    -   [stop on error (even in subshell)?](#orgea8ad98)
                        -   [workaround1: set -e explicitly for each subshell](#orgda40752)
                        -   [workaround2: write shell script with '&&'](#org0a5f6e7)
                        -   [workaround3: write shell script with '||'](#org2030e8c)
                    -   [loop over args?](#orgcd49957)
                    -   [parse a string as args](#orgb270e7d)
                    -   [How to save a script params (before doing modifications like shift, ..)?](#org5ceb083)
                    -   [generate uuid?](#org2a2a9ff)
                    -   [List all possible commands (including functions)?](#org0f13adf)
                -   [Programming](#org655f735)
                    -   [Misc](#orga4531ef)
                        -   [bash pointer variables?](#org06c32a6)
                        -   [Var substution cheatsheet?](#orgdd716a9)
                    -   [Control flow](#orge5df36f)
                        -   [Tests/Conditionnals](#org2652037)
                            -   [ternary operator in bash?](#org801f648)
                            -   [cheatsheet](#org34538ee)
                            -   [test files cheatsheet](#orgf877e08)
                        -   [Looping](#org0371be2)
                            -   [loop over cmd output with while?](#org805756a)
                            -   [c style for loop?](#org4d9807a)
                        -   [switch case ?](#org5fb1c2a)
                    -   [Types](#org78250ab)
                        -   [Datastructures](#orgb3f45e0)
                            -   [Arrays](#org67fdeb0)
                                -   [Associative arrays](#org624dfbc)
                                    -   [declare, print, &#x2026;](#org648a8c5)
                                    -   [copy ?](#org46740be)
                                -   [Normal arrays](#org175635b)
                                    -   [declare/literal/set/getAll/size](#orga2d7e37)
                                    -   [access empty array?](#orgb539816)
                                    -   [clone an array into another array?](#org0cc77b8)
                        -   [Strings](#orgfc360c8)
                            -   [bash strings cheat sheet?](#org89cba59)
                            -   [bash arrays cheat sheet?](#org4527a17)
                            -   [Syntax](#org40c088f)
                                -   [ssh escape sequence?](#org4c7f730)
                            -   [Printf?](#org9308175)
                                -   [print args, one by line with its position?](#org5772c46)
                                -   [print a line accross the terminal?](#org26557de)
                -   [Bash options](#org54a02d1)
                    -   [How to get the values of errexit etc (set by set -e &#x2026;)?](#org9187cde)
                    -   [option so bash export all declared variables?](#org98bfc38)
                    -   [option to glob also hidden files?](#orgcb3ac4a)
                    -   [Bash config files](#orgf384433)
                        -   [Order of loading of bash init files?](#orgc4370ad)
                -   [Files and Redirections](#org65c990a)
                    -   [Stdin/out/err](#orgcc5c659)
                        -   [redirect file to stdin on the left side?](#org6b3ed57)
                        -   [redirecting stdout, stderr](#orgad90f7f)
                        -   [use stdout as a file (with filename) for another cmd?](#orgb5abbae)
                        -   [swap stdout and stderr?](#org7ec53cc)
                        -   [write to stdin of a backround process?](#orgfb2ecf1)
                        -   [here-string with indentation in src but not in output?](#orgd3a5ae1)
                        -   [File Descriptors](#orgbca94d8)
                            -   [Named File Descriptors](#org58ea06d)
                                -   [define a named file descriptor to a writable file and write to it?](#org86acb08)
                        -   [how to know if stdout is a terminal?](#orge6197b8)
                        -   [Printout](#org51ae0a8)
                            -   [Padding](#orgc4b4e14)
                                -   [right / left pad with printf?](#orgae2c7e5)
                                -   [zero padding numbers?](#orgbec7de1)
                    -   [Tmp files](#org94d093f)
                        -   ["delete while still open" trick to be sure a file will be deleted?](#orgcd0c823)
                -   [Env](#orgfaaeb60)
                    -   [how to run a command with the env cleared?](#org77327b1)
                    -   [export bash function?](#org1235a43)
                    -   [Replace all env var by values in file?](#orgafc1955)
                    -   [how to make bash source a file before running a command?](#org59addbc)
                    -   [how to test if a variable is defined?](#orgca3c005)
                -   [Debugging](#org20a1df4)
                    -   [how to make a bash script stop and print current line before running it?](#org4f35919)
                    -   [how to execute a script step by step?](#org4863558)
            -   [Zsh](#org49dfbe9)
            -   [Linters](#orgd1f9bf9)
                -   [Shellcheck](#org7470cb8)
                    -   [How to ignore an shellcheck error with a comment in a a script?](#org3d22342)
        -   [Editors](#org59d2a94)
            -   [Emacs](#org4f5aef4)
                -   [file type indicator header for emacs?](#orga8bbf64)
                -   [edit a file remotely over ssh with tramp?](#orgd4dc5f6)
                -   [Spacemacs](#org8be5a2f)
                    -   [Troubleshoot](#org829d844)
                        -   [org-mode not working after a fresh install of spacemacs + practicalli config?](#org59787ff)
                    -   [Clojure](#orgf317f32)
                        -   [Tests](#org52225a4)
                            -   [Switch between implementation and test in Spacemacs Clojure?](#orgbd3c2c3)
                            -   [Clojure's switch between implementation and test: how to create the test if not exists?](#org15ff565)
                    -   [Install](#org7cd22f4)
                        -   ["No public key for 066DAFCB81E42C40" ?](#orgbca29cf)
                    -   [evil cheat sheet?](#org58b162a)
                    -   [run a command and get the output in the current buffer?](#orgfe35a8a)
                        -   [Emacs](#orgf34ae2d)
                        -   [fix error when installing spacemacs: "No such file or directory, evil"?](#org822abce)
                        -   [Spacemacs (evil mode)](#org155eb33)
                    -   [Universal argument in spacemacs (evil mode)?](#orgcabdc08)
                    -   [Project](#orge7fde52)
                        -   [`helm-project-do-ag` how to filter by file types?](#org17ec763)
                        -   [search and replace in project?](#orgf79f09e)
                    -   [SearchAndReplace](#org6637168)
                        -   [How to search and replace starting at the cursor position?](#orgd3fe8d7)
                    -   [Folding](#org339ed7d)
                        -   [a promising mode?](#org7a2ef5c)
                    -   [Misc](#org22c5c42)
                        -   [Exit emacs mode (holy mode) entered by error?](#org26fb3c3)
                            -   [pipe in table with code block](#orgf9e80b3)
                            -   [org mode how to use pipes in tables? <code>[0%]</code>](#org0c9b84d)
                                -   [using contants?](#orgd28b427)
                                -   [macros?](#org25c9b8a)
                                -   [latex?](#orgfbf880b)
                                -   [html?](#org0665031)
                                -   [compute cells values ?](#orgbdaced6)
                    -   [twbs export html](#orgaedbb6b)
                    -   [easy templates?](#org9fb087a)
                    -   [Babel](#orgf4a171e)
                        -   ["eval is disabled for shell"](#org28b5631)
                            -   [add to your init file](#orgf839a1c)
                            -   [in the org mode file](#org13e35dd)
                            -   [stop emacs](#orgb41ec08)
                            -   [remove the folder `~/.emacs.d/elpa/org-plus-contrib-*`](#org542bda1)
                            -   [start emacs](#orgb32e154)
                            -   [try to eval with `C-c C-c`](#org66d2bb4)
                    -   [Spacemace: disable mouse under termux ?](#org028e30e)
                -   [install emacs25 on ubuntu16.04?](#org82d0f9a)
                -   [Org-Mode](#org7640703)
                    -   [Tables](#org992ca07)
                        -   [example of org-mode table with columns merged vertically ?](#orgb67375b)
                    -   [key binding to insert a code block?](#org6d3b3d8)
                    -   [How to track time spen on TODO STARTED DONE?](#org0ced4cb)
                        -   [Text](#orgcdbd720)
                            -   [Less](#org559b11c)
                                -   [how to search for a tab ?](#org89e3237)
                            -   [Tail](#orga5cef25)
                                -   [skip the N first lines of input with tail?](#org02fe414)
                    -   [Package managers cheat sheet](#orgff28bb8)
                        -   [find which package manager is used on this machine?](#org3b206a1)
                        -   [apk](#org0797493)
                            -   [equivalent of apt-file search?](#org92be489)
                    -   [Software packages](#org52223b5)
                        -   [Admin](#orgb50353e)
                            -   [Tmux](#orgd10ea74)
                                -   [how do i detach other client when reattach to session?](#orgb7e74d2)
                                -   [create a new session specifying the name?](#orge02f5df)
                                -   [reload .tmux.conf?](#org88f01fd)
                                -   [bindings to install plugins?](#orge44216f)
                                -   [bindings to upgrade plugins?](#org2b4f4ba)
                                -   [use another shell as the default (ex: zsh instead of bash)](#org1090783)
                            -   [Zip](#org9242428)
                                -   [list content of a zip file from stdin?](#org6010c65)
                            -   [Apt-get](#org9c2e005)
                                -   [dpkg show all installed files of a .deb?](#org48cfe56)
                                -   [apt-get: what package provide this file?](#org34ac3bf)
                                -   [fix a broken state ?](#org03cb679)
                                -   [install a specific version?](#orgc3a6238)
                                -   [show version that a package can be upgraded to?](#org1140587)
                                -   [customize output of dpkg -l?](#org2e05692)
                                -   [Alternative](#org7896d7a)
                                    -   [rebuild alternative for a particular package?](#org4329973)
                            -   [Rpm](#org5406f33)
                                -   [list files installed by a package?](#orgc2bdaf4)
                                -   [list only names of packages?](#org5bfd71e)
                            -   [Ps](#org4f51e73)
                                    -   [list all processes, show only pids?](#orgfd11f70)
                                    -   [ps: List processes with their elapsed running time ?](#org9f4af17)
                            -   [SeLinux](#orgfe5b50f)
                                -   [status/enable/disable selinux?](#org7593582)
                            -   [Dd](#org6dc7c31)
                                -   [Typical dd invocation to copy a partition disk ?](#org39025d2)
                                -   [Show progress with dd?](#org0e98858)
                            -   [Systrace](#org6dc7f50)
                                -   [How to cp with a progress bar using strace?](#org2b69729)
                            -   [Security](#orgbc176a3)
                                -   [Deletion](#orgd944203)
                                    -   [how to securely overwrite a file for harder recovery?](#orgfd48847)
                                -   [Other](#orgbe41fe6)
                                    -   [list recent ssh connection on a host?](#org685852e)
                                -   [SeLinux](#org7c476f0)
                                    -   [status/enable/disable selinux?](#org0c9944d)
                                -   [User/groups management](#orgc3e6d38)
                                -   [Users's group management command](#org92f0d55)
                            -   [Cron](#orgf7f2a73)
                                -   [cron cheatsheet](#org4a7f72f)
                        -   [Graphics](#org04ee3d9)
                            -   [Imagemagick](#org7f1647d)
                                -   [how to change the quality of a jpeg image?](#orgcdd8cc4)
                            -   [Ffmpeg](#org1877a78)
                                -   [How to get only the 1st n minutes of videos?](#org2b8cc15)
                                -   [Record desktop?](#org4982bbd)
                                    -   [linux](#orgcedb266)
                                    -   [windows](#org683e70d)
                                        -   [directshow](#org659d204)
                                        -   [built-in gdi screengrabber](#orgcc58b47)
                                            -   [all displays](#orgcbd2b74)
                                            -   [region](#org7b3fe2c)
                                            -   [window](#orgb22505b)
                                            -   [hw encoding](#orgb391af6)
                                    -   [lossless recording](#org2cd935c)
                                -   [half res of a video ?](#org695d15d)
                        -   [Math](#org73eaed7)
                            -   [Bc](#org17ad236)
                                -   [float precision?](#orgff16ce0)
                        -   [Net](#orga3c2ad1)
                            -   [General](#orga805307)
                                -   [Count all current tcp connection on linux host?](#orgc75a2c8)
                                -   [List all tcp connections on a linux host?](#orgc194347)
                                -   [List all ssh connections on a linux host?](#orgb97e22c)
                            -   [Netcat](#orgc53a65c)
                                -   [simple web server with netcat?](#org26a71bf)
                            -   [Ssh](#org05560f4)
                                -   [How to check the **actual** configuration of a sshd server?](#org91a1f3c)
                                -   [Ssh Tunnels](#org028d673)
                                    -   [ssh tunnels explained](#orgfba3fb7)
                                    -   [ssh reverse tunnel ?](#org51fd259)
                                    -   [ssh tunnel example?](#orgeb8b306)
                                    -   [ssh tunnel socks "channel 2: open failed: administratively prohibited: open failed"](#org512f402)
                                -   [Passwordless and keyless ssh login](#org3be7027)
                                    -   [ssh without password or key?](#org699c7ad)
                                    -   [ssh root without password or key?](#org2b8c77b)
                                    -   [working conf for openssh 7.1 on alpine?](#orga9a6459)
                                -   [generate public private key pair](#org5465eb5)
                                -   [ssh or scp in a script without entering password ?](#orgd5565ce)
                                -   [get public key from private key ?](#org522f5d0)
                                -   [Disable host verification?](#org0a2adbf)
                                    -   [for one session](#org03f89d2)
                                    -   [for all sessions:](#org581d089)
                                    -   [for all sessions and all hosts:](#org4ba6cac)
                                -   [copy pub key to remote authorized<sub>keys</sub>?](#org4cb88a9)
                                -   [workaround for a ssh slow login on a particular server?](#org70dbac6)
                                -   [copy between two ssh hosts without intermediary copy?](#org0bab3dd)
                                -   [disable host has in known<sub>hosts</sub>?](#orgc2df8ba)
                                -   [Non interactive sftp session with non pubkey password?](#orgb6166b0)
                                -   [How to view actual ssh config (system wide + user config + cmdline/env)?](#org5a56ed9)
                                -   [Sshfs](#orgced03f6)
                                    -   [how to mount remote fs with sshfs?](#orga15525c)
                                    -   [how to umount a mounted sshfs?](#orgb45fd01)
                                    -   [sshfs with autossh?](#orgc404cac)
                                -   [alpine ssh send<sub>pubkey</sub><sub>test</sub>: no mutual signature algorithm ?](#orgef0838e)
                            -   [Openssl](#orgd027792)
                                -   [SslCerts](#orga6a8945)
                                    -   [Add a custom ca cert cheatcheet](#org7c8da5b)
                                    -   [ssl cheatcheat](#orgc089dec)
                                    -   [generate a self certificate for localhost (without prompt)?](#org14fbabe)
                                    -   [How to add root cert to an Ubuntu install?](#orgda3a7ba)
                                    -   [best explaination of "everything derive from the root ca key"?](#org03be45e)
                                    -   [Generate a self signed ca cert and key, and a cert and key for a how that works on the command line and chrome?](#orgc762da0)
                            -   [Rsync](#org2516519)
                                -   [how to specify the port in rsync?](#org40b5496)
                                -   [how to exactly copy a local directory to a remote host (remove extra remote file if necessary) and back ?](#orgc5a8c76)
                                -   [rsync and trailing slash behavior?](#orgf8a6f0b)
                            -   [Openvpn](#orgf24a1a8)
                                -   [list and connect with openvpn from cli?](#orgc6e34dc)
                                        -   [with nmanager](#org9a1d733)
                            -   [Dns](#orgc3bacde)
                                -   [Get ip from hostname?](#orgc369cd8)
                                -   [Get hostname from ip?](#org24b30bd)
                            -   [Network analysis](#org9862e66)
                                -   [Ngrep](#org42748c2)
                                    -   [Ngrep example?](#org2e7f380)
                        -   [Misc](#orgca48d58)
                            -   [VirtualBox](#orgde217b5)
                                -   [Windows host](#org13a88e7)
                                    -   [Linux Guest](#org71a6e82)
                                        -   [How to disable HyperV so VBox can run correctly?](#orga2313d3)
                                        -   [How to correctly install guestAdditon on ubuntu22.04?](#orgba94a07)
                                        -   [How to correctly install guestAdditon on debian12?](#orgef845c7)
                                            -   [Hint1](#org5f89e26)
                                            -   [Hint2](#org9a1d8ad)
                                            -   [Hint3](#org6979f27)
                        -   [Utils](#org90ce7fa)
                            -   [Comm](#orgf6b0ad3)
                                -   [comm summary?](#org7a8c003)
                                -   [binary to compare the content of files (all in a but not in b, etc)?](#org285b079)
                            -   [Find](#orgb69acd9)
                                -   [find files modified in the last x minutes](#org8f3d20f)
                                -   [find files modified in the last x days](#org1cdb330)
                                -   [handle filenames with spaces ?](#orge57d818)
                                -   [sort files by modified date?](#org2bdb2f9)
                                -   [find files bigger than x MBytes?](#org72ff6de)
                                -   [find filename with regex?](#orgc5458f5)
                                -   [find with logical or?](#org12290f5)
                            -   [Grep](#org0f10fe4)
                                -   [Non capturing group?](#orgdb3be56)
                                -   [cheat sheet](#orgf71b17a)
                                -   [Character class for blanks?](#orgf845056)
                                -   [match pattern on multiples lines?](#org41353bf)
                            -   [Tr](#org77618d2)
                                -   [remove all non printable characters from a file with tr ?](#orge70cad7)
                            -   [Nohup](#org1cd28a2)
                                -   [run nohup?](#org31d065d)
                            -   [MoreUtils](#org5ea3584)
                                -   [read / process / write the same file ?](#orgd978508)
                                -   [instead of xxx use moreutils yyy?](#org1e6b7d9)
                            -   [Stat](#orge5f27ec)
                                -   [Custom format with newlines?](#org8c932cb)
                            -   [Tar](#org4b7aef6)
                                -   [list the content of a remote tgz without intermediary files?](#org1ee93c1)
                                -   [send tar compressed archive to stdout?](#orgf4f5d9d)
                                -   [recompress without intermediary files?](#orgc2ccbe6)
                                -   [tar: archive files name coming from stdin?](#org0892117)
                                -   [Specify arbitrary order of files in tar file?](#org5fad28b)
                            -   [Bsdtar](#orgcaa3532)
                                -   [recompress without intermediary files?](#orgc00c06b)
                            -   [Tree](#org1bbb755)
                                -   [print tree with unicode characters?](#org11f6eee)
                            -   [Xargs](#orge2523ea)
                                -   [run a cmd on each line of stdin with xargs?](#orgde75c57)
                                -   [use bash function?](#org05eebd1)
                            -   [Zip](#orgf69f4f4)
                                -   [unzip a single file from archive?](#org685b7a4)
                                -   [compress dir recursive?](#org874d494)
                                -   [compress dir but exclude a directory ?](#orgfef29f9)
                        -   [Web](#orge5a85e4)
                            -   [Curl](#org2a0c1e8)
                                -   [follow redirects?](#orgf401f2f)
                                -   [post data from stdin?](#org26ce7cf)
                            -   [Wget](#orgda0501d)
                                -   [recursively download for example nexus ?](#org52d76f4)
                                -   [equivalent of curl -sS?](#orgc6b84be)
                            -   [Nginx](#org2699901)
                                -   [Check config syntax?](#org327ee00)
                            -   [Lynx](#org3bfdb26)
                                -   [html to text by piping to lynx?](#org22c3675)
                        -   [X11](#orgdffeb27)
                            -   [NxClient](#org41d23e8)
                                -   [keyboard issue when connecting with nx ?](#org0b6ef71)
                    -   [Hardware](#org9b5c631)
                        -   [Sound](#org6fa2807)
                            -   [Troubleshoot sound in Linux/Ubuntu ?](#orgd071e72)
                        -   [Ubuntu/Debian change the machine uuid (useful when the dhcp id is derived from it) ?](#org076a41f)
                    -   [Sysadmin](#org434aaf3)
                        -   [System Services (systemctl, &#x2026;)](#org27de99f)
                            -   [Systemd](#orge589474)
                                -   [systemd / systemV cheatsheet](#org2f43c74)
                                -   [follow logs of a particular systemd service?](#orgaae0f3a)
                                -   [restart network on systemd?](#org519743c)
                            -   [General Linux](#orgce8f89f)
                                -   [Linux reload service config](#org03832a3)
                            -   [Centos](#orgda34d00)
                                -   [create a new systemd unit file?](#org519a1db)
                                -   [the hostname keep coming back at its previous state after each restart?](#orgd14c6de)
                        -   [User Admin](#org275f310)
                            -   [how to add a group to a user ?](#org233e9cf)
                            -   [add a user with specific groups ?](#org7b7f31b)
                            -   [get the groups of a user ?](#org628ffc9)
                            -   [change the shell of a user?](#org1e4dc27)
                            -   [remove a user?](#org5d4fb55)
                            -   [add a user?](#org98442df)
                            -   [view login activity?](#orga702204)
                        -   [Sudo](#orgc837210)
                            -   [allow sudo without password for a user?](#orgf096a83)
                            -   [execute a cmd as another user?](#orgd44d8b2)
                        -   [Devices (hdd,&#x2026;)](#org0a6e34a)
                            -   [eject a cd rom?](#org6cf1393)
                            -   [how to list all supported FS for mounting?](#org6ea4cd3)
                            -   [how to fix a screwed nfs mount without rebooting?](#org9cc1f28)
                            -   [Swap](#org55beb25)
                                -   [manage swap (status, enable, disable)?](#org4596180)
                        -   [Dns](#orgff8b068)
                            -   [How to query all the entries of a dns server ?](#org2f89562)
                        -   [recover a lost root password at boot with grub](#org8673321)
                        -   [Special files](#org98260a4)
                            -   [Removed /dev/null how to remake it?](#orgc4c96ea)
                    -   [Terminal](#org3ca5427)
                        -   [Colors](#org28194e7)
                            -   [simple way to color output with grep?](#orgd7e01db)
                        -   [Replace capslock by ctrl in console?](#orgadf7348)
                            -   [working also in virtual consoles?](#orgb8ea4e1)
                            -   [working under X?](#orga8b2c45)
                        -   [replace capslock by ctrl in a terminal under X ?](#org558f084)
                        -   [change language keyboard mapping](#org01bff75)
                        -   [change text mode resolution?](#org12851df)
                        -   [paste example?](#org5902ced)
                        -   [show which key is pressed in a terminal?](#orgf410a36)
                        -   [get the number of rows and colums?](#orged447b6)
                        -   [Presentation conventions](#orga6e69ac)
                            -   [display a command line?](#org6c9d415)
                    -   [Io](#org6c97889)
                        -   [Disk](#orgab8f234)
                            -   [Live disk increase](#orga542e31)
                                -   [Make the kernel aware of a new disk ?](#orgc495659)
                                -   [Make the kernel aware of disk having its size changed?](#org823f184)
                                -   [Grow a mounted and used partition live (on a growed disk and the fs on one partition)?](#org07e7cda)
                            -   [list files open by a particular process](#orgd63be19)
                            -   [how to do a simple bind mount?](#org06de7a6)
                            -   [Disks](#org764bfb1)
                                -   [Disks caches](#org3bbb822)
                                    -   [how do I clear the disk caches in Linux?](#orgb2d1962)
                            -   [Images](#org566dccc)
                                -   [Copy an img file to a disk with bad blocks?](#orga3392f6)
                        -   [RemoteFs](#orgbc45e39)
                            -   [nfs](#orgbeb38ca)
                                -   [How to mount a remote nfs drive on a linux host?](#org5419c95)
                                -   [List all nfs share of a remote nfs server?](#org352d481)
                        -   [VirtualFs](#org3aae148)
                            -   [How to get the load with /proc?](#org75f8e11)
                        -   [Processes](#org418dc85)
                            -   [How to find how are connected by pipes running processes?](#org6e91c46)
                            -   [Autossh](#orgd57e462)
                                -   [How to keep a ssh sesssion open with autossh?](#orge02704f)
                        -   [Completion](#orgeab0c35)
                            -   [using bash's autocomplete with zsh?](#org8df4568)
                            -   [Copy an existing completion for another command?](#org027e686)
                    -   [X](#org51d1fb6)
                        -   [copy to system clipboard from the command line?](#org8042c19)
                        -   [dual monitor setup: turn off one of the monitor and not the other?](#org31fa039)
                        -   [force X resolution when an external monitor is not detected?](#org9b7c31e)
                        -   [Fonts](#orge59d61e)
                            -   [List fonts?](#org8335b0d)
                        -   [Gnome](#orgb686399)
                            -   [How to logout from Gnome with the terminal?](#orga02116d)
                        -   [Remote](#org160761f)
                            -   [NoMachine NX](#org8441f62)
                                -   [How to administrate the NX server?](#org8cc1585)
                        -   [Xpra](#org982c6c9)
                            -   [xpra quickstart on ubuntu?](#org6f4d9c5)
                        -   [Window managers](#org2b09924)
                            -   [Gnome](#orgaa66b1e)
                                -   [open the network manager (for proxy settings) from the command line?](#orgfd67956)
                                -   [Gnome 3](#org43d0abb)
                                    -   [Gnome Shell](#orgf8f785d)
                                        -   [how to have cpu,etc montoring in the top bar?](#org0f9821e)
                                        -   [how restart gnome shell?](#org0a194cb)
                                            -   [Gnome Shell Extensions?](#org64c4697)
                                                -   [how to manage enabling/disabling gnome shell user extensions (command line)?](#orgacff2ae)
                        -   [Xdg-open](#org11ff650)
                            -   [choose browser to use with xdg-open?](#org276264b)
                    -   [Converting formats](#orgadf9f24)
                        -   [Converting human readable <-> bytes](#orge865e58)
                        -   [convert file format table?](#org7c7f9dd)
                        -   [Pdf](#orgb1acc47)
                            -   [replace a string in a pdf file ?](#orgaeb0507)
                        -   [units](#orgb4bec14)
                    -   [Locale](#orgbdba149)
                        -   [fix locale config?](#org859da7e)
                            -   [ubuntu / debian](#org62b51a2)
                            -   [centos](#org9a43caf)
                    -   [Network](#org66518db)
                        -   [How to trace all network activity?](#orgca04898)
                        -   [how to get the ip adresse of the local host ?](#org7658780)
                        -   [list open ports?](#org47f06c1)
                        -   [Proxy](#org30e767b)
                            -   [Request with curl through a proxy over ssh ?](#org4b5c901)
                        -   [how to list all open ports and their associated processes?](#org66f605a)
                        -   [Mtu](#org48cc877)
                            -   [temporary change the mtu of a network interface?](#org72952f8)
                        -   [Wifi](#org61e9a4e)
                            -   [Connect to wifi with via command line?](#org94dd3df)
                                -   [Using nmcli](#org4121ffa)
                    -   [Compression](#org86ab671)
                        -   [compress stdin, uncompress to stdout ?](#orga5fdb08)
                        -   [Xz](#org56650ab)
                            -   [compress/decompress stdin with xz?](#org829e889)
                            -   [decompress stdin with xz?](#org03a6c1d)
                        -   [Gzip](#org4ab342b)
                            -   [Compress with gzip with 0 compression?](#org0339af7)
                    -   [Fs](#org2b306aa)
                        -   [difference between `/bin`, `/usr/bin`, `/usr/local/bin`?](#orgb004dca)
                        -   [Zfs](#orgd8e40d2)
                            -   [Dedup](#orgf60cbbc)
                                -   [Size RAM for online dedup ?](#org8fa13c2)
                                -   [Current RAM usage for dedup on a particular zfs pool?](#org1438560)
                            -   [Create a new zfs "env" in a file?](#org9c77e29)
                            -   [How to destroy a zpool ?](#orga5f4cc5)
                            -   [How to add new devices to an exising pool?](#org7b0da9d)
                            -   [How to view the dedup and compression properties of pools?](#org5ef76a5)
                            -   [Snaphot clones, etc](#org7a778f2)
                            -   [Send/receive](#org88beb95)
                                -   [How to do send a whole pool to another pool?](#orgace9b8b)
                                -   [How to to send a whole pool with dedup=on to another pool but with dedup=off?](#org6fdcbcb)
                                -   [Zfs partial send / receive ?](#org2c6a32e)
                                    -   [zfs partial send / receive](#org6428a69)
                                    -   [canceiling a partial receive ?](#org299ad2d)
                            -   [How to list all devices of a pool?](#orgf499588)
                            -   [Grow a zfs pool when a device has grown?](#org6cd1ed0)
                        -   [AccessControl](#orga672595)
                            -   [Set read right reccursive for all files and and dir in a given dir?](#org5da23eb)
                    -   [Distribs](#org4fe3574)
                        -   [Alpine](#org9b46928)
                            -   [Apk](#org4c569a6)
                                -   [use a http cache for apk ?](#orgf56f819)
                                -   [add a repo?](#orgf16d77c)
                                -   [how to install telnet on alpine ???](#orge3ad108)
                                -   [repo key rotated? (UNTRUSTED signature when `apk add`)?](#org8d5e468)
                            -   [OpenSsl](#orgb7fd2c9)
                                -   [Add a root cert CA to an alpine?](#org92515ab)
                        -   [Debian](#orga342f28)
                            -   [Old debian GPG invalid signature when apt-get update?](#orgf2f71dc)
                            -   [Bookworm](#orgf43c64d)
                                -   [how to install java8 on Debian Bookworm?](#org2af4a93)
                                -   [Fresh install of bookworm 12.5 via cd.iso apt update fails !?](#orgc626a9b)
                        -   [Ubuntu](#orgeb09028)
                            -   [X](#org40f3370)
                                -   [Disable Wayland to use Xorg instead?](#orgae212eb)
                            -   [Admin](#orgcc226cf)
                                -   [How to authorize normal user to connect to wifi withouth authenticating as admin ?](#org538f8e6)
                            -   [prevent snapd for ever installing?](#org889d904)
                            -   [18.04](#org61f585c)
                                -   [X](#orgb9834f8)
                                    -   [Normal alt-tab?](#org4e304f8)
                                -   [uninstall snap?](#org61d8a1b)
                        -   [Raspberry Pi](#org1e0b740)
                            -   [Install docker on Raspberry Pi 4?](#orgddfdcd0)
                    -   [Backup](#org36a068d)
                        -   [Bup](#org186f600)
                            -   [bup essentials?](#org06121d3)
                -   [Other UNIXes](#org9642c19)
                    -   [Solaris](#org05868d8)
                        -   [equivalent of linux's `ps aux` ?](#orgda65c43)
                    -   [AIX](#orgbb284c8)
                        -   [list all processes with their corresponding commands?](#org91a7b33)
                                -   [How to know the actual amount of ram used by dedup on a particular dataset ?](#org55fb21b)
                                    -   [common rsync flags?](#org5ef07cc)
                                    -   [Compress / decompress on the fly?](#orga484f7c)
                                    -   [How to display the actual configuration of the ssh command?](#org37e45cd)
                                    -   [Signal to control nginx at runtime?](#orgeb19dee)
                -   [M$ Windows](#orgd2db99e)
                    -   [Cygwin](#org3ce57c6)
                        -   [Sshd](#org11214f4)
                            -   [start sshd as a service after its installation with the Cygwin installer?](#orgc2902cd)
                                -   [to be verified](#orgb1ac8e5)
                            -   [install gpg under cygwin?](#org318841f)
                    -   [cmd.exe](#org9acdd41)
                        -   [windows services cheatsheet?](#orgccc2e0a)
                    -   [Linux Guests in a Windows vbox host](#org3f29a6e)
                            -   [Disable hyperV for vbox?](#org3546bef)
                            -   [manually mount a shared folder in a linux guest?](#org415d0e9)
                            -   [host alt-tab when in a guest?](#org53a7b52)
                            -   [Windows Hosts](#org44a07dc)
                                -   [Windows10](#org73875e9)
                                    -   [VT-x is not available (VERR<sub>VMX</sub><sub>NO</sub><sub>VMX</sub>)](#org63ea55a)
            -   [Vim](#org787f815)
                -   [Yaml](#orgf65819c)
                    -   [Folding yaml in vim?](#orgcba20ac)
-   [Virtualization](#orge4dcf7d)
    -   [Docker](#org7cef97d)
        -   [Images](#org5a32804)
            -   [find images on the command line ?](#org5fb72f7)
            -   [Building](#org9ef0bb6)
                -   [docker build from stdin?](#orgef9337f)
            -   [Tags](#org128f9c0)
                -   [Give a name to an image?](#orgb8901f7)
        -   [Containers](#orge80a538)
            -   [docker run/start/exec ?](#org0a768b1)
        -   [troubleshoot ubuntu network ?](#org649476c)
        -   [Persistence](#org3770b69)
            -   [repair docker after a disk full?](#org39f5200)
        -   [Dockerfile](#org7a3d417)
            -   [use bashism in Dockerfile?](#orgb5fb85a)
        -   [Docker Compose](#orgd710246)
            -   [commands cheatsheet ?](#org6578cba)
            -   [pass env var at build time ?](#org7753dd5)
        -   [docker docs](#orgf7065c0)
        -   [Network](#org0c3addc)
            -   [bind host /lib and /bin to the guest to run (eg) wget?](#org9263dc0)
        -   [DockerHub](#org6db41db)
            -   [How to list all tags of a particular image?](#org629a2db)
        -   [Misc](#org35e98f8)
            -   [use stdin with a container?](#org3b82760)
        -   [Cli](#orga9a9d66)
            -   [Formatting](#org70518cd)
                -   [docker cli command output in json?](#orgf9f5e61)
        -   [DockerDistribs](#org261364a)
            -   [RancherOs](#org018598a)
                -   [How to switch the default console to ubuntu?](#org5dca690)
    -   [Vsphere](#org6ddd463)
        -   [when cloning a win vm, how to avoid a duplicate ip adress?](#orgdc319fd)
-   [Crypto](#org56ad3ae)
    -   [Gpg](#orgf3b52d8)
        -   [How to encrypt symmetric stdin without X (Inappropriate ioctl for device)?](#org86c3863)
        -   [verify a gpg signed file?](#orgeef3bdc)
        -   [how to dw a gpg public key from ubuntu key server?](#orgd81318b)
-   [Web Browsers](#org5d42478)
    -   [Firefox](#org87e9c44)
        -   [Disable images loading?](#orgf954bb7)
    -   [Chrome](#org6f8c5e6)
        -   [How to keep a Chrome background active (eg: for avoiding sessions timeouts)?](#org3f778b8)
            -   [Possible option1: Use Chrome build-in `ctrl-shift-click`](#org72fc351)
                -   [1) use the buit-in chrome shortcut <code>[0/1]</code>](#org8fba294)
                    -   [to be verified](#org212fc04)
            -   [Possible option2: Use an extension like `Tab Reloader`](#org3584bf7)
                -   [to check](#orgad7e3d7)
    -   [Chromium](#orga3f8f4d)
        -   [Run chromium diagnostics?](#org5171d8e)
        -   [Chromium crashes on startup, any hint?](#org93833be)
-   [Videos](#org980094f)
    -   [Youtube](#orga368b03)
            -   [How do I send a link to a youtube video specifing the resolution?](#org6f4c836)
                    -   [Solution from stackoverflow](#orgea8b9b3)
                -   [In other words](#orgd2e35b1)
-   [Programming](#org0be0f15)
    -   [JVM ecosystem](#orgb7c3581)
        -   [Groovy](#org293f939)
            -   [Misc](#org6026b35)
                -   [Get the Groovy version from within a Groovy script/class?](#org05695da)
            -   [pipeline oriented programming in groovy like Clojure's threading macro?](#org24ac476)
            -   [groovy switch case?](#org52dd78d)
            -   [groovy interval ?](#orgf7f0fbd)
            -   [get cmd line args?](#orgc7abb12)
            -   [run a system command in groovy ?](#org4969920)
            -   [groovy pprint datastructure?](#orgc5351de)
        -   [Java](#org34025ab)
            -   [Create an object with the same behavior than System.out (for testing output)?](#org097debf)
            -   [timestamp in java ?](#org5ac00c8)
        -   [Gradle](#org4463e74)
            -   [how to create a new project from scratch?](#orgac82b5e)
        -   [Maven](#org223a79e)
            -   [simply download a jar with maven?](#org5615239)
                -   [simple](#orgea79e22)
                -   [specifying transitivity and repo](#org928bc30)
            -   [generate a simple maven project?](#orge6aa6e9)
            -   [generate a simple webapp?](#org1d5ff00)
        -   [Clojure](#org89a8ed9)
            -   [Dev](#org6e9be7e)
                -   [Repl](#org35980dd)
                    -   [Change the alias of a ns in a ns def (Alias <alias> already exists in namespace <ns>,etc)?](#org95058ec)
                    -   [List all ns?](#orgc3e3616)
                -   [Strings](#org4eac5f3)
                    -   [ByteArrayInputStream to string?](#org02d3eac)
                    -   [Convert a string to a regex?](#org3392b15)
                -   [Protocols](#org03f1bda)
                    -   [Full example of protocole usage for fast & simple polymorphic dispatch on a single type?](#org6a22aa4)
                -   [Modulo/quotient/reminder?](#orgd94d25e)
                -   [Lein](#org6315f1f)
                    -   [Show dependencies tree?](#org10e64a8)
                    -   [Connect to an existing nrepl process?](#org2bf3b96)
                -   [Bloody java.time dates](#orgf0dfe3e)
                    -   [java.time formatting and parsing nanosecond precision dates with UTC timezone?](#org2b876bd)
                        -   [conversion from seconds from epoch to DateTime:](#orga6fb536)
                    -   [simple date formating like '16/Mar/2023' ?](#org0f8b27c)
                    -   [current LocalDateTime?](#org80791d2)
                    -   [convert LocalDateTime to ZonedDateTime utc?](#org1e28fba)
                    -   [date fmt & parse cheatsheet?](#orge604515)
                        -   [parse 2023-03-23](#org10b228e)
                -   [Misc](#org88f6216)
                    -   [hex <-> decimal conversion?](#orgb81d103)
            -   [Js](#orgdc0104f)
            -   [Babashka](#org4d9a1fa)
                -   [Parse a date in babashka?](#orgb2c9c76)
            -   [Processes](#org871e5d7)
                -   [Process output of a cmd lazily?](#orga94eb71)
                    -   [Pure clojure (works with Clojure JVM + Babashka)](#org3ac7d8c)
                    -   [Using babashka process lib](#org3a24b1e)
                -   [Macros](#orge7ec4a7)
                    -   [Threading](#orga851853)
                        -   [how to use threading macros with functions with different argument position?](#org2127c78)
                        -   [how to use ->> with fns args mixed at the beginning and and?](#org71149c8)
                    -   [Functions](#org39fe92b)
                        -   [Args](#org6242d05)
                            -   [optional args with default values using keys?](#orgcde44b9)
                    -   [Ns](#org6ac1ab2)
                        -   [Alias](#orge6514e8)
                            -   [How to remove an alias to a ns?](#orgb77123c)
                    -   [Var](#org71f6d6f)
                        -   [symbol->var->value?](#org571ca5f)
                            -   [alternative:](#org9d29a3e)
                            -   [in one go:](#org730eb4f)
                            -   [or for conditional evaluation](#org1f7e62b)
                    -   [Destructuring](#orgb464793)
                        -   [Nested destructuring with map and seq ?](#org25e2cb6)
                    -   [Files](#org2d8c211)
                        -   [Read a file line by line?](#org0e25573)
                    -   [Strings](#orgf9f83db)
                        -   [Regexes](#org01952a7)
                            -   [named groups search and replace in Clojure?](#org973faf1)
                            -   [string to regex?](#org8ac0d53)
                            -   [repeat expression between n and m?](#org6a65236)
                    -   [Classpath](#orge97d99a)
                        -   [slurp a resource in the classpath?](#orgc154f81)
                    -   [Java interop](#orgf8ffe25)
                        -   [Get all parents classes of an instance ?](#org213eba3)
                    -   [Generate uuid](#orga4c3036)
                    -   [Exceptions](#org96bb80c)
                        -   [try/catch/finally?](#org48d925e)
            -   [Java interop](#org1548981)
                -   [Start a clojure repl server from java?](#orgfa4258b)
        -   [Web Servers](#orgc9d2384)
            -   [Tomcat](#org6c2ad52)
                -   [how to configure tomcat so that it can be managed programatically ?](#orgd38150a)
                -   [tomcat rest api doc ?](#orgbda39de)
    -   [Databases](#org94b7032)
        -   [Sql language](#org4868c25)
            -   [DateTime](#org9d07713)
                -   [Sql: how to select rows where a field date is greater than&#x2026;?](#org57b79bf)
                -   [Sql: how to select rows where a field date is in [<date> ; <date> + 1 day]?](#orga7e9e70)
            -   [GroupBy](#orgeadc8e5)
                -   [group by concatenate string?](#orgd559216)
            -   [Other](#org963925a)
                -   [Pseudo table in sql?](#org3786b0b)
                -   [Concatenate two tables?](#orgaac7164)
        -   [RDBMS](#org6beda3e)
            -   [PostgreSQL](#orgf6ce95f)
                    -   [Posgresql cheatsheet?](#orga9bcac0)
            -   [sqlite](#org34bf4b4)
                -   [sqlite3](#org1bbe4f9)
                    -   [import](#org677fc31)
                        -   [How do I import a csv from stdin with field containing '"' into a sqlite3 db (non interactively)?](#orgc64a77b)
        -   [timeserie db](#orgd6270ae)
            -   [influxdb](#orgfc9395d)
                -   [import/export](#org8465375)
                    -   [Dump a measurment?](#org7f7e92f)
                    -   [Copy a measurement from a bucket to another measurement in the same bucket  ?](#orgae04807)
                -   [flux](#org18ba2e1)
                    -   [flux query example?](#org7df283d)
    -   [Node](#org5426ce6)
        -   [Npm](#orge8f7ee4)
            -   [Cli usage](#org6d21d7a)
                -   [how to install global packages without sudo?](#orgd44d85a)
                -   [upgrade npm to latest?](#org91ead81)
                -   [color config in npm?](#org3250488)
                -   [npm list all config keys?](#orgd6a1267)
                -   [npm install a module from a git url ?](#org43963e5)
            -   [Searching](#org205f47b)
                -   [how to search npm packages (and filter by populariy, &#x2026;)?](#org22c7186)
        -   [how to read all lines from stdin in one go?](#orgbced188)
    -   [Regex](#orga5ec6e7)
        -   [General](#orgdc1d941)
            -   [regex cheatsheet?](#orgd0bbb47)
        -   [Sed](#org084acd1)
            -   [use a backreference without grouping?](#orgf9a62b3)
            -   [remove backslash EOL with sed?](#orgbdaa9c6)
            -   [join lines of a files two by two?](#orgd2e9209)
            -   [add a line before the first line of a file?](#org4a14b1e)
            -   [output lines from regex to N line after it?](#orgbcbdde1)
        -   [Perl](#org7b59804)
            -   [Multiline search and replace?](#org1ca0392)
    -   [Python](#org9fa7bd2)
        -   [Pip](#orgcd6c95a)
            -   [How to install pip for python 3 ?](#org41a022d)
            -   [How to install pip for python 2 ?](#org30a4829)
            -   [pip completion on the command line?](#orgaa447a0)
            -   [avoid pip warning when pip list in a script?](#orgfcdc08a)
        -   [Json](#orgba75f5e)
            -   [Parse a json string?](#org07eefe6)
        -   [read from stdin?](#org5cb3e6f)
    -   [GnuMake](#org10c3750)
        -   [build in a diferent directory than the Makefile?](#org0fb7062)
        -   [GnuMake language](#orgc0fdb7f)
            -   [print newline?](#org8bb014f)
            -   [print all variables?](#org1668e14)
        -   [print all targets?](#org2587538)
        -   [how do I fail the build if an env var is not defined for a particular target?](#org247667f)
        -   [how to use a multiline make var in a shell recipe?](#orgc0baaa2)
        -   [selfDoc](#org842674c)
            -   [how to extract all targets from a Makefile without a make command ?](#org14b3edc)
    -   [Lorem ipsum](#org60cde21)
    -   [Git](#org53d7d71)
        -   [Submodules](#orgb6b24ef)
            -   [submodule lifecycle mgmt](#orgd00f3c5)
            -   [submodule: track latest?](#orgc419dfd)
            -   [how to deregister a submodule?](#org07d8b23)
        -   [Tags / branches lifecycle mgmt](#org6cd2115)
        -   [rm a big file from history?](#org9cb7f1b)
        -   [list branch sorted by last commit date?](#org931b6d9)
        -   [grep history?](#org197faa6)
        -   [essential git config?](#org600b843)
        -   [config for colors?](#org4464d0e)
        -   [Git Lfs essentials?](#org8bbb669)
        -   [git & ssh](#org58d6c4b)
            -   [view ssh details?](#orgebfdfec)
                -   [git v2.3.0 or higher:](#org165827a)
            -   [how to specify the ssh key used by git?](#orgcb6676a)
        -   [Diffing](#org8cd3662)
            -   [show only the filnames that changed](#org43b3f2f)
        -   [Syntax](#orgda23abf)
            -   [Reference Nthieme commit from HEAD?](#org750c5aa)
        -   [Colors](#org365c6f4)
            -   [git colors=always?](#org0369ef3)
        -   [hacks](#orga3d2683)
            -   [how to git diff even if the repo do not have an empty init commit?](#orgea30c5f)
    -   [Jq](#orgf9d460c)
        -   [Finding](#org61d07dc)
            -   [recursively find a value by key?](#orgbd9469a)
            -   [recursively find all values of a given key?](#org8de4f3c)
            -   [recursively find all path leading to a given key](#org986ad96)
            -   [recursively find all path leading to a certain value?](#org81190d8)
            -   [get all the values of an object?](#orgcc2d910)
            -   [does this array contains this element?](#orgd3106e0)
        -   [Modifying](#orgf2d250c)
            -   [delete the key of an object?](#org4a69517)
            -   [jq update ?](#orgaf0fb59)
            -   [delete in nested datastructure?](#org84a3665)
            -   [recursively delete all keys leading to pair numbers?](#org52597c5)
            -   [deep merge two nested datastructure?](#org65998c3)
        -   [Strings / Regex](#orgf95be1c)
            -   [jq regexes cheet sheat ?](#org2b11fc1)
                -   [jq regex flags](#org34a9489)
                -   [jq regex functions](#org39c4129)
            -   [recursively find containers having a value that match a given regex?](#orgc88daa0)
            -   [convert string to upper case?](#orgf974c0d)
            -   [jq regex replace?](#orgdee8007)
            -   [jq regex search and replace with backreferences](#org27a7933)
            -   [substring?](#org91b58fe)
        -   [Quoting](#org5996a87)
            -   [given a known char I want to encode it in a json string for consumption by jq](#org81b6be1)
            -   [Single Quote](#org5d24fb9)
                -   [single quote as a integer (to escape it in bash)?](#orgf1e2789)
                -   [encode a single quote in a string for jq to decode?](#org1cef0bd)
        -   [Interop](#orgd0f87bf)
            -   [output a array for bash?](#org6097d44)
        -   [Functional](#org9e324f8)
            -   [reduce ?](#orga42fc9a)
            -   [zip two arrays into a map?](#org8619b3d)
            -   [Comma in function args](#org9298c0a)
                -   [given a list of strings and a list of regexes, for each string check wether it matches all the given regexes or not](#orge61fa1b)
            -   [clojure's reductions equivalent in jq?](#org7862c3e)
        -   [Convert](#orgb93a27e)
            -   [element to array?](#org64f4769)
            -   [convert an array to a map?](#org0c03437)
        -   [Dates and time](#orgc16ae32)
            -   [Get a human readable date of current time?](#orgb836597)
            -   [Convert Unix epoch time in second to human readable?](#orgd58b8a0)
            -   [parse and format date with jq?](#org4f3e1d2)
        -   [Other](#org61c89b2)
            -   [Undocumented debug options?](#orgb1e565a)
            -   [Syntax](#org0d7f887)
                -   [Liberal Object notation?](#org7917714)
    -   [Lua](#org04d8671)
        -   [Call external command and get stdout?](#orgb579591)
        -   [Call external command and get stdout and return code?](#org0e331f2)
    -   [Jira](#orgc1ae712)
        -   [Jira webapp keyboard shortcut cheat sheet](#org5cfaac6)
        -   [command line online help?](#org4adc516)
    -   [CheatSheets](#org16ca147)
        -   [Clojure](#orga582495)
    -   [Doc](#orgabcb473)
        -   [Markdown](#org424a7e0)
            -   [Cheatsheet?](#org8c4da98)
                -   [Links?](#org27c6790)
            -   [get values by their path (eg: ["a",1,"b"])?](#orgdd9296f)
            -   [Bitbucket flavored markdown](#orgbc2d0e5)
                -   [How do I create a link to the same page in Bitbucket flavored markdown?](#org2e520b6)
    -   [CI](#orge0e6a5f)
        -   [Jenkins](#org55e33b0)
            -   [RestApi](#org9780573)
                -   [Jenkins Rest Api Essentials?](#org3320543)
                -   [JSON](#org1ed0ed5)
                    -   [Get all build result with time of particulatar job?](#org869546e)
                -   [XML](#org7269397)
            -   [parallel map in groovy?](#org6b21196)
            -   [dump nested object as json/xml ?](#orgde7f5da)
                -   [native but do not handle cycles](#org923bb24)
                -   [with xstream (handle cycles)](#orga01d281)
                    -   [Demo with cycles](#org5d84e6b)
                -   [with xstream: json](#org8fee4e8)
            -   [legacy jobs](#orgb7106f1)
                -   [job-dsl plugin](#orgfbd293f)
                    -   [Example job-dsl for matrix project?](#orgd7cacbc)
            -   [Stop an unstoppable build?](#orgcfa5545)
    -   [Visualization](#org673cdae)
        -   [Online visualization of Wikipedia's graph?](#org6379de9)
        -   [Graphviz's dot language?](#org2b9efb9)
            -   [Example of colorscheme usage?](#orgaca5047)
        -   [Grafana](#orgea53af6)
            -   [Grafana custom time formating for the x-axis ?](#org80d6cac)
    -   [Video editing](#org6923b69)
        -   [how to copy part of a video?](#orgdf812c8)
    -   [Repositories](#org40507a5)
        -   [Nexus](#org129a583)
            -   [V2](#orga95ba1e)
                -   [self hosted api doc for nexus v2?](#org02af748)
        -   [Monitoring](#org21b0502)
            -   [how to connect jconsole to a jvm running in a remote docker container?](#orgcd11f60)
-   [Special](#org79e1523)
    -   [Unicode(UTF8)](#orgdd8ceca)
        -   [How can I search by name for unicode char on the command line?](#orga85e849)
        -   [Handy unicode(utf8) chars?](#org42c93cd)
            -   [Handy emoticon ?](#org5ad6944)
            -   [arrows](#orgae32ad0)
            -   [draft](#org6cac455)
                -   [boxes](#orgc91146d)
            -   [use char by its code ?](#orga2cee7d)
            -   [unicode number in circle](#orgaad37d8)
            -   [lambda](#orgbeccb9c)
            -   [elipsis?](#org440fc50)
            -   [Checkmarks](#orgfa0c48d)
                -   [check / uncheck marks?](#org2353dfe)
                -   [more check marks?](#orgbd43c5a)
            -   [colored utf8 chars](#org478447e)
                -   [some cool](#org55e7082)
                -   [some](#org65150cf)
                -   [zodiac](#org2ed24d3)
                -   [zodiac unambiguous](#orgd2a8a3e)
                -   [zodiac even more unambiguous](#orgbf5783c)

My personal howto for things I know I knew, but keep forgetting

Also serve:

-   Large org-mode real world test
-   A Rough log of my computer-related interests over time (with the Git history)


<a id="org67cf8d3"></a>

# Operating Systems


<a id="org27f7099"></a>

## Linux


<a id="org1270213"></a>

### Shells


<a id="orge6cc9eb"></a>

#### Bash


<a id="orgb07e741"></a>

##### Non interactive


<a id="org1221830"></a>

###### Use alises in non interactive bash?

    shopt | egrep expand_aliases
    #> expand_aliases  off
    shopt -s expand_aliases
    #>
    shopt | egrep expand_aliases
    expand_aliases  on


<a id="org81d26c2"></a>

##### Interactive use


<a id="org330d55a"></a>

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


<a id="orgef36139"></a>

##### Common tasks


<a id="org0b3a0d6"></a>

###### Random

-   Generate a lot of (pseudo) random data faster than /dev/urandom?

        openssl enc -aes-256-ctr -pass pass:"$(head -c128 /dev/urandom | base64)" -nosalt < /dev/zero | pv > randomfile.bin


<a id="org55e583d"></a>

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


<a id="org26ac9ed"></a>

###### decimal / hex (and opposite) conversion?

    # decimal to hex
    echo "obase=16; 34" | bc
    # hex to decimal
     echo $((0xa))
     # 10


<a id="orgbe0339b"></a>

###### redirect output in variable?

"must read" about the differents techniques of redirection: <http://stackoverflow.com/questions/13763942/bash-why-piping-input-to-read-only-works-when-fed-into-while-read-const>


<a id="orgea8ad98"></a>

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


<a id="orgcd49957"></a>

###### loop over args?

    for var in "$@"
    do
      echo "$var"
    done

<http://stackoverflow.com/questions/255898/how-to-iterate-over-arguments-in-a-bash-script>


<a id="orgb270e7d"></a>

###### parse a string as args

    How to process the following list of pairs: "Mercury 36" "Venus 67" "Earth 93"  "Mars 142" "Jupiter 483"?
    (note no =IFS= set)
    #+begin_src bash
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


<a id="org5ceb083"></a>

###### How to save a script params (before doing modifications like shift, ..)?

    # save with
    original_params=("$@")
    # use the copy with
    echo "${original_params[@]}"


<a id="org2a2a9ff"></a>

###### generate uuid?

    cat /proc/sys/kernel/random/uuid
    #> aa6bc854-9eab-43cd-986d-d2318bf4a845


<a id="org0f13adf"></a>

###### List all possible commands (including functions)?

    # also works for zsh
    compgen -c


<a id="org655f735"></a>

##### Programming


<a id="orga4531ef"></a>

###### Misc

-   bash pointer variables?

-   Var substution cheatsheet?

    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <thead>
    <tr>
    <th scope="col" class="org-left">:what:</th>
    <th scope="col" class="org-left">:example input:</th>
    <th scope="col" class="org-left">:example output:</th>
    <th scope="col" class="org-left">:cmd:</th>
    </tr>
    </thead>
    <tbody>
    <tr>
    <td class="org-left">basename</td>
    <td class="org-left"><code>s=/the/path/foo.txt</code></td>
    <td class="org-left"><code>foo.txt</code></td>
    <td class="org-left"><code>echo "${s##*/}"</code></td>
    </tr>
    
    <tr>
    <td class="org-left">filename without extension</td>
    <td class="org-left"><code>s=/the/path/foo.txt</code></td>
    <td class="org-left"><code>/the/path/foo</code></td>
    <td class="org-left"><code>echo "${s%.*}"</code></td>
    </tr>
    </tbody>
    </table>


<a id="orge5df36f"></a>

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


<a id="org78250ab"></a>

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
    
    -   bash arrays cheat sheet?
    
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
        <td class="org-left">get the last arg</td>
        <td class="org-left"><code>"${!#}"</code></td>
        <td class="org-left"><code>last_arg="${!#}"</code></td>
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


<a id="org54a02d1"></a>

##### Bash options


<a id="org9187cde"></a>

###### How to get the values of errexit etc (set by set -e &#x2026;)?

    set -o
    #> allexport       off
    #> braceexpand     on
    #> emacs           on
    #> errexit         off
    #> errtrace        off


<a id="org98bfc38"></a>

###### option so bash export all declared variables?

    a=1
    bash -c 'echo "a=$a"'
    set -a
    a=1
    bash -c 'echo "a=$a"'
    #> a=
    #> a=1


<a id="orgcb3ac4a"></a>

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


<a id="orgf384433"></a>

###### Bash config files

-   Order of loading of bash init files?

    -   See diagram: <https://blog.flowblok.id.au/2013-02/shell-startup-scripts.html>
    -   graphviz code repo: `hg clone https://bitbucket.org/flowblok/shell-startup`
    
    ![img](./img/shell-startup.png)


<a id="org65c990a"></a>

##### Files and Redirections


<a id="orgcc5c659"></a>

###### Stdin/out/err

-   redirect file to stdin on the left side?

    see: <http://www.tldp.org/LDP/abs/html/io-redirection.html>
    
        < input-file command > output-file
        # non standard

-   redirecting stdout, stderr

    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <thead>
    <tr>
    <th scope="col" class="org-left">redirect from</th>
    <th scope="col" class="org-left">to</th>
    <th scope="col" class="org-left">cmd</th>
    <th scope="col" class="org-left">notes</th>
    </tr>
    </thead>
    <tbody>
    <tr>
    <td class="org-left">out</td>
    <td class="org-left">err</td>
    <td class="org-left">ls 1&gt;&amp;2</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">out &amp; err</td>
    <td class="org-left">file</td>
    <td class="org-left">ls &amp;&gt;   file</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">ls &gt;    file 2&gt;&amp;1</td>
    <td class="org-left">for older bash</td>
    </tr>
    
    <tr>
    <td class="org-left">err</td>
    <td class="org-left">out</td>
    <td class="org-left">ls 2&gt;&amp;1</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">err &amp; out</td>
    <td class="org-left">pipe</td>
    <td class="org-left">ls 2&gt;&amp;1</td>
    <td class="org-left">grep '.*'</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    <tr>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">&#xa0;</td>
    <td class="org-left">ls</td>
    <td class="org-left">&amp; grep '.*'</td>
    <td class="org-left">equiv</td>
    </tr>
    
    <tr>
    <td class="org-left">err</td>
    <td class="org-left">proc</td>
    <td class="org-left">ls 2&gt; &gt;(grep foo)  '</td>
    <td class="org-left">equiv</td>
    </tr>
    </tbody>
    </table>

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


<a id="org94d093f"></a>

###### Tmp files

-   "delete while still open" trick to be sure a file will be deleted?

    from: <https://unix.stackexchange.com/questions/181937/how-create-a-temporary-file-in-shell-script>
    
        tmpfile=$(mktemp /tmp/abc-script.XXXXXX)
        exec 3>"$tmpfile"
        rm "$tmpfile"
        : ...
        echo foo >&3


<a id="orgfaaeb60"></a>

##### Env


<a id="org77327b1"></a>

###### how to run a command with the env cleared?

    env -i bash -c env
    #>        -i, --ignore-environment
    #>        start with an empty environment


<a id="org1235a43"></a>

###### export bash function?

    f() { echo "I'm f!" ; }
    export -f f
    bash -c f
    #> I'm f!


<a id="orgafc1955"></a>

###### Replace all env var by values in file?

    envsubst


<a id="org59addbc"></a>

###### how to make bash source a file before running a command?

Use the `BASH_ENV` to tell bash to source a file:

    touch .bashrc
    echo foo=bar >> .bashrc
    bash -c 'echo $foo'
    #>
    BASH_ENV=.bashrc bash -c 'echo $foo'
    #> bar


<a id="orgca3c005"></a>

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


<a id="org20a1df4"></a>

##### Debugging


<a id="org4f35919"></a>

###### how to make a bash script stop and print current line before running it?

Add to your script:

    trap '(read -p "[$BASH_SOURCE:$LINENO] $BASH_COMMAND?")' DEBUG

From: <https://translate.google.co.uk/translate?hl=fr&sl=en&tl=fr&u=http%3A%2F%2Fwww.softpanorama.org%2FScripting%2FShellorama%2Fbash_debugging.shtml&anno=2>


<a id="org4863558"></a>

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


<a id="org49dfbe9"></a>

#### Zsh


<a id="orgd1f9bf9"></a>

#### Linters


<a id="org7470cb8"></a>

##### Shellcheck


<a id="org3d22342"></a>

###### How to ignore an shellcheck error with a comment in a a script?

    # shellcheck disable=SCXXXX


<a id="org59d2a94"></a>

### Editors


<a id="org4f5aef4"></a>

#### Emacs


<a id="orga8bbf64"></a>

##### file type indicator header for emacs?

    -*- mode: outline -*-


<a id="orgd4dc5f6"></a>

##### edit a file remotely over ssh with tramp?

    C-x C-f
    /<user>@<host>:<file>


<a id="org8be5a2f"></a>

##### Spacemacs


<a id="org829d844"></a>

###### Troubleshoot

-   org-mode not working after a fresh install of spacemacs + practicalli config?

    -   Remove any org mode in `$HOME/.emacs.d/elpa`
    -   Restart emacs it should work


<a id="orgf317f32"></a>

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


<a id="org7cd22f4"></a>

###### Install

-   "No public key for 066DAFCB81E42C40" ?

        gpg --homedir ~/.emacs.d/elpa/gnupg --receive-keys 066DAFCB81E42C40


<a id="org58b162a"></a>

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


<a id="orgfe35a8a"></a>

###### run a command and get the output in the current buffer?

-   Emacs

    `C-u M-! <shell-command>`

-   fix error when installing spacemacs: "No such file or directory, evil"?

    May be a simply missing gpg elpa key:
    
        gpg --homedir ~/.emacs.d/elpa/gnupg --receive-keys 066DAFCB81E42C40

-   Spacemacs (evil mode)

    `SPC u SPC ! <shell-command>`


<a id="orgcabdc08"></a>

###### Universal argument in spacemacs (evil mode)?

instead of the traditional `C-u`
`SPC u`


<a id="orge7fde52"></a>

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


<a id="org6637168"></a>

###### SearchAndReplace

-   How to search and replace starting at the cursor position?

        :.,$s/\vBEFORE/AFTER/gc


<a id="org339ed7d"></a>

###### Folding

-   a promising mode?

    -   hint: `spacemacs/fold-transient-state/evil-close-fold`


<a id="org22c5c42"></a>

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


<a id="orgaedbb6b"></a>

###### twbs export html

Controlling html output?

    #+OPTIONS: num:5 whn:2 toc:4 H:6
    And to set these via your publish configuration using the org-publish-project-alist, the options would be :section-numbers, :headline-levels and :with-toc.
    
    The above options are described in the export settings section of the orgmode manual. This component introduces a new setting whn for per document, and :with-headline-numbers for publish config, which controls the display of section numbers. To disable, set to nil, to enable, set to t, and to control depth of display, use a whole number.

from: <https://github.com/marsmining/ox-twbs>


<a id="org9fb087a"></a>

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


<a id="orgf4a171e"></a>

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
    
            #+BEGIN_SRC bash
            f() { echo "I'm f!" ; }
            export -f f
            bash -c f
            #+END_SRC
    
    -   stop emacs
    
    -   remove the folder `~/.emacs.d/elpa/org-plus-contrib-*`
    
    -   start emacs
    
    -   try to eval with `C-c C-c`


<a id="org028e30e"></a>

###### Spacemace: disable mouse under termux ?

-   in your `defun dotspacemacs/user-config ()` :
-   add `(xterm-mouse-mode 0)`


<a id="org82d0f9a"></a>

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


<a id="org7640703"></a>

##### Org-Mode


<a id="org992ca07"></a>

###### Tables

-   example of org-mode table with columns merged vertically ?

    <!-- This HTML table template is generated by emacs 28.2 -->
    <table border="1">
      <tr>
        <td align="left" valign="top">
          &nbsp;Header1&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;Header2&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;Header3&nbsp;
        </td>
      </tr>
      <tr>
        <td rowspan="2" align="left" valign="top">
          &nbsp;Merged&nbsp;&nbsp;<br />
          &nbsp;text&nbsp;&nbsp;&nbsp;&nbsp;<br />
          &nbsp;here&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;Text1&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;Text2&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;Text3&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;Text4&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
    </table>


<a id="org6d3b3d8"></a>

###### key binding to insert a code block?

-   Type:

`<s>`

-   Then complete (eg: `M-/`)


<a id="org0ced4cb"></a>

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


<a id="orgff28bb8"></a>

###### Package managers cheat sheet

<del>-------------</del>------------<del>------------------</del>-------------------<del>---------------</del>-----------------<del>------------------</del>--------------<del>-----------------------</del>------------&#x2013;&#x2014;+-----------&#x2013;&#x2014;|

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
<th scope="col" class="org-left"><b>distrib</b></th>
<th scope="col" class="org-left">pkg mgrt</th>
<th scope="col" class="org-left">without sudo</th>
<th scope="col" class="org-left"><b>install</b></th>
<th scope="col" class="org-left"><b>install</b></th>
<th scope="col" class="org-left"><b>list</b></th>
<th scope="col" class="org-left"><b>list</b></th>
<th scope="col" class="org-left"><b>list</b></th>
<th scope="col" class="org-left"><b>list</b></th>
<th scope="col" class="org-left"><b>rm</b></th>
<th scope="col" class="org-left"><b>update</b></th>
</tr>

<tr>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">version</th>
<th scope="col" class="org-left">installed</th>
<th scope="col" class="org-left">all</th>
<th scope="col" class="org-left">files</th>
<th scope="col" class="org-left">avail</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">pkgs</th>
</tr>

<tr>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">all</th>
<th scope="col" class="org-left">installed</th>
<th scope="col" class="org-left">of pkg</th>
<th scope="col" class="org-left">vers</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">list</th>
</tr>

<tr>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">w version</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">of pkg</th>
<th scope="col" class="org-left">&#xa0;</th>
<th scope="col" class="org-left">&#xa0;</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left"><code>alpine</code></td>
<td class="org-left"><code>apk</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>add</code></td>
<td class="org-left"><code>add \=&lt;pkg&gt;</code></td>
<td class="org-left"><code>info</code></td>
<td class="org-left"><code>apk info     \</code></td>
<td class="org-left"><code>apk -L $p</code></td>
<td class="org-left"><code>apk \</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>&lt;pkg&gt;=&lt;ver&gt;</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>&lt;pipe&gt; xargs \</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>info &lt;pkg&gt;</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>apk info</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
<tbody>
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
</tbody>
<tbody>
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
</tbody>
<tbody>
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
</tbody>
<tbody>
<tr>
<td class="org-left"><code>debian</code></td>
<td class="org-left"><code>aptitude</code></td>
<td class="org-left"><code>?</code></td>
<td class="org-left"><code>install</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>dpkg -l</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>dpkg -L $p</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>purge</code></td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
<tbody>
<tr>
<td class="org-left"><code>debian</code></td>
<td class="org-left"><code>apt</code></td>
<td class="org-left"><code>?</code></td>
<td class="org-left"><code>install</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>dpkg -l</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>apt-cache \</code></td>
<td class="org-left"><code>apt purge</code></td>
<td class="org-left"><code>apt update</code></td>
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
<td class="org-left"><code>policy \</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
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
<td class="org-left"><code>$pkg</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
<tbody>
<tr>
<td class="org-left"><code>rhel</code></td>
<td class="org-left"><code>yum</code></td>
<td class="org-left"><code>?</code></td>
<td class="org-left"><code>install</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>rpm -qa</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>yum \</code></td>
<td class="org-left"><code>?</code></td>
<td class="org-left"><code>yum \</code></td>
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
<td class="org-left"><code>--show duplicates \</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>check-update</code></td>
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
<td class="org-left"><code>list $pkg</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
<tbody>
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
</tbody>
<tbody>
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
</tbody>
<tbody>
<tr>
<td class="org-left"><code>nix=</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>nix-env -i \</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>nix-env \</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>nix-env \</code></td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>-v "${pkg}"</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>-qa \</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>--uninstall \</code></td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>--description</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>"$pkg"</code></td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
<tbody>
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
<td class="org-left"><code>remove</code></td>
<td class="org-left"><code>ref=</code></td>
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
<td class="org-left">or <code>rm</code></td>
<td class="org-left">or</td>
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
<td class="org-left"><code>refresh</code></td>
</tr>
</tbody>
</table>

-   find which package manager is used on this machine?

        #!/usr/bin/env bash
        while read p; do $p --version &> /dev/null && echo $p ; done <<< $'yum\napt\napk'

-   apk

    -   equivalent of apt-file search?


<a id="org52223b5"></a>

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
            
            Note: After an tmux you may need to upgrade plugins too [see upgrading](#org2b4f4ba).
        
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
    
        -   Deletion
        
            -   how to securely overwrite a file for harder recovery?
            
                **Warning** Files may still be recovrable in some situations (ssd wear leveling,
                journaling file system etc). It's best to use full disk encryption from the start
                
                    # option1: shred
                    ## overwrite the file 3 times (default)
                    ## -z add a final 0 pass to hide shredding
                    shred -z $file
                    # remove file
                    rm $file
                    
                    # option2: dd
                    dd if=/dev/urandom of=file bs=1M status=progress
                    ## second pass zeroing
                    dd if=/dev/zero of=file bs=1M status=progress
                    # remove file
                    rm $file
        
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
    
    -   Cron
    
        -   cron cheatsheet
        
            <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
            
            
            <colgroup>
            <col  class="org-left" />
            
            <col  class="org-left" />
            
            <col  class="org-left" />
            
            <col  class="org-left" />
            </colgroup>
            <thead>
            <tr>
            <th scope="col" class="org-left">how to</th>
            <th scope="col" class="org-left">Cron</th>
            <th scope="col" class="org-left">Jenkins</th>
            <th scope="col" class="org-left">Jenkins note</th>
            </tr>
            </thead>
            <tbody>
            <tr>
            <td class="org-left">At midnight approx</td>
            <td class="org-left">&#xa0;</td>
            <td class="org-left">@Midnight</td>
            <td class="org-left">To spread the load</td>
            </tr>
            
            <tr>
            <td class="org-left">Run a cron job every 2 hours between midnight and 7h AM ?</td>
            <td class="org-left">0 1,3,5,7 * * *</td>
            <td class="org-left">H 1,3,5,7 * * *</td>
            <td class="org-left">To spread the load</td>
            </tr>
            </tbody>
            </table>
            
            TODO : complete cheatsheet

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
        
        -   half res of a video ?
        
            From copilot terminal (!)
            
                ffmpeg -i input.mp4 -vf scale=iw/2:-1 output.mp4

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
                
                -   umount: [how to umount a mounted sshfs?](#orgb45fd01)
            
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
        
            -   Add a custom ca cert cheatcheet
            
                <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
                
                
                <colgroup>
                <col  class="org-left" />
                
                <col  class="org-right" />
                
                <col  class="org-left" />
                </colgroup>
                <thead>
                <tr>
                <th scope="col" class="org-left">distrib</th>
                <th scope="col" class="org-right">version</th>
                <th scope="col" class="org-left">cmd</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                <td class="org-left">alpine</td>
                <td class="org-right">3.20.3</td>
                <td class="org-left"><code>COPY my-cert.pem /usr/local/share/ca-certificates/my-cert.crt</code></td>
                </tr>
                
                <tr>
                <td class="org-left">&#xa0;</td>
                <td class="org-right">&#xa0;</td>
                <td class="org-left"><code>RUN cat /usr/local/share/ca-certificates/my-cert.crt &gt;&gt; /etc/ssl/certs/ca-certificates.crt &amp;&amp; apk --no-cache add curl</code></td>
                </tr>
                </tbody>
                <tbody>
                <tr>
                <td class="org-left">debian</td>
                <td class="org-right">bookworm</td>
                <td class="org-left"><code>cp cert.crt /usr/local/share/ca-certificates/ &amp;&amp; update-ca-certificates</code></td>
                </tr>
                </tbody>
                </table>
            
            -   ssl cheatcheat
            
                <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
                
                
                <colgroup>
                <col  class="org-left" />
                
                <col  class="org-left" />
                </colgroup>
                <thead>
                <tr>
                <th scope="col" class="org-left">what</th>
                <th scope="col" class="org-left">cmd</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                <td class="org-left">Convert a pem cert to crt</td>
                <td class="org-left">&#xa0;</td>
                </tr>
                
                <tr>
                <td class="org-left">Extract a pub key from a certificate</td>
                <td class="org-left"><code>openssl x509 -in certificate.pem -pubkey -noout &gt; public_key.pem</code></td>
                </tr>
                
                <tr>
                <td class="org-left">&#xa0;</td>
                <td class="org-left">&#xa0;</td>
                </tr>
                </tbody>
                </table>
            
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


<a id="org9b5c631"></a>

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


<a id="org434aaf3"></a>

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


<a id="org3ca5427"></a>

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


<a id="org6c97889"></a>

###### Io

-   Disk

    -   Live disk increase
    
        -   Make the kernel aware of a new disk ?
        
                lsblk
                
                find /sys/class/scsi_host/ -mindepth 1 \
                | jq -Rr '"\(.)/scan" | "echo \"- - -\" > \(@sh)"' \
                | bash -xv
                
                lsblk
                # this should be different
        
        -   Make the kernel aware of disk having its size changed?
        
                lsblk
                
                ls /sys/class/scsi_device/                                               \
                | xargs -i -n1 echo 'echo 1 > /sys/class/scsi_device/{}/device/rescan' \
                | bash -xveuo pipefail
                
                lsblk
                # this should be different
        
        -   Grow a mounted and used partition live (on a growed disk and the fs on one partition)?
        
            \#+BEGIN<sub>SRC</sub> sh
            
            fdisk -l
            
            lsblk
            
            growpart /dev/sda 1
            
            xfs<sub>growfs</sub> /
            
            df -h
            \#+BEGIN<sub>SRC</sub>
    
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


<a id="org51d1fb6"></a>

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


<a id="orgadf9f24"></a>

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


<a id="orgbdba149"></a>

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


<a id="org66518db"></a>

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


<a id="org86ab671"></a>

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

-   Gzip

    -   Compress with gzip with 0 compression?
    
            # use pigz instead
            pigz -n -0 b.tar
        
        ******\*\*******


<a id="org2b306aa"></a>

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
        
        -   Zfs partial send / receive ?
        
            -   zfs partial send / receive
            
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
            
            -   canceiling a partial receive ?
            
                    zfs receive -A <dataset>
    
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


<a id="org4fe3574"></a>

###### Distribs

-   Alpine

    -   Apk
    
        -   use a http cache for apk ?
        
            -   from: <https://hub.docker.com/r/vektorlab/apk-cache/>
            
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
        
            -   
            
                # add the new key
                apk add -X https://dl-cdn.alpinelinux.org/alpine/v3.14/main -u alpine-keys
    
    -   OpenSsl
    
        -   Add a root cert CA to an alpine?

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


<a id="org36a068d"></a>

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


<a id="org9642c19"></a>

##### Other UNIXes


<a id="org05868d8"></a>

###### Solaris

-   equivalent of linux's `ps aux` ?

    maybee not exaclty equiv, but roughly:
    
        ps -AfL


<a id="orgbb284c8"></a>

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


<a id="orgd2db99e"></a>

##### M$ Windows


<a id="org3ce57c6"></a>

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


<a id="org9acdd41"></a>

###### cmd.exe

-   windows services cheatsheet?

    -   list all
        
            sc queryex type= service state= all
    
    -   list service containing the string "NATION"?
        
            sc queryex type= service state= all | find /i "NATION"


<a id="org3f29a6e"></a>

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


<a id="org787f815"></a>

#### Vim


<a id="orgf65819c"></a>

##### Yaml


<a id="orgcba20ac"></a>

###### Folding yaml in vim?

from: <https://lornajane.net/posts/2018/vim-settings-for-working-with-yaml>
Starting point, put in your `~/.vimrc`:

    " add yaml stuffs
    au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


<a id="orge4dcf7d"></a>

# Virtualization


<a id="org7cef97d"></a>

## Docker


<a id="org5a32804"></a>

### Images


<a id="org5fb72f7"></a>

#### find images on the command line ?

???


<a id="org9ef0bb6"></a>

#### Building


<a id="orgef9337f"></a>

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


<a id="org128f9c0"></a>

#### Tags


<a id="orgb8901f7"></a>

##### Give a name to an image?

    docker tag <srcImgId>   <imgName>
    docker tag 978d85d02b87 firc/foo:1


<a id="orge80a538"></a>

### Containers


<a id="org0a768b1"></a>

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


<a id="org649476c"></a>

### troubleshoot ubuntu network ?

-   ping 8.8.8.8 but no www.google.com ?
-   incomplete response:

    # Find your network's DNS server:
    $ nmcli dev show | grep 'IP4.DNS'
    IP4.DNS[1]:                             10.19.18.25
    
    # Open up /lib/systemd/system/docker.service and add DNS settings to the ExecStart line:
    ExecStart=/usr/bin/docker daemon --dns 8.8.8.8 --dns 10.19.18.25 -H fd://

From: <http://askubuntu.com/questions/475764/docker-io-dns-doesnt-work-its-trying-to-use-8-8-8-8>


<a id="org3770b69"></a>

### Persistence


<a id="org39f5200"></a>

#### repair docker after a disk full?

    service docker stop
    
    thin_check /var/lib/docker/devicemapper/devicemapper/metadata
    
    thin_check --clear-needs-check-flag /var/lib/docker/devicemapper/devicemapper/metadata
    
    service docker start

<http://stackoverflow.com/questions/30719896/docker-dm-task-run-failed-error>


<a id="org7a3d417"></a>

### Dockerfile


<a id="orgb5fb85a"></a>

#### use bashism in Dockerfile?

    # Define bash as the default shell
    SHELL ["bash", "-c"]
    # or:
    SHELL ["bash", "-ueo","pipefail", "-c"]


<a id="orgd710246"></a>

### Docker Compose


<a id="org6578cba"></a>

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


<a id="org7753dd5"></a>

#### pass env var at build time ?

from: <https://docs.docker.com/compose/compose-file/#cachefrom>:

    build:
      context: .
      args:
        buildno: 1
        password: secret


<a id="orgf7065c0"></a>

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


<a id="org0c3addc"></a>

### Network


<a id="org9263dc0"></a>

#### bind host /lib and /bin to the guest to run (eg) wget?

    # on the host
    docker run -v /usr/lib/x86_64-linux-gnu:/usr-lib-host -v /lib/x86_64-linux-gnu/:/lib-host -v /usr/bin/:/bin-host -it ubuntu:16.04 bash
    # on the guest
    export LD_LIBRARY_PATH=/lib-host:/usr-lib-host && export PATH=$PATH:/bin-host
    wget google.com


<a id="org6db41db"></a>

### DockerHub


<a id="org629a2db"></a>

#### How to list all tags of a particular image?

    img=jenkins
    curl "https://registry.hub.docker.com/v1/repositories/${img}/tags"  | jq -c '.[]'
    #> {"layer":"","name":"2.7.3-alpine"}
    #> {"layer":"","name":"2.7.4"}
    #> {"layer":"","name":"2.7.4-alpine"}


<a id="org35e98f8"></a>

### Misc


<a id="org3b82760"></a>

#### use stdin with a container?

    seq 100 | docker run -i syn synesthesia 1


<a id="orga9a9d66"></a>

### Cli


<a id="org70518cd"></a>

#### Formatting


<a id="orgf9f5e61"></a>

##### docker cli command output in json?

    docker history opensuse/portus:2.3.5 --format '{{json . }}'


<a id="org261364a"></a>

### DockerDistribs


<a id="org018598a"></a>

#### RancherOs


<a id="org5dca690"></a>

##### How to switch the default console to ubuntu?

Source: <https://rancher.com/docs/os/v1.2/en/configuration/switching-consoles/>

    # List available consoles
    sudo ros console list
    # Switch to another console
    sudo ros console switch ubuntu


<a id="org6ddd463"></a>

## Vsphere


<a id="orgdc319fd"></a>

### when cloning a win vm, how to avoid a duplicate ip adress?

-   vsphere: clone the vm :
    -   but customize the hardware
    -   disable the network card
-   Open the vmware console to access the machine:
    -   win: setup a new ip adress
-   vsphere: enable "connect" "connect at startup"


<a id="org56ad3ae"></a>

# Crypto


<a id="orgf3b52d8"></a>

## Gpg


<a id="org86c3863"></a>

### How to encrypt symmetric stdin without X (Inappropriate ioctl for device)?

    # Workaround:
    ( export GPG_TTY=$(tty) && tar czv f | gpg --symmetric  > f.gpg )


<a id="orgeef3bdc"></a>

### verify a gpg signed file?

    gpg --verify file.gpg file


<a id="orgd81318b"></a>

### how to dw a gpg public key from ubuntu key server?

    keyId=7C207910
    keyFingerprint='28D3 BED8 51FD F3AB 57FE F93C 2335 87A4 7C20 7910'
    gpg --keyserver keyserver.ubuntu.com --recv $keyId
    gpg --list-keys --with-fingerprint $keyId | tr -s ' ' | grep "${keyFingerprint}"

sometimes behind firewalls:

    gpg --keyid-format long --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x8EF0A9D3F274FCE7


<a id="org5d42478"></a>

# Web Browsers


<a id="org87e9c44"></a>

## Firefox


<a id="orgf954bb7"></a>

### Disable images loading?

go to about:config
firefox<sub>profile.set</sub><sub>preference</sub>('permissions.default.image', 2)


<a id="org6f8c5e6"></a>

## Chrome


<a id="org3f778b8"></a>

### How to keep a Chrome background active (eg: for avoiding sessions timeouts)?


<a id="org72fc351"></a>

#### Possible option1: Use Chrome build-in `ctrl-shift-click`


<a id="org8fba294"></a>

##### STARTED 1) use the buit-in chrome shortcut <code>[0/1]</code>

`ctrl-click` on link open a link in another background.
`ctrl-shift-click` open a link in another tag **and keep it active**.


<a id="org212fc04"></a>

###### STARTED to be verified

It seems to work be needs to be used for a few days to be definitvely validated


<a id="org3584bf7"></a>

#### TODO Possible option2: Use an extension like `Tab Reloader`

<https://chrome.google.com/webstore/detail/tab-reloader-page-auto-re/dejobinhdiimklegodgbmbifijpppopn>


<a id="orgad7e3d7"></a>

##### TODO to check


<a id="orga3f8f4d"></a>

## Chromium


<a id="org5171d8e"></a>

### Run chromium diagnostics?

    chromium --diagnostics


<a id="org93833be"></a>

### Chromium crashes on startup, any hint?

-   Run `chrome --diagnostics`
-   look for the size of $HOME/.config/chromium
-   I had a case of a webworker cache dir huge (4gb), deleting it fix the problem


<a id="org980094f"></a>

# Videos


<a id="orga368b03"></a>

## Youtube


<a id="org6f4c836"></a>

#### How do I send a link to a youtube video specifing the resolution?


<a id="orgea8b9b3"></a>

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


<a id="orgd2e35b1"></a>

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


<a id="org0be0f15"></a>

# Programming


<a id="orgb7c3581"></a>

## JVM ecosystem


<a id="org293f939"></a>

### Groovy


<a id="org6026b35"></a>

#### Misc


<a id="org05695da"></a>

##### Get the Groovy version from within a Groovy script/class?

    println GroovySystem.version


<a id="org24ac476"></a>

#### pipeline oriented programming in groovy like Clojure's threading macro?

    Collection.metaClass.or = { Closure c -> delegate.collect c }
    
    assert(
            [1]
          | {it + 1}
          | {it * 2}) == [4]


<a id="org52dd78d"></a>

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


<a id="orgf7f0fbd"></a>

#### groovy interval ?

    (1..10).each{prinltn it}


<a id="orgc7abb12"></a>

#### get cmd line args?

    println(args)


<a id="org4969920"></a>

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


<a id="orgc5351de"></a>

#### groovy pprint datastructure?

from: <https://gist.github.com/esycat/6410360>

    import static groovy.json.JsonOutput.*
    def config = ['test': 'lalala']
    println prettyPrint(toJson(config))


<a id="org34025ab"></a>

### Java


<a id="org097debf"></a>

#### Create an object with the same behavior than System.out (for testing output)?

    ByteArrayOutputStream os = new ByteArrayOutputStream();
    PrintStream ps = new PrintStream(os);
    ...
    String output = os.toString("UTF8");

<http://stackoverflow.com/questions/1760654/java-printstream-to-string>


<a id="org5ac00c8"></a>

#### timestamp in java ?

         import java.text.SimpleDateFormat;
         SimpleDateFormat sdf sdf = new SimpleDateFormat("yyyyMMdd-HHmmSS");
         String yyyyMMdd = sdf.format(new java.util.Date());
    
    Reference:
    Update: the question by The Elite Gentleman is important. If you start with a String , then you should first parse it to obtain the date object from the above example:
    Date date = new SimpleDateFormat("dd MMM yyyy").parse(dateString);


<a id="org4463e74"></a>

### Gradle


<a id="orgac82b5e"></a>

#### how to create a new project from scratch?

    gradle init --type basic


<a id="org223a79e"></a>

### Maven


<a id="org5615239"></a>

#### simply download a jar with maven?


<a id="orgea79e22"></a>

##### simple

    # Note: -U always update remote releases and snapshot repositoryies
    mvn -U dependency:get -Dartifact=org.springframework:spring-instrument:3.2.3.RELEASE

See: <http://stackoverflow.com/questions/7110114/how-to-simply-download-a-jar-using-maven>


<a id="org928bc30"></a>

##### specifying transitivity and repo

    mvn dependency:get -DremoteRepositories=https://repo.jenkins-ci.org/releases \
      -Dartifact=org.jenkins-ci.plugins:swarm-client:3.4                         \
      -Dtransitive=false


<a id="orge6aa6e9"></a>

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


<a id="org1d5ff00"></a>

#### generate a simple webapp?

    mvn archetype:generate                         \
      -DgroupId=com.mycompany.app                  \
      -DartifactId=my-app                          \
      -DarchetypeArtifactId=maven-archetype-webapp \
      -DinteractiveMode=false


<a id="org89a8ed9"></a>

### Clojure


<a id="org6e9be7e"></a>

#### Dev


<a id="org35980dd"></a>

##### Repl


<a id="org95058ec"></a>

###### Change the alias of a ns in a ns def (Alias <alias> already exists in namespace <ns>,etc)?

If the ns is: `user.ns` and the alias is `alias`:

    (ns-unalias (find-ns 'user.ns) 'alias)


<a id="orgc3e3616"></a>

###### List all ns?

    (all-ns)


<a id="org4eac5f3"></a>

##### Strings


<a id="org02d3eac"></a>

###### ByteArrayInputStream to string?

Use `slurp`:

      (let [s "foo"
           sb (java.io.ByteArrayInputStream. (.getBytes s))
           ]
       (slurp sb))
    #> "foo"


<a id="org3392b15"></a>

###### Convert a string to a regex?

    (re-pattern "a.*b")


<a id="org03f1bda"></a>

##### Protocols


<a id="org6a22aa4"></a>

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


<a id="orgd94d25e"></a>

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


<a id="org6315f1f"></a>

##### Lein


<a id="org10e64a8"></a>

###### Show dependencies tree?

    lein pom
    mvn dependency:tree -Dverbose=true


<a id="org2bf3b96"></a>

###### Connect to an existing nrepl process?

    lein repl :connect localhost:7888


<a id="orgf0dfe3e"></a>

##### Bloody java.time dates


<a id="org2b876bd"></a>

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


<a id="org0f8b27c"></a>

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


<a id="org80791d2"></a>

###### current LocalDateTime?

java.time.LocalDateTime/now


<a id="org1e28fba"></a>

###### convert LocalDateTime to ZonedDateTime utc?

(def ldt (java.time.LocalDateTime/now))
(def zdt (ldt.atZone(java.time.ZoneId/of "UTC")))


<a id="orge604515"></a>

###### date fmt & parse cheatsheet?

-   parse 2023-03-23

        bb -o '(def s "2023-03-23")
          (def fmt (java.text.SimpleDateFormat. "yyyy-MM-dd"))
         (.parse fmt s)
         '


<a id="org88f6216"></a>

##### Misc


<a id="orgb81d103"></a>

###### hex <-> decimal conversion?

Works with any base:

    (Integer/toString 123 16)
     ;;=> "7b"
     (Long/parseLong "7b" 16)
     ;=> 123


<a id="orgdc0104f"></a>

#### Js


<a id="org4d9a1fa"></a>

#### Babashka


<a id="orgb2c9c76"></a>

##### Parse a date in babashka?

    (java.time.LocalDateTime/parse "2019-12-18T16:01:41.485")


<a id="org871e5d7"></a>

#### Processes


<a id="orga94eb71"></a>

##### Process output of a cmd lazily?


<a id="org3ac7d8c"></a>

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


<a id="org3a24b1e"></a>

###### Using babashka process lib

    : ' -*- clojure -*- ' \
    && bb -o '
       (require (quote [babashka.process :as process]))
       (->> (process/process ["bash" "-c" "seq Infinity | pv -qlL1"] )
         :out
         (io/reader)
         line-seq )
           '


<a id="orge7ec4a7"></a>

##### Macros


<a id="orga851853"></a>

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


<a id="org39fe92b"></a>

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


<a id="org6ac1ab2"></a>

###### Ns

-   Alias

    -   How to remove an alias to a ns?
    
                    (let [ns-sym 'fapi.jira.sql.hicosql.explore
                        alias-sym 'jsqlh
            ](-> ns-sym
                       find-ns
                       (ns-unalias  alias-sym)
                       ))


<a id="org71f6d6f"></a>

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


<a id="orgb464793"></a>

###### Destructuring

-   Nested destructuring with map and seq ?

        (def [s {:todo [:a :b]}])
        ;; #>
        (let [{[head & tail] :todo} s]
          [head tail])
        ;; #> [:a :b]


<a id="org2d8c211"></a>

###### Files

-   Read a file line by line?

        (with-open [rdr (clojure.java.io/reader "/etc/passwd")]
          (count (line-seq rdr)))


<a id="orgf9f83db"></a>

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


<a id="orge97d99a"></a>

###### Classpath

-   slurp a resource in the classpath?

        (require '[clojure.java.io :as io])
        (slurp (io/resource "some_project_name/foo.txt"))


<a id="orgf8ffe25"></a>

###### Java interop

-   Get all parents classes of an instance ?


<a id="orga4c3036"></a>

###### Generate uuid

    (str (java.util.UUID/randomUUID))


<a id="org96bb80c"></a>

###### Exceptions

-   try/catch/finally?

        (try (/ 1 0)
          (catch Throwable e (.printStackTrace e))
          (finally (prn :always-run)))


<a id="org1548981"></a>

#### Java interop


<a id="orgfa4258b"></a>

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


<a id="orgc9d2384"></a>

### Web Servers


<a id="org6c2ad52"></a>

#### Tomcat


<a id="orgd38150a"></a>

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


<a id="orgbda39de"></a>

##### tomcat rest api doc ?

<http://tomcat.apache.org/tomcat-7.0-doc/manager-howto.html#List_Currently_Deployed_Applications>


<a id="org94b7032"></a>

## Databases


<a id="org4868c25"></a>

### Sql language


<a id="org9d07713"></a>

#### DateTime


<a id="org57b79bf"></a>

##### Sql: how to select rows where a field date is greater than&#x2026;?

Cast a string to a date type.
Ex in Postgresqldb:

    select * from table
    where
      true
      and created >  ('2019-01-02 09:00:00'::timestamp)


<a id="orga7e9e70"></a>

##### Sql: how to select rows where a field date is in [<date> ; <date> + 1 day]?

    select * from table
    where
      true
      and created >   ('2019-01-02 09:00:00'::timestamp)
      and created <=  ('2019-01-02 09:00:00'::timestamp + '1 day'::interval)


<a id="orgeadc8e5"></a>

#### GroupBy


<a id="orgd559216"></a>

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


<a id="org963925a"></a>

#### Other


<a id="org3786b0b"></a>

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


<a id="orgaac7164"></a>

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


<a id="org6beda3e"></a>

### RDBMS


<a id="orgf6ce95f"></a>

#### PostgreSQL


<a id="orga9bcac0"></a>

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


<a id="org34bf4b4"></a>

#### sqlite


<a id="org1bbe4f9"></a>

##### sqlite3


<a id="org677fc31"></a>

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


<a id="orgd6270ae"></a>

### timeserie db


<a id="orgfc9395d"></a>

#### influxdb


<a id="org8465375"></a>

##### import/export


<a id="org7f7e92f"></a>

###### Dump a measurment?

    docker                        \
        exec -it influx-container \
        influx                    \
           -username  USER        \
           -password admin        \
           -database db           \
           -execute 'select * from $bucket.$retentions.${measurement} where time < now()'


<a id="orgae04807"></a>

###### Copy a measurement from a bucket to another measurement in the same bucket  ?

    from(bucket: "<bucket>")
    |> range(start: 0)
    |> filter(fn: (r) => r._measurement == "<srcMeasurement>")
    |> set(key: "_measurement", value: "<dstMeasurement>j")
    |> to(bucket: "<bucket>")


<a id="org18ba2e1"></a>

##### flux


<a id="org7df283d"></a>

###### flux query example?

    from(bucket: "telegraf")
      |> range(start: -12h)
      |> filter(fn: (r) => r._measurement == "system" and r._field  =~ /load(1|5|15)$/ )
      |> aggregateWindow(every: 10s, fn: mean)
      |> group(columns: ["_field"], mode: "by")


<a id="org5426ce6"></a>

## Node


<a id="orge8f7ee4"></a>

### Npm


<a id="org6d21d7a"></a>

#### Cli usage


<a id="orgd44d85a"></a>

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


<a id="org91ead81"></a>

##### upgrade npm to latest?

    npm install npm@latest -g


<a id="org3250488"></a>

##### color config in npm?

Starting point:

    npm config set color always


<a id="orgd6a1267"></a>

##### npm list all config keys?

    npm config ls -l

<http://nipstr.com/>


<a id="org43963e5"></a>

##### npm install a module from a git url ?

notes, the repo:

-   must contains a package.json at it's root dir

    npm install 'git+ssh://git@github.com:denlab/denlab-examples.git#repo/npm/npmLib' --save


<a id="org205f47b"></a>

#### Searching


<a id="org22c7186"></a>

##### how to search npm packages (and filter by populariy, &#x2026;)?

<http://nipstr.com>


<a id="orgbced188"></a>

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


<a id="orga5ec6e7"></a>

## Regex


<a id="orgdc1d941"></a>

### General


<a id="orgd0bbb47"></a>

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


<a id="org084acd1"></a>

### Sed


<a id="orgf9a62b3"></a>

#### use a backreference without grouping?

    echo bar | sed 's/.*/=> & <=/'
    # => bar <=


<a id="orgbdaa9c6"></a>

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


<a id="orgd2e9209"></a>

#### join lines of a files two by two?

    seq 10  | sed 'N;s/\n/ /'
    1 2
    3 4
    5 6
    7 8
    9 10


<a id="org4a14b1e"></a>

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


<a id="orgbcbdde1"></a>

#### output lines from regex to N line after it?

    seq 1 100 \
    | sed -rn '/40/,+3 p'
    #> 40
    #> 41
    #> 42
    #> 43


<a id="org7b59804"></a>

### Perl


<a id="org1ca0392"></a>

#### Multiline search and replace?

    perl -pe 's/<search>/<replace>/'  < in.file > out.file


<a id="org9fa7bd2"></a>

## Python


<a id="orgcd6c95a"></a>

### Pip


<a id="org41a022d"></a>

#### How to install pip for python 3 ?

-   install:
    on ubuntu/debian:
    
        aptitude install python3-pip
-   invoke:
    
        pip3 <cmd>


<a id="org30a4829"></a>

#### How to install pip for python 2 ?

    sudo apt update
    curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
    sudo python2 get-pip.py


<a id="orgaa447a0"></a>

#### pip completion on the command line?

    pip completion --bash >> ~/.profile

or

    eval "`pip completion --zsh`"

from: <https://pip.pypa.io/en/stable/user_guide/?highlight=completion%20#command-completion>


<a id="orgfcdc08a"></a>

#### avoid pip warning when pip list in a script?

         cat >> ~/.pip/pip.conf <<EOF
    [list]
    format=columns
    EOF


<a id="orgba75f5e"></a>

### Json


<a id="org07eefe6"></a>

#### Parse a json string?

        python <<- EOF
    import json
    j = json.loads('{"one" : "1", "two" : "2", "three" : "3"}')
    
    #print j['two']
    EOF


<a id="org5cb3e6f"></a>

### read from stdin?

       #!/usr/bin/env python
    import fileinput
    
    for line in fileinput.input():
      print line, # comma to avoid double printing newline


<a id="org10c3750"></a>

## GnuMake


<a id="org0fb7062"></a>

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


<a id="orgc0fdb7f"></a>

### GnuMake language


<a id="org8bb014f"></a>

#### print newline?

`Makefile`:

        define \n
    
    
    endef
    
    $(info - newline: ${\n} has been inserted)


<a id="org1668e14"></a>

#### print all variables?

`Makefile`:

    info:
       @echo "V=$(foreach v, $(.VARIABLES), $(v):$($(v)))" | tr ' ' '\n' | jq -R '.' | jq -Ss '[ .[] | select(length > 0)  | [splits(":")]  | {key: .[0], value: .[1]}] | .[] | .key + ":" + .value' | jq -r '.' | column


<a id="org2587538"></a>

### print all targets?

    make -Rrnp  | egrep -v '^#|:= | = ' | grep ':'

or

    @grep '^[^#[:space:]].*:' Makefile

or

    make -prRn | egrep -v $'(^(#|\t)|=)' | egrep ':' 2> /dev/null | cut -d: -f1 | sort


<a id="org247667f"></a>

### how do I fail the build if an env var is not defined for a particular target?

    check-env:
    ifndef cmd
      $(error cmd is undefined)
    endif


<a id="orgc0baaa2"></a>

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


<a id="org842674c"></a>

### selfDoc


<a id="org14b3edc"></a>

#### how to extract all targets from a Makefile without a make command ?

<del>BEGIN<sub>SRC</sub> bash
 egrep '^[^. :]</del>:' < proxy | sed -r -e 's/.\*/  - &/' -e 's/://g']
+END<sub>SRC</sub>


<a id="org60cde21"></a>

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


<a id="org53d7d71"></a>

## Git


<a id="orgb6b24ef"></a>

### Submodules


<a id="orgd00f3c5"></a>

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


<a id="orgc419dfd"></a>

#### submodule: track latest?

         # add submodule to track master branch
    git submodule add -b master [URL to Git repo];
    
    # update your submodule
    git submodule update --remote


<a id="org07d8b23"></a>

#### how to deregister a submodule?

Something that has worked for me:

    moduleToRemove=modules/toRm
    git rm -f $moduleToRemove
    rm -rf .git/modules/$moduleToRemove
    git clean -fd
    git reset --hard


<a id="org6cd2115"></a>

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
<th scope="col" class="org-left">:what:</th>
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
<td class="org-left"><code>git branch -m $oldName $newName &amp;&amp; \</code></td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>git push origin :$oldName \</code></td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>&amp;&amp; git push --set-upstream origin $newName</code></td>
</tr>
</tbody>
</table>


<a id="org9cb7f1b"></a>

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


<a id="org931b6d9"></a>

### list branch sorted by last commit date?

    git for-each-ref --sort=-committerdate refs/heads/


<a id="org197faa6"></a>

### grep history?

    set -- '<regex>'
    git grep "$@" $(git rev-list --all)


<a id="org600b843"></a>

### essential git config?

       git config --global color.ui true                \
    && git config --global user.email "you@example.com" \
    && git config --global user.name "Your Name"


<a id="org4464d0e"></a>

### config for colors?

    git config --global color.ui true


<a id="org8bbb669"></a>

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


<a id="org58d6c4b"></a>

### git & ssh


<a id="orgebfdfec"></a>

#### view ssh details?


<a id="org165827a"></a>

##### git v2.3.0 or higher:

    GIT_SSH_COMMAND="ssh -vvv" git clone example


<a id="orgcb6676a"></a>

#### how to specify the ssh key used by git?

from: <https://stackoverflow.com/questions/4565700/specify-private-ssh-key-to-use-when-executing-shell-command-with-or-without-ruby>

    ssh-agent bash -c 'ssh-add /somewhere/yourkey; git clone git@github.com:user/project.git'


<a id="org8cd3662"></a>

### Diffing


<a id="org43b3f2f"></a>

#### show only the filnames that changed

    git diff --stat --names-only HEAD^^..HEAD^


<a id="orgda23abf"></a>

### Syntax


<a id="org750c5aa"></a>

#### Reference Nthieme commit from HEAD?

    git checkout HEAD@{30}


<a id="org365c6f4"></a>

### Colors


<a id="org0369ef3"></a>

#### git colors=always?

    git -c color.status=always status


<a id="orga3d2683"></a>

### hacks


<a id="orgea30c5f"></a>

#### how to git diff even if the repo do not have an empty init commit?

Use the magic sha1: 4b825dc642cb6eb9a060e54bf8d69288fbee4904
Event if only one commit in a repo (without a base empty commmit),

    git diff 4b825d..HEAD
    #> will return the correct diff


<a id="orgf9d460c"></a>

## Jq


<a id="org61d07dc"></a>

### Finding


<a id="orgbd9469a"></a>

#### recursively find a value by key?

    echo '[{"a": 1}, {"b": 2}]' | jq '.. | .a? // empty'
    #=> 1


<a id="org8de4f3c"></a>

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


<a id="org986ad96"></a>

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


<a id="org81190d8"></a>

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


<a id="orgcc2d910"></a>

#### get all the values of an object?

    jq -n '{"a": 1} | .[]'
    #=> 1


<a id="orgd3106e0"></a>

#### does this array contains this element?

    # - With contains:
    jq -n '[4,3,2,1] | contains([0])' #> false
    jq -n '[4,3,2,1] | contains([2])' #> true
    # - With inside:
    jq -n '[0] | inside([1,2])'       #> false


<a id="orgf2d250c"></a>

### Modifying


<a id="org4a69517"></a>

#### delete the key of an object?

    echo '{"k": 1}' | jq 'del(.k)'


<a id="orgaf0fb59"></a>

#### jq update ?

       jq -n '{foo:1, bar:10} | .foo |= . + 1 '
    #=> {
    #=>   "foo": 2,
    #=>   "bar": 10
    #=> }


<a id="org84a3665"></a>

#### delete in nested datastructure?

    jq -n '{a:1, b:2, c:3} | del(.. | .a?//empty)'


<a id="org52597c5"></a>

#### recursively delete all keys leading to pair numbers?

Note: Probably could be written more concisely:

    jq -n '{a:1, b:2, c:3} \
      | del(.. | numbers | (if (. % 2) == 0 then . else empty end))'


<a id="org65998c3"></a>

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


<a id="orgf95be1c"></a>

### Strings / Regex


<a id="org2b11fc1"></a>

#### jq regexes cheet sheat ?


<a id="org34a9489"></a>

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


<a id="org39c4129"></a>

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


<a id="orgc88daa0"></a>

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


<a id="orgf974c0d"></a>

#### convert string to upper case?

    jq -n '"abCD" | ascii_upcase'
    #=> "ABCD"


<a id="orgdee8007"></a>

#### jq regex replace?

    sub(regex; string)
    jq -n '"foo bar" | sub(" "; "x")'


<a id="org27a7933"></a>

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


<a id="org91b58fe"></a>

#### substring?

         echo foo | jq -R '.[0:1]'
    "f"


<a id="org5996a87"></a>

### Quoting


<a id="org81b6be1"></a>

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


<a id="org5d24fb9"></a>

#### Single Quote


<a id="orgf1e2789"></a>

##### single quote as a integer (to escape it in bash)?

    jq -n '([39] | implode) as $quote | $quote'
    #> "'"


<a id="org1cef0bd"></a>

##### encode a single quote in a string for jq to decode?

    # Encode the char in the string
    echo '"\\u0027"' | jq .
    #> "'"


<a id="orgd0f87bf"></a>

### Interop


<a id="org6097d44"></a>

#### output a array for bash?

    echo '[1,2,3]' | jq '.|@tsv'


<a id="org9e324f8"></a>

### Functional


<a id="orga42fc9a"></a>

#### reduce ?

    echo '[1,2,3]' \
    | jq 'reduce .[] as $item (0; . + $item)'


<a id="org8619b3d"></a>

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


<a id="org9298c0a"></a>

#### Comma in function args


<a id="orge61fa1b"></a>

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


<a id="org7862c3e"></a>

#### clojure's reductions equivalent in jq?

         # ex: infinite fibonacci sequence from an infinite seq of integers:
    seq 0 Infinity                                                                        \
    | jql -cn 'foreach ( inputs , null) as $l ( [1,1] ; [$l, .[0] + $l]?//empty ; .[1])'  \
    | head | xargs


<a id="orgb93a27e"></a>

### Convert


<a id="org64f4769"></a>

#### TODO element to array?


<a id="org0c03437"></a>

#### convert an array to a map?

         echo '["a", "b", "c"]       ' \
         | jq '[{(.[]): null}] | add '
    #=>  {
    #=>   "a": null,
    #=>   "b": null,
    #=>   "c": null
    #=>  }


<a id="orgc16ae32"></a>

### Dates and time


<a id="orgb836597"></a>

#### Get a human readable date of current time?

    jq -n 'now | todate'
    #> "2017-09-12T18:35:01Z"


<a id="orgd58b8a0"></a>

#### Convert Unix epoch time in second to human readable?

    # There may be more direct way..
    jql -n '
      .
      | 1565108215
      | gmtime
      | strftime("%Y-%m-%dT%H:%M:%SZ")
    '
    #> "2019-08-06T16:16:55Z"


<a id="org4f3e1d2"></a>

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


<a id="org61c89b2"></a>

### Other


<a id="orgb1e565a"></a>

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


<a id="org0d7f887"></a>

#### Syntax


<a id="org7917714"></a>

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


<a id="org04d8671"></a>

## Lua


<a id="orgb579591"></a>

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


<a id="org0e331f2"></a>

### Call external command and get stdout and return code?

it seems not straighforward to do.
Seem to have to implement this by adding some way to get the rc from the command :-(


<a id="orgc1ae712"></a>

## Jira


<a id="org5cfaac6"></a>

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


<a id="org4adc516"></a>

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


<a id="org16ca147"></a>

## CheatSheets


<a id="orga582495"></a>

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


<a id="orgabcb473"></a>

## Doc


<a id="org424a7e0"></a>

### Markdown


<a id="org8c4da98"></a>

#### Cheatsheet?


<a id="org27c6790"></a>

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


<a id="orgdd9296f"></a>

#### get values by their path (eg: ["a",1,"b"])?

    jq -n '{a: {b: 1}} | getpath(["a","b"])'
    #> 1


<a id="orgbc2d0e5"></a>

#### Bitbucket flavored markdown


<a id="org2e520b6"></a>

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


<a id="orge0e6a5f"></a>

## CI


<a id="org55e33b0"></a>

### Jenkins


<a id="org9780573"></a>

#### RestApi


<a id="org3320543"></a>

##### Jenkins Rest Api Essentials?

    curl "$JENKINS_HOST/api/json?depth=1&tree=jobs[name,lastBuild[building]]{1,10000}"
    # for all jenkins jobs: get the name and the last build status (building or not)"


<a id="org1ed0ed5"></a>

##### JSON


<a id="org869546e"></a>

###### Get all build result with time of particulatar job?

    j.jsonapi '/job/DevOps/job/maintenance/job/nexus/job/nexus-auto-restart/api/json?tree=builds[*]{1}'


<a id="org7269397"></a>

##### XML


<a id="org6b21196"></a>

#### parallel map in groovy?

    @Grab('org.codehaus.gpars:gpars:1.2.1')
    import static groovyx.gpars.GParsPool.withPool
    withPool{
        println((1..3).collectParallel {it * 2})
    }


<a id="orgde7f5da"></a>

#### dump nested object as json/xml ?


<a id="org923bb24"></a>

##### native but do not handle cycles

    // stackoverflow if cycle
    groovy.json.JsonOutput.toJson(this)
    // cycle handled
    @Grab(group='com.thoughtworks.xstream', module='xstream', version='1.4.11.1')
    import com.thoughtworks.xstream.XStream
    (new XStream()).toXML(this)


<a id="orga01d281"></a>

##### with xstream (handle cycles)

    @Grab(group='com.thoughtworks.xstream', module='xstream', version='1.4.11.1')
    import com.thoughtworks.xstream.XStream
    (new XStream()).toXML(this)


<a id="org5d84e6b"></a>

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


<a id="org8fee4e8"></a>

##### with xstream: json

    @Grab(group='com.thoughtworks.xstream', module='xstream', version='1.4.11.1')
    import com.thoughtworks.xstream.XStream
    import com.thoughtworks.xstream.io.json.*
    println(new XStream(new com.thoughtworks.xstream.io.json.JsonHierarchicalStreamDriver()).toXML(this))


<a id="orgb7106f1"></a>

#### legacy jobs


<a id="orgfbd293f"></a>

##### job-dsl plugin


<a id="orgd7cacbc"></a>

###### Example job-dsl for matrix project?

    matrixJob('a') {
        axes  {text ("x", "a","b") }
        steps {shell('echo x: $x') }
    }


<a id="orgcfa5545"></a>

#### Stop an unstoppable build?

         # with jenkins cli (groovysh or groovy):
    jobName='jobName'
    jobNum=111
    jenkins.model.Jenkins.instance.getItemByFullName(jobName).getBuildByNumber(jobNum).finish(hudson.model.Result.ABORTED,new java.io.IOException("Aborting build")


<a id="org673cdae"></a>

## Visualization


<a id="org6379de9"></a>

### Online visualization of Wikipedia's graph?

-   <http://tools.medialab.sciences-po.fr/seealsology/>
-   <http://seealso.org/>


<a id="org2b9efb9"></a>

### Graphviz's dot language?


<a id="orgaca5047"></a>

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


<a id="orgea53af6"></a>

### Grafana


<a id="org80d6cac"></a>

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


<a id="org6923b69"></a>

## Video editing


<a id="orgdf812c8"></a>

### how to copy part of a video?

    start=00:30:00
    duration=00:00:55
    in=originalfile
    out=newfile
    avconv -ss $start -t $duration -i $in -codec copy $out


<a id="org40507a5"></a>

## Repositories


<a id="org129a583"></a>

### Nexus


<a id="orga95ba1e"></a>

#### V2


<a id="org02af748"></a>

##### self hosted api doc for nexus v2?

$NEXUS<sub>URL</sub>/nexus-restlet1x-plugin/default/docs/index.html


<a id="org21b0502"></a>

### Monitoring


<a id="orgcd11f60"></a>

#### how to connect jconsole to a jvm running in a remote docker container?

-   In the container: Change the start of your java app to include those properties:

    -Dcom.sun.management.jmxremote  \
    -Dcom.sun.management.jmxremote.port=8888 \
    -Dcom.sun.management.jmxremote.rmi.port=8888 \
    -Djava.rmi.server.hostname=$(DOCKER_HOST:?)     \
    -Dcom.sun.management.jmxremote.ssl=false  \
    -Dcom.sun.management.jmxremote.authenticate=false  \

-   on the machine where jconsole is running, start a new connection on `$DOCKER_SERVER:8888`


<a id="org79e1523"></a>

# Special


<a id="orgdd8ceca"></a>

## Unicode(UTF8)


<a id="orga85e849"></a>

### How can I search by name for unicode char on the command line?

-   Could use unipicker: <https://github.com/jeremija/unipicker>
-   Install with:

    nix-env -iA nixpkgs.unipicker


<a id="org42c93cd"></a>

### Handy unicode(utf8) chars?


<a id="org5ad6944"></a>

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


<a id="orgae32ad0"></a>

#### arrows

            0	1	2	3	4	5	6	7	8	9	A	B	C	D	E	F
    U+219x	←	↑	→	↓	↔	↕	↖	↗	↘	↙	↚	↛	↜	↝	↞	↟
    U+21Ax	↠	↡	↢	↣	↤	↥	↦	↧	↨	↩	↪	↫	↬	↭	↮	↯
    U+21Bx	↰	↱	↲	↳	↴	↵	↶	↷	↸	↹	↺	↻	↼	↽	↾	↿
    U+21Cx	⇀	⇁	⇂	⇃	⇄	⇅	⇆	⇇	⇈	⇉	⇊	⇋	⇌	⇍	⇎	⇏
    U+21Dx	⇐	⇑	⇒	⇓	⇔	⇕	⇖	⇗	⇘	⇙	⇚	⇛	⇜	⇝	⇞	⇟
    U+21Ex	⇠	⇡	⇢	⇣	⇤	⇥	⇦	⇧	⇨	⇩	⇪	⇫	⇬	⇭	⇮	⇯
    U+21Fx	⇰	⇱	⇲	⇳	⇴	⇵	⇶	⇷	⇸	⇹	⇺	⇻	⇼	⇽	⇾	⇿


<a id="org6cac455"></a>

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


<a id="orgc91146d"></a>

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


<a id="orga2cee7d"></a>

#### use char by its code ?


<a id="orgaad37d8"></a>

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


<a id="orgbeccb9c"></a>

#### lambda

    λ


<a id="org440fc50"></a>

#### elipsis?

    …


<a id="orgfa0c48d"></a>

#### Checkmarks


<a id="org2353dfe"></a>

##### check / uncheck marks?

    🗹 DONE stuff done
    ☐ TODO stuff todo

-   alternative:
    
        ☑


<a id="orgbd43c5a"></a>

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


<a id="org478447e"></a>

#### colored utf8 chars


<a id="org55e7082"></a>

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


<a id="org65150cf"></a>

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


<a id="org2ed24d3"></a>

##### zodiac

♈♉♊♋♌♍♎♏⛎♐♑♒♓


<a id="orgd2a8a3e"></a>

##### zodiac unambiguous

♈♉♌♎⛎♐♑♒♓


<a id="orgbf5783c"></a>

##### zodiac even more unambiguous

♈♉♌♎⛎♐♒

