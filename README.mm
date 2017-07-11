<map version="0.9.0">

<node COLOR="#000000">
<font NAME="SansSerif" SIZE="20"/>
<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>
</p>
</body>
</html>
</richcontent>
<node COLOR="#0033ff" ID="sec-1" POSITION="right" FOLDED="true">
<font NAME="SansSerif" SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Unixes
</p>
</body>
</html>
</richcontent>
<node COLOR="#00b439" ID="sec-1-1" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Linux
</p>
</body>
</html>
</richcontent>
<node COLOR="#990000" ID="sec-1-1-1" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Packages
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="org6f658ff"></a>Ssh<br /><ol class="org-ol"><li><a id="orga3a38f4"></a>generate public private key pair<br /><div class="org-src-container">
<pre class="src src-sh">ssh-keygen -t rsa -b <span style="color: #96CBFE;">4096</span> -C <span style="color: #61CE3C;">"your_email@example.com"</span>
</pre>
</div></li>

<li><a id="org9d80e43"></a>ssh reverse tunnel ?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">from the target machine:</span>
ssh -R <span style="color: #96CBFE;">2210:localhost:22</span> bserver.outside.com
</pre>
</div>
<p>
from: <a href="https://toic.org/blog/2009/reverse-ssh-port-forwarding/">https://toic.org/blog/2009/reverse-ssh-port-forwarding/</a>
</p></li>

<li><a id="orgad350d9"></a>ssh or scp in a script without entering password ?<br /><div class="org-src-container">
<pre class="src src-sh">expect -c <span style="color: #61CE3C;">"</span>
<span style="color: #61CE3C;">   spawn scp login@somehost.com:/somefile .</span>
<span style="color: #61CE3C;">   expect yes/no { send yes\r ; exp_continue }</span>
<span style="color: #61CE3C;">   expect password: { send password\r }</span>
<span style="color: #61CE3C;">   expect 100%</span>
<span style="color: #61CE3C;">   exit</span>
<span style="color: #61CE3C;">"</span>
</pre>
</div></li>

<li><a id="org4d9c02e"></a>ssh without password or key?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">remove password for user</span>
passwd -d user
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">sshd: allow empty password</span>
sed -r <span style="color: #61CE3C;">'s/#(PermitEmptyPasswords) no/\1 yes/'</span> -i.bak /etc/ssh/sshd_config
</pre>
</div></li>

<li><a id="org3fd648d"></a>get public key from private key ?<br /><div class="org-src-container">
<pre class="src src-sh">ssh-keygen -y -f ~/.ssh/id_rsa
</pre>
</div></li>

<li><a id="org46463ef"></a>Disable host verification?<br /><div class="org-src-container">
<pre class="src src-sh">ssh -o <span style="color: #ff69b4;">UserKnownHostsFile</span>=/dev/null -o <span style="color: #ff69b4;">StrictHostKeyChecking</span>=no peter@<span style="color: #96CBFE;">192.168.0.100</span>
</pre>
</div>
<p>
<a href="http://linuxcommando.blogspot.co.uk/2008/10/how-to-disable-ssh-host-key-checking.html">http://linuxcommando.blogspot.co.uk/2008/10/how-to-disable-ssh-host-key-checking.html</a>
</p></li>
<li><a id="org24024a2"></a>how to mount remote fs with sshfs?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">usage</span>
sshfs USERNAME@HOSTNAME_OR_IP:/REMOTE_PATH LOCAL_MOUNT_POINT SSH_OPTIONS
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">example</span>
sshfs sessy@mycomputer:/remote/path /local/path -C -p <span style="color: #96CBFE;">9876</span> -o allow_other
</pre>
</div>
<p>
<a href="https://wiki.archlinux.org/index.php/SSHFS">https://wiki.archlinux.org/index.php/SSHFS</a>
</p></li>
<li><a id="org31f1e3a"></a>copy pub key to remote authorized<sub>keys</sub>?<br /><div class="org-src-container">
<pre class="src src-sh">ssh-copy-id &lt;user&gt;@&lt;host&gt;

</pre>
</div></li></ol></li>

<li><a id="org2ad7629"></a>Tmux<br /><ol class="org-ol"><li><a id="orgf62aacf"></a>how do i detach other client when reattach to session?<br /><div class="org-src-container">
<pre class="src src-sh">tmux -2 a -dt <span style="color: #96CBFE;">0</span>
</pre>
</div></li>

<li><a id="org9f10973"></a>compress dir recursive?<br /><div class="org-src-container">
<pre class="src src-sh">zip -r archive.zip /dir
</pre>
</div></li>
<li><a id="orgd69514e"></a>compress dir but exclude a directory ?<br /><div class="org-src-container">
<pre class="src src-sh">zip -9 -r --exclude=*.svn*  foo.zip <span style="color: #8b0000;">[</span>directory-to-compress<span style="color: #8b0000;">]</span>
</pre>
</div></li></ol></li>

<li><a id="org2626640"></a>Find<br /><ol class="org-ol"><li><a id="orgb22d020"></a>find files modified in the last x minutes<br /><div class="org-src-container">
<pre class="src src-sh">find . -cmin -5
</pre>
</div></li>
<li><a id="orgd81faa0"></a>find files modified in the last x days<br /><div class="org-src-container">
<pre class="src src-sh">find . -ctime -5
</pre>
</div></li>
<li><a id="org2f851c4"></a>handle filenames with spaces ?<br /><div class="org-src-container">
<pre class="src src-sh">find . -maxdepth <span style="color: #96CBFE;">1</span> -print0 | <span style="color: #4c83ff;">while </span><span style="color: #4c83ff;">read</span> -d $<span style="color: #61CE3C;">'\0'</span> d ; <span style="color: #4c83ff;">do </span><span style="color: #4c83ff;">echo</span> $<span style="color: #ff69b4;">d</span> ; <span style="color: #4c83ff;">done</span>
</pre>
</div>
<p>
<a href="http://www.cyberciti.biz/tips/handling-filenames-with-spaces-in-bash.html">http://www.cyberciti.biz/tips/handling-filenames-with-spaces-in-bash.html</a>
</p></li>
<li><a id="org3e14a7d"></a>sort files by modified date?<br /><div class="org-src-container">
<pre class="src src-sh">find -type f -printf <span style="color: #61CE3C;">'%T@ %p\0'</span> |
sort -zk <span style="color: #96CBFE;">1nr</span> |
sed -z <span style="color: #61CE3C;">'s/^[^ ]* //'</span> | tr <span style="color: #61CE3C;">'\0'</span> <span style="color: #61CE3C;">'\n'</span>
</pre>
</div></li>
<li><a id="org962155f"></a>find files bigger than x MBytes?<br /><div class="org-src-container">
<pre class="src src-sh">find . -size +500M -exec l <span style="color: #8b0000;">{}</span> <span style="color: #61CE3C;">\;</span>
</pre>
</div></li></ol></li>
<li><a id="org22490ea"></a>Xargs<br /><ol class="org-ol"><li><a id="org941eedf"></a>run a cmd on each line of stdin with xargs?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">echo</span> <span style="color: #61CE3C;">'a</span>
<span style="color: #61CE3C;">b</span>
<span style="color: #61CE3C;">c'</span> | xargs -I <span style="color: #8b0000;">{}</span> ./f <span style="color: #8b0000;">{}</span>
</pre>
</div></li>
<li><a id="org2e8083e"></a>use bash function?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #ff1493;">f</span><span style="color: #8b0000;">()</span> <span style="color: #8b0000;">{</span> bc; <span style="color: #8b0000;">}</span>
<span style="color: #4c83ff;">echo</span> <span style="color: #61CE3C;">'1 * 1</span>
<span style="color: #61CE3C;">2 * 2</span>
<span style="color: #61CE3C;">3 * 3'</span>                                            <span style="color: #61CE3C;">\</span>
| xargs -i echo <span style="color: #61CE3C;">"$(declare -f f) ; echo '{}' | f"</span> <span style="color: #61CE3C;">\</span>
| bash
</pre>
</div></li></ol></li>
<li><a id="org66eac69"></a>Nohup<br /><ol class="org-ol"><li><a id="orgcfbfcf9"></a>run nohup?<br /><div class="org-src-container">
<pre class="src src-sh">nohup bash -c <span style="color: #61CE3C;">"(time bash executeScript 1 input fileOutput &gt; scrOutput) &amp;&gt; timeUse.txt"</span> &amp;
</pre>
</div></li></ol></li>

<li><a id="org5640a27"></a>MoreUtils<br /><ol class="org-ol"><li><a id="orgee2ed12"></a>read / process / write the same file ?<br /><ul class="org-ul">
<li>Use:  <code>sponge</code></li>
<li><code>sponge</code> will read stdin and write to specified file. Unlike a shell redirect it will soaks all its input before writing the output file.</li>
</ul>
<div class="org-src-container">
<pre class="src src-sh">sort f | sponge f
</pre>
</div></li>
<li><a id="orge5021cc"></a>instead of xxx use moreutils yyy?<br /><table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


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
<td class="org-left"><code>sort filename</code> | <code>uniq/ &gt; temp</code></td>
<td class="org-left"><code>sort filename</code> | <code>uniq \vert sponge filename</code></td>
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
<td class="org-left"><code>./script.sh</code> | <code>ifne less</code></td>
</tr>

<tr>
<td class="org-left"><code>pee</code></td>
<td class="org-left"><code>./script.sh</code> | <code>tee output1 output2</code></td>
<td class="org-left"><code>./script.sh</code> | <code>pee 'grep pattern1' 'gzip -c &gt; output.gz'_</code></td>
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
<td class="org-left"><code>$ { echo "One" ; sleep 3s ; echo "Two" ; }</code> | <code>ts</code></td>
</tr>

<tr>
<td class="org-left"><code>errno</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>$ errno 98</code></td>
</tr>

<tr>
<td class="org-left"><code>vipe</code></td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>command1</code> | <code>vipe</code> | <code>command2</code></td>
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
<td class="org-left"><code>sort file1 file2</code> | <code>uniq</code></td>
<td class="org-left"><code>combine file1 or file2</code></td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>sort file1 file2</code> | <code>uniq --unique</code></td>
<td class="org-left"><code>combine file1 xor file2</code></td>
</tr>
</tbody>
</table>

<p>
See: <a href="http://devblog.nestoria.com/post/110168998173/moreutils-basic-unix-tools-that-ought-to-be">http://devblog.nestoria.com/post/110168998173/moreutils-basic-unix-tools-that-ought-to-be</a>
</p></li></ol></li>

<li><a id="orgebf19a1"></a>Bc<br /><ol class="org-ol"><li><a id="org655b3cc"></a>float precision?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">echo</span> <span style="color: #61CE3C;">'scale=2 ; 1/3'</span> | bc -l
</pre>
</div></li></ol></li>

<li><a id="orgbe0edfa"></a>Zip<br /><ol class="org-ol"><li><a id="org221d815"></a>unzip a single file from archive?<br /><div class="org-src-container">
<pre class="src src-sh">unzip -p myarchive.zip path/to/zipped/file.txt &gt;file.txt
</pre>
</div></li></ol></li>
<li><a id="org0c7429d"></a>Apt-get<br /><ol class="org-ol"><li><a id="orgf37a57b"></a>dpkg show all installed files of a .deb?<br /><div class="org-src-container">
<pre class="src src-sh">dpkg -L jenkins
</pre>
</div></li>
<li><a id="orgdb74dc6"></a>apt-get: what package provide this file?<br /><div class="org-src-container">
<pre class="src src-sh">apt-get install apt-file
apt-file update
apt-file find &lt;file&gt;
</pre>
</div></li>
<li><a id="org9b9e936"></a>fix a broken state ?<br /><div class="org-src-container">
<pre class="src src-sh">sudo apt-get install --fix-broken
</pre>
</div></li>
<li><a id="org489ce89"></a>install a specific version?<br /><div class="org-src-container">
<pre class="src src-sh">apt-get install my-lib-java=<span style="color: #96CBFE;">2016.03.30-79</span> my-lib=<span style="color: #96CBFE;">2016.03.30-79</span>
</pre>
</div></li>
<li><a id="orgbffb4d8"></a>show version that a package can be upgraded to?<br /><div class="org-src-container">
<pre class="src src-sh">apt-cache policy google-chrome-stable
</pre>
</div></li>
<li><a id="org9ef1220"></a>customize output of dpkg -l?<br /><div class="org-src-container">
<pre class="src src-sh">dpkg-query --show --showformat=<span style="color: #61CE3C;">'${Package}\n'</span>
</pre>
</div></li></ol></li>
<li><a id="orgfbb207f"></a>Rpm<br /><ol class="org-ol"><li><a id="org363ab73"></a>list files installed by a package?<br /><div class="org-src-container">
<pre class="src src-sh">rpm -ql <span style="color: #8b0000;">[</span>packageName<span style="color: #8b0000;">]</span>
</pre>
</div></li></ol></li>

<li><a id="org503fbe6"></a>Wget<br /><ol class="org-ol"><li><a id="orgbde2099"></a>recursively download for example nexus ?<br /><div class="org-src-container">
<pre class="src src-sh">wget --header=<span style="color: #61CE3C;">"Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"</span>                  <span style="color: #61CE3C;">\</span>
     --header=<span style="color: #61CE3C;">"User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:48.0) Gecko/20100101 Firefox/48.0"</span> <span style="color: #61CE3C;">\</span>
     --recursive                                                                                         <span style="color: #61CE3C;">\</span>
     -e <span style="color: #ff69b4;">robots</span>=off                                                                                       <span style="color: #61CE3C;">\</span>
     --no-parent                                                                                         <span style="color: #61CE3C;">\</span>
     http://nexus-url/x/y/z
</pre>
</div></li></ol></li>
<li><a id="org4b9a750"></a>NxClient<br /><ol class="org-ol"><li><a id="orgd221488"></a>keyboard issue when connecting with nx ?<br /><p>
Try: 
</p>
<div class="org-src-container">
<pre class="src src-sh">setxkbmap -model evdev -layout us
</pre>
</div></li></ol></li>
<li><a id="org5fa295e"></a>VirtualBox<br /><ol class="org-ol"><li><a id="org7871b29"></a>manually mount a shared folder in a linux guest?<br /><div class="org-src-container">
<pre class="src src-sh">sudo mount -t vboxsf &lt;sharedFolderName&gt; /path/to/shared/folder/dir
</pre>
</div></li>
<li><a id="orge4fabc8"></a>host alt-tab when in a guest?<br /><p>
 <code>host key</code>
 then
alt-tab 
</p></li></ol></li></ol>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-1-1-2" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Sysadmin
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="org239ac14"></a>System Services (systemctl, &#x2026;)<br /><ol class="org-ol"><li><a id="org9f96233"></a>General Linux<br /><ol class="org-ol"><li><a id="orgc3b61b5"></a>Linux reload service config<br /><div class="org-src-container">
<pre class="src src-sh">sudo systemctl daemon-reload
</pre>
</div></li></ol></li>
<li><a id="org87ba939"></a>Centos<br /><ol class="org-ol"><li><a id="org980a7a1"></a>create a new systemd unit file?<br /><div class="org-center">
<p>
      (cat &lt;&lt;EOF''
[Unit]
Description=Post docker
After=docker.service
</p>

<p>
[Service]
Type=oneshot
ExecStart=/usr/bin/chmod 606 /var/run/docker.sock
RemainAfterExit=true
</p>

<p>
[Install]
WantedBy=multi-user.target
</p>

<p>
EOF
   ) | sudo tee /etc/systemd/system/multi-user.target.wants/docker-post.service
</p>

<p>
sudo systemctl daemon-reload
</p>

<p>
systemctl status docker-post.service
</p>

<p>
systemctl enable docker-post.service
</p>
</div>

<div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">list all services</span>
systemctl list-unit-files --type=service

<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">check if a service is running</span>
systemctl status name.service

<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">enable a service</span>
systemctl enable docker.service

<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">check if a service is enabled</span>
</pre>
</div></li></ol></li></ol></li>

<li><a id="orgf148673"></a>User Admin<br /><ol class="org-ol"><li><a id="org7d9c814"></a>how to add a group to a user ?<br /><div class="org-src-container">
<pre class="src src-sh">sudo usermod -aG docker u
</pre>
</div></li>
<li><a id="orga854616"></a>add a user with specific groups ?<br /><div class="org-src-container">
<pre class="src src-sh">adduser -G group1,group2 &lt;user&gt;
</pre>
</div></li>

<li><a id="orgc1cccd2"></a>get the groups of a user ?<br /><div class="org-src-container">
<pre class="src src-sh">groups &lt;user&gt;
</pre>
</div></li>
<li><a id="org34d09db"></a>change the shell of a user?<br /><div class="org-src-container">
<pre class="src src-sh">usermod -s /bin/bash user
</pre>
</div></li>
<li><a id="orgdbaa968"></a>remove a user?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">export</span> <span style="color: #ff69b4;">U</span>=&lt;user&gt;
userdel -r $<span style="color: #ff69b4;">U</span>
</pre>
</div></li>
<li><a id="org779ebd6"></a>add a user?<br /><div class="org-src-container">
<pre class="src src-sh">adduser &lt;user&gt;
</pre>
</div></li>
<li><a id="orga5a72a9"></a>view login activity?<br /><div class="org-src-container">
<pre class="src src-sh">last 
</pre>
</div></li></ol></li>

<li><a id="orgb1c9d74"></a>Sudo<br /><ol class="org-ol"><li><a id="orgc4ec5de"></a>allow sudo without password for a user?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">if there's a sudo group add the user to this group</span>
</pre>
</div></li>
<li><a id="orgfdd315c"></a>execute a cmd as another user?<br /><div class="org-src-container">
<pre class="src src-sh">sudo -u &lt;user&gt; /bin/ls -alrth &lt;...&gt;
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">WARN! path to binaries must be absolute!</span>
</pre>
</div></li></ol></li>
<li><a id="orgdabc5fa"></a>Devices (hdd,&#x2026;)<br /><ol class="org-ol"><li><a id="org4661c9f"></a>eject a cd rom?<br /><div class="org-src-container">
<pre class="src src-sh">ejet /dev/cdrom
</pre>
</div></li>
<li><a id="org6466927"></a>how to list all supported FS for mounting?<br /><div class="org-src-container">
<pre class="src src-sh">cat /proc/filesystems
</pre>
</div></li>
<li><a id="org69f1625"></a>how to fix a screwed nfs mount without rebooting?<br /><p>
TODO: should be completed 
</p>
<ul class="org-ul">
<li>Find the list of process open on the screwed fs:</li>
</ul>
<div class="org-src-container">
<pre class="src src-sh">lsof | grep <span style="color: #61CE3C;">'/path/to/nfs'</span>
</pre>
</div>
<ul class="org-ul">
<li>kill them</li>
<li>remount</li>
</ul>
<p>
ref: <a href="http://joelinoff.com/blog/?p=356">http://joelinoff.com/blog/?p=356</a>
</p></li></ol></li></ol>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-1-1-3" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Terminal
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="orgfd6c96e"></a>replace capslock by ctrl in console ?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;">#</span><span style="color: #8B8989; font-style: italic;">in  /etc/default/keyboard</span>
<span style="color: #8B8989; font-style: italic;">#</span><span style="color: #8B8989; font-style: italic;">replace XKBOPTIONS="" by XKBOPTIONS="ctrl:nocaps"</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">then run</span>
run sudo dpkg-reconfigure -phigh console-setup
</pre>
</div>

<p>
ref: <a href="https://www.emacswiki.org/emacs/MovingTheCtrlKey#toc9">https://www.emacswiki.org/emacs/MovingTheCtrlKey#toc9</a>
</p></li>
<li><a id="org511b9f3"></a>change language keyboard mapping<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">run</span>
dpkg-reconfigure keyboard-configuration
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">or</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">edit /etc/default/keyboard: </span>
<span style="color: #8B8989; font-style: italic;">#   </span><span style="color: #8B8989; font-style: italic;">change XKBLAYOUT="us,de,fr,ua,ru" by "us" for example</span>

<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">for changes to take effect:</span>
service keyboard-setup restart

<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">it should suffice, but if not: </span>
udevadm trigger --subsystem-match=input --action=change
</pre>
</div>
<p>
<a href="https://wiki.debian.org/Keyboard">https://wiki.debian.org/Keyboard</a>
</p></li>
<li><a id="org10f4a36"></a>change text mode resolution?<br /></li>
<li><a id="orgb32ecb1"></a>paste example?<br /><div class="org-src-container">
<pre class="src src-sh">$ paste &lt;<span style="color: #8b0000;">(</span>seq <span style="color: #96CBFE;">1</span> <span style="color: #96CBFE;">3</span><span style="color: #8b0000;">)</span> &lt;<span style="color: #8b0000;">(</span>seq <span style="color: #96CBFE;">1</span> <span style="color: #96CBFE;">3</span><span style="color: #8b0000;">)</span>
<span style="color: #96CBFE;">1</span>       <span style="color: #96CBFE;">1</span>
<span style="color: #96CBFE;">2</span>       <span style="color: #96CBFE;">2</span>
<span style="color: #96CBFE;">3</span>       <span style="color: #96CBFE;">3</span>
</pre>
</div></li>
<li><a id="orgfa1c4a9"></a>show which key is pressed?<br /><div class="org-src-container">
<pre class="src src-sh">
</pre>
</div></li>
<li><a id="orgf424b62"></a>get the number of rows and colums?<br /><div class="org-src-container">
<pre class="src src-sh">tput lines
tput cols
</pre>
</div></li>
<li><a id="orgc3b8ec9"></a>Presentation conventions<br /><ol class="org-ol"><li><a id="org3510e1c"></a>display a command line?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #fa8072;">`npm install -g jsonresume-theme-kendall`</span>
</pre>
</div></li></ol></li></ol>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-1-1-4" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Bash
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="orgffe161b"></a>Stdin/out/err<br /><ol class="org-ol"><li><a id="org59258a4"></a>redirecting stdout, stderr<br /><div class="org-src-container">
<pre class="src src-sh">| redirect from | to   | cmd                            | notes          |
|---------------+------+--------------------------------+----------------|
| out           | err  |  ls <span style="color: #96CBFE;">1</span>&gt;&amp;<span style="color: #96CBFE;">2</span>                       |                |
| out &amp; err     | file |  ls &amp;&gt;   file                  |                |
|               |      |  ls &gt;    file <span style="color: #96CBFE;">2</span>&gt;&amp;<span style="color: #96CBFE;">1</span>             | <span style="color: #4c83ff;">for</span> older bash |
| err           | out  |  ls <span style="color: #96CBFE;">2</span>&gt;&amp;<span style="color: #96CBFE;">1</span>                       |                |
| err &amp; out     | pipe |  ls <span style="color: #96CBFE;">2</span>&gt;&amp;<span style="color: #96CBFE;">1</span> |  grep <span style="color: #61CE3C;">'.*'</span>          |                |
|               |      |  ls      |&amp; grep <span style="color: #61CE3C;">'.*'</span>          | equiv          |
</pre>
</div></li>
<li><a id="org383fc4c"></a>use stdout as a file (with filename) for another cmd?<br /><div class="org-src-container">
<pre class="src src-sh">cmd &lt;<span style="color: #8b0000;">(</span>cat f<span style="color: #8b0000;">)</span>
</pre>
</div></li>
<li><a id="org5b21ebe"></a>swap stdout and stderr?<br /><p>
<code>cmd 3&gt;&amp;1 1&gt;&amp;2 2&gt;&amp;3</code>
</p>
<div class="org-src-container">
<pre class="src src-sh">   $ f<span style="color: #8b0000;">()</span> <span style="color: #8b0000;">{</span> <span style="color: #006400;">(</span><span style="color: #4c83ff;">echo</span> out<span style="color: #006400;">)</span> &amp;&amp; <span style="color: #006400;">(</span><span style="color: #4c83ff;">echo</span> err <span style="color: #96CBFE;">1</span>&gt;&amp;<span style="color: #96CBFE;">2</span><span style="color: #006400;">)</span>; <span style="color: #8b0000;">}</span>
   $ f
out
err
   $ s<span style="color: #8b0000;">()</span> <span style="color: #8b0000;">{</span> sed <span style="color: #61CE3C;">"s/.*/=$1&gt;&amp;&lt;$1=/"</span>; <span style="color: #8b0000;">}</span>
   $ f | s <span style="color: #96CBFE;">1</span>
err
=<span style="color: #96CBFE;">1</span>&gt;out&lt;<span style="color: #96CBFE;">1</span>=
   $ <span style="color: #8b0000;">(</span>f <span style="color: #96CBFE;">3</span>&gt;&amp;<span style="color: #96CBFE;">1</span> <span style="color: #96CBFE;">1</span>&gt;&amp;<span style="color: #96CBFE;">2</span> <span style="color: #96CBFE;">2</span>&gt;&amp;<span style="color: #96CBFE;">3</span><span style="color: #8b0000;">)</span> | s <span style="color: #96CBFE;">1</span>
out
=<span style="color: #96CBFE;">1</span>&gt;err&lt;<span style="color: #96CBFE;">1</span>=
   $ <span style="color: #8b0000;">(</span><span style="color: #006400;">(</span>f <span style="color: #96CBFE;">3</span>&gt;&amp;<span style="color: #96CBFE;">1</span> <span style="color: #96CBFE;">1</span>&gt;&amp;<span style="color: #96CBFE;">2</span> <span style="color: #96CBFE;">2</span>&gt;&amp;<span style="color: #96CBFE;">3</span><span style="color: #006400;">)</span> | s <span style="color: #96CBFE;">1</span><span style="color: #8b0000;">)</span> | s <span style="color: #96CBFE;">2</span>
out
=<span style="color: #96CBFE;">2</span>&gt;=<span style="color: #96CBFE;">1</span>&gt;err&lt;<span style="color: #96CBFE;">1</span>=&lt;<span style="color: #96CBFE;">2</span>=
   $ <span style="color: #8b0000;">(</span><span style="color: #006400;">(</span><span style="color: #ff1493;">(</span>f <span style="color: #96CBFE;">3</span>&gt;&amp;<span style="color: #96CBFE;">1</span> <span style="color: #96CBFE;">1</span>&gt;&amp;<span style="color: #96CBFE;">2</span> <span style="color: #96CBFE;">2</span>&gt;&amp;<span style="color: #96CBFE;">3</span><span style="color: #ff1493;">)</span> | s <span style="color: #96CBFE;">1</span><span style="color: #006400;">)</span> <span style="color: #96CBFE;">3</span>&gt;&amp;<span style="color: #96CBFE;">1</span> <span style="color: #96CBFE;">1</span>&gt;&amp;<span style="color: #96CBFE;">2</span> <span style="color: #96CBFE;">2</span>&gt;&amp;<span style="color: #96CBFE;">3</span><span style="color: #8b0000;">)</span> | s <span style="color: #96CBFE;">2</span>
=<span style="color: #96CBFE;">2</span>&gt;out&lt;<span style="color: #96CBFE;">2</span>=
=<span style="color: #96CBFE;">1</span>&gt;err&lt;<span style="color: #96CBFE;">1</span>=
</pre>
</div></li></ol></li>
<li><a id="org7e2cb49"></a>Arrays<br /><ol class="org-ol"><li><a id="orgbb06ed3"></a>Associative arrays<br /><ol class="org-ol"><li><a id="org6b3e29d"></a>declare, print, &#x2026;<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">declare</span>
<span style="color: #4c83ff;">declare</span> -A <span style="color: #ff69b4;">m</span>=<span style="color: #8b0000;">(</span> <span style="color: #006400;">[</span>red<span style="color: #006400;">]</span>=<span style="color: #61CE3C;">'0;31'</span> <span style="color: #006400;">[</span>green<span style="color: #006400;">]</span>=<span style="color: #61CE3C;">'0;32'</span> <span style="color: #8b0000;">)</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">print keys</span>
<span style="color: #4c83ff;">echo</span> <span style="color: #61CE3C;">"keys=${!m[@]}"</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">print all</span>
<span style="color: #4c83ff;">declare</span> | grep colorsCodes
</pre>
</div></li>
<li><a id="orgaf3e97b"></a>copy ?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">declare</span> -A <span style="color: #ff69b4;">arr</span>=<span style="color: #8b0000;">(</span><span style="color: #006400;">[</span>this<span style="color: #006400;">]</span>=hello <span style="color: #006400;">[</span><span style="color: #61CE3C;">\'</span>that<span style="color: #61CE3C;">\'</span><span style="color: #006400;">]</span>=world <span style="color: #006400;">[</span>theother<span style="color: #006400;">]</span>=<span style="color: #61CE3C;">'and "goodbye"!'</span><span style="color: #8b0000;">)</span>
<span style="color: #4c83ff;">declare</span> -A newarr
<span style="color: #4c83ff;">for</span> idx<span style="color: #4c83ff;"> in</span> <span style="color: #61CE3C;">"${!arr[@]}"</span>; <span style="color: #4c83ff;">do</span>
    <span style="color: #ff69b4;">newarr</span><span style="color: #8b0000;">[</span>$<span style="color: #ff69b4;">idx</span><span style="color: #8b0000;">]</span>=$<span style="color: #8b0000;">{</span><span style="color: #ff69b4;">arr</span><span style="color: #006400;">[</span>$<span style="color: #ff69b4;">idx</span><span style="color: #006400;">]</span><span style="color: #8b0000;">}</span>
<span style="color: #4c83ff;">done</span>

diff &lt;<span style="color: #8b0000;">(</span><span style="color: #4c83ff;">echo</span> <span style="color: #61CE3C;">"$temp"</span><span style="color: #8b0000;">)</span> &lt;<span style="color: #8b0000;">(</span><span style="color: #4c83ff;">declare</span> -p newarr | sed <span style="color: #61CE3C;">'s/newarr=/arr=/'</span><span style="color: #8b0000;">)</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">no output</span>
</pre>
</div>
<p>
<a href="http://stackoverflow.com/questions/19417015/bash-copy-from-one-array-to-another">http://stackoverflow.com/questions/19417015/bash-copy-from-one-array-to-another</a>
</p></li></ol></li>
<li><a id="org9f5ca5c"></a>Normal arrays<br /><div class="org-src-container">
<pre class="src src-bash"><span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">declare</span>
<span style="color: #4c83ff;">declare</span> -a a
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">literal</span>
<span style="color: #ff69b4;">a</span>=<span style="color: #8b0000;">(</span>a b c<span style="color: #8b0000;">)</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">set </span>
<span style="color: #ff69b4;">a</span><span style="color: #8b0000;">[</span><span style="color: #96CBFE;">0</span><span style="color: #8b0000;">]</span>=x
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">get all</span>
<span style="color: #4c83ff;">echo</span> $<span style="color: #8b0000;">{</span><span style="color: #ff69b4;">a</span><span style="color: #006400;">[</span>*<span style="color: #006400;">]</span><span style="color: #8b0000;">}</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">size</span>
<span style="color: #4c83ff;">echo</span> <span style="color: #61CE3C;">"size=${#}"</span>
</pre>
</div></li></ol></li>
<li><a id="org43b84aa"></a>ssh escape sequence?<br /><p>
<code>ENTER, ~, .</code>
</p></li>
<li><a id="orgcee9ba3"></a>c style for loop?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">for</span> <span style="color: #8b0000;">(</span><span style="color: #006400;">(</span><span style="color: #ff69b4;">i</span>=<span style="color: #96CBFE;">0</span>;i&lt;<span style="color: #96CBFE;">3</span>;i++<span style="color: #006400;">)</span><span style="color: #8b0000;">)</span>; <span style="color: #4c83ff;">do</span>
  <span style="color: #4c83ff;">echo</span> $<span style="color: #ff69b4;">i</span>
<span style="color: #4c83ff;">done</span>
</pre>
</div></li>
<li><a id="org1daa20f"></a>Bash Strings<br /><ol class="org-ol"><li><a id="orgbb265eb"></a>bash strings cheat sheet?<br /><table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


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
<td class="org-left"><code>x=abcabc; echo ${s//b/x} # axcaxc</code></td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table></li></ol></li>
<li><a id="org246fa47"></a>generate random string?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;">#</span><span style="color: #8B8989; font-style: italic;">!/bin/</span><span style="color: #4c83ff;">bash</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">bash generate random alphanumeric string</span>
<span style="color: #8B8989; font-style: italic;">#</span>

<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">bash generate random 32 character alphanumeric string (upper and lowercase) and</span>
<span style="color: #ff69b4;">NEW_UUID</span>=$<span style="color: #8b0000;">(</span>cat /dev/urandom | tr -dc <span style="color: #61CE3C;">'a-zA-Z0-9'</span> | fold -w <span style="color: #96CBFE;">32</span> | head -n <span style="color: #96CBFE;">1</span><span style="color: #8b0000;">)</span>

<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">bash generate random 32 character alphanumeric string (lowercase only)</span>
cat /dev/urandom | tr -dc <span style="color: #61CE3C;">'a-zA-Z0-9'</span> | fold -w <span style="color: #96CBFE;">32</span> | head -n <span style="color: #96CBFE;">1</span>

<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">Random numbers in a range, more randomly distributed than $RANDOM which is not</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">very random in terms of distribution of numbers.</span>

<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">bash generate random number between 0 and 9</span>
cat /dev/urandom | tr -dc <span style="color: #61CE3C;">'0-9'</span> | fold -w <span style="color: #96CBFE;">256</span> | head -n <span style="color: #96CBFE;">1</span> | head --bytes <span style="color: #96CBFE;">1</span>

<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">bash generate random number between 0 and 99</span>
<span style="color: #ff69b4;">NUMBER</span>=$<span style="color: #8b0000;">(</span>cat /dev/urandom | tr -dc <span style="color: #61CE3C;">'0-9'</span> | fold -w <span style="color: #96CBFE;">256</span> | head -n <span style="color: #96CBFE;">1</span> | sed -e <span style="color: #61CE3C;">'s/^0*//'</span> | head --bytes <span style="color: #96CBFE;">2</span><span style="color: #8b0000;">)</span>
<span style="color: #4c83ff;">if</span> <span style="color: #8b0000;">[</span> <span style="color: #61CE3C;">"$NUMBER"</span> == <span style="color: #61CE3C;">""</span> <span style="color: #8b0000;">]</span>; <span style="color: #4c83ff;">then</span>
  <span style="color: #ff69b4;">NUMBER</span>=<span style="color: #96CBFE;">0</span>
<span style="color: #4c83ff;">fi</span>

<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">bash generate random number between 0 and 999</span>
<span style="color: #ff69b4;">NUMBER</span>=$<span style="color: #8b0000;">(</span>cat /dev/urandom | tr -dc <span style="color: #61CE3C;">'0-9'</span> | fold -w <span style="color: #96CBFE;">256</span> | head -n <span style="color: #96CBFE;">1</span> | sed -e <span style="color: #61CE3C;">'s/^0*//'</span> | head --bytes <span style="color: #96CBFE;">3</span><span style="color: #8b0000;">)</span>
<span style="color: #4c83ff;">if</span> <span style="color: #8b0000;">[</span> <span style="color: #61CE3C;">"$NUMBER"</span> == <span style="color: #61CE3C;">""</span> <span style="color: #8b0000;">]</span>; <span style="color: #4c83ff;">then</span>
  <span style="color: #ff69b4;">NUMBER</span>=<span style="color: #96CBFE;">0</span>
<span style="color: #4c83ff;">fi</span>
</pre>
</div>
<p>
<a href="https://gist.github.com/earthgecko/3089509">https://gist.github.com/earthgecko/3089509</a>
</p></li>
<li><a id="org3ef2ad9"></a>decimal / hex conversion?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">echo</span> $<span style="color: #8b0000;">(</span><span style="color: #006400;">(</span><span style="color: #96CBFE;">0xa</span><span style="color: #006400;">)</span><span style="color: #8b0000;">)</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">10</span>
</pre>
</div></li>
<li><a id="org4f9af65"></a>redirect output in variable?<br /><p>
"must read" about the differents techniques of redirection: <a href="http://stackoverflow.com/questions/13763942/bash-why-piping-input-to-read-only-works-when-fed-into-while-read-const">http://stackoverflow.com/questions/13763942/bash-why-piping-input-to-read-only-works-when-fed-into-while-read-const</a>
</p></li>
<li><a id="org19fdbbf"></a>stop on error (even in subshell)?<br /><p>
It seems that bash disable -e in subshells.
A workaround: set -e explicitly at the start of each subshell
</p></li>
<li><a id="org83bd2c7"></a>switch case ?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">while</span> <span style="color: #8b0000;">[</span><span style="color: #006400;">[</span> $<span style="color: #ff69b4;">#</span> -gt <span style="color: #96CBFE;">0</span> <span style="color: #006400;">]</span><span style="color: #8b0000;">]</span>; <span style="color: #4c83ff;">do</span>
    <span style="color: #4c83ff;">case</span> <span style="color: #61CE3C;">"$1"</span><span style="color: #4c83ff;"> in</span>
        *:*          ) <span style="color: #ff69b4;">hostport</span>=<span style="color: #8b0000;">(</span>$<span style="color: #006400;">{</span><span style="color: #96CBFE;">1//:/</span> <span style="color: #006400;">}</span><span style="color: #8b0000;">)</span>; <span style="color: #4c83ff;">shift</span> <span style="color: #96CBFE;">1</span> ;;
             --child ) <span style="color: #ff69b4;">CHILD</span>=<span style="color: #96CBFE;">1</span>             ; <span style="color: #4c83ff;">shift</span> <span style="color: #96CBFE;">1</span> ;;
        -q | --quiet ) <span style="color: #ff69b4;">QUIET</span>=<span style="color: #96CBFE;">1</span>             ; <span style="color: #4c83ff;">shift</span> <span style="color: #96CBFE;">1</span> ;;
        -s | --strict) <span style="color: #ff69b4;">STRICT</span>=<span style="color: #96CBFE;">1</span>            ; <span style="color: #4c83ff;">shift</span> <span style="color: #96CBFE;">1</span> ;;
        --host=*     ) <span style="color: #ff69b4;">HOST</span>=<span style="color: #61CE3C;">"${1#*=}"</span>      ; <span style="color: #4c83ff;">shift</span> <span style="color: #96CBFE;">1</span> ;;
        --help       ) usage               ; <span style="color: #4c83ff;">shift</span> <span style="color: #96CBFE;">1</span> ;;
        *            ) unknownArg <span style="color: #61CE3C;">"$1"</span>     ; <span style="color: #4c83ff;">shift</span> <span style="color: #96CBFE;">1</span> ;;
    <span style="color: #4c83ff;">esac</span>
<span style="color: #4c83ff;">done</span>
</pre>
</div></li>
<li><a id="org699eacc"></a>loop over args?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">for</span> var<span style="color: #4c83ff;"> in</span> <span style="color: #61CE3C;">"$@"</span>
<span style="color: #4c83ff;">do</span>
  <span style="color: #4c83ff;">echo</span> <span style="color: #61CE3C;">"$var"</span>
<span style="color: #4c83ff;">done</span>
</pre>
</div>
<p>
<a href="http://stackoverflow.com/questions/255898/how-to-iterate-over-arguments-in-a-bash-script">http://stackoverflow.com/questions/255898/how-to-iterate-over-arguments-in-a-bash-script</a>
</p></li>
<li><a id="orgae3ea3b"></a>parse a string as args<br /><div class="org-src-container">
<pre class="src src-sh">How to process the following list of pairs: <span style="color: #61CE3C;">"Mercury 36"</span> <span style="color: #61CE3C;">"Venus 67"</span> <span style="color: #61CE3C;">"Earth 93"</span>  <span style="color: #61CE3C;">"Mars 142"</span> <span style="color: #61CE3C;">"Jupiter 483"</span>? 
<span style="color: #8b0000;">(</span>note <span style="color: #ff69b4;">no</span> =<span style="color: #ff69b4;">IFS</span>= set<span style="color: #8b0000;">)</span>
<span style="color: #8B8989; font-style: italic;">#</span><span style="color: #8B8989; font-style: italic;">+begin_src sh</span>
<span style="color: #8B8989; font-style: italic;">#</span><span style="color: #8B8989; font-style: italic;">!/usr/bin/env bash</span>
<span style="color: #4c83ff;">set</span> -euo pipefail

<span style="color: #4c83ff;">for</span> planet<span style="color: #4c83ff;"> in</span> <span style="color: #61CE3C;">"Mercury 36"</span> <span style="color: #61CE3C;">"Venus 67"</span> 
<span style="color: #4c83ff;">do</span>
  <span style="color: #4c83ff;">set</span> -- $<span style="color: #ff69b4;">planet</span>
  <span style="color: #4c83ff;">echo</span> <span style="color: #61CE3C;">"\$1=$1"</span>
  <span style="color: #4c83ff;">echo</span> <span style="color: #61CE3C;">"\$2=$2"</span>
<span style="color: #4c83ff;">done</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">outputs</span>
<span style="color: #8B8989; font-style: italic;">#</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">$1=Mercury</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">$2=36</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">$1=Venus</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">$2=67</span>
</pre>
</div></li>
<li><a id="orgd42fadb"></a>How to save a script params (before doing modifications like shift, ..)?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">save with </span>
<span style="color: #ff69b4;">original_params</span>=<span style="color: #8b0000;">(</span><span style="color: #61CE3C;">"$@"</span><span style="color: #8b0000;">)</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">use the copy with </span>
<span style="color: #4c83ff;">echo</span> <span style="color: #61CE3C;">"${original_params[@]}"</span>
</pre>
</div></li></ol>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-1-1-5" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>X
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="orgcf94553"></a>copy to system clipboard from the command line?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">echo</span> a | xclip -selection clipboard
</pre>
</div></li>
<li><a id="orgd45eb5b"></a>dual monitor setup: turn off one of the monitor and not the other?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">choose one of the monitor with:</span>
xrandr -q
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">disbale it</span>
xrandr --output LVDS1 --off
</pre>
</div></li></ol>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-1-1-6" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Converting formats
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="org57faa4b"></a>convert file format table?<br /><table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


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
</table></li>
<li><a id="orgd23cbdd"></a>Pdf<br /><ol class="org-ol"><li><a id="org8d852f9"></a>replace a string in a pdf file ?<br /><div class="org-src-container">
<pre class="src src-sh">pdftk file.pdf output uncompressed.pdf uncompress

sed -e <span style="color: #61CE3C;">"s/ORIGINALSTRING/NEWSTRING/g"</span> &lt;uncompressed.pdf &gt;modified.pdf

pdftk modified.pdf output recompressed.pdf compress
</pre>
</div>
<p>
<a href="http://stackoverflow.com/questions/9871585/how-to-find-and-replace-text-in-a-existing-pdf-file-with-pdftk-or-other-command">http://stackoverflow.com/questions/9871585/how-to-find-and-replace-text-in-a-existing-pdf-file-with-pdftk-or-other-command</a>
</p></li></ol></li></ol>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-1-1-7" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Ubuntu / Debian
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="org3cd76a7"></a>Setup locale?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">add to /etc/environnement</span>
<span style="color: #8B8989; font-style: italic;">#</span><span style="color: #8B8989; font-style: italic;">LC_ALL=en_US.UTF-8</span>
<span style="color: #ff69b4;">LANG</span>=en_US.UTF-8

sudo locale-gen <span style="color: #61CE3C;">"en_US.UTF-8"</span>
sudo dpkg-reconfigure locales

</pre>
</div></li></ol>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-1-1-8" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Network
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="orgc08b22f"></a>How to trace all network activity?<br /><p>
<code>tcpflow</code>
</p>
<div class="org-src-container">
<pre class="src src-sh">tcpflow -p -c -i eth0 port <span style="color: #96CBFE;">80</span> | grep -oE <span style="color: #61CE3C;">'(GET|POST|HEAD) .* HTTP/1.[01]|Host: .*'</span>
</pre>
</div>
<p>
<a href="http://unix.stackexchange.com/questions/6279/on-the-fly-monitoring-http-requests-on-a-network-interface">http://unix.stackexchange.com/questions/6279/on-the-fly-monitoring-http-requests-on-a-network-interface</a>
</p></li>
<li><a id="org5699023"></a>how to get the ip adresse of the local host ?<br /><p>
<b>Note</b>: To be verfied!
</p>
<div class="org-src-container">
<pre class="src src-sh">hostname -I
</pre>
</div>
<p>
or (?)
</p>
<div class="org-src-container">
<pre class="src src-sh">hostname -I | cut -d<span style="color: #61CE3C;">' '</span> -f1
</pre>
</div></li>
<li><a id="org7db3c62"></a>list open ports?<br /><div class="org-src-container">
<pre class="src src-sh">netstat -lntu
</pre>
</div></li></ol>
</body>
</html>
</richcontent>
</node>

</node>

<node COLOR="#00b439" ID="sec-1-2" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Solaris
</p>
</body>
</html>
</richcontent>
<node COLOR="#990000" ID="sec-1-2-1" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>equivalent of linux's <code>ps aux</code> ?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<p>
maybee not exaclty equiv, but roughly: 
</p>

<div class="org-src-container">
<pre class="src src-sh">ps -AfL
</pre>
</div>
</body>
</html>
</richcontent>
</node>

</node>

</node>

<node COLOR="#0033ff" ID="sec-2" POSITION="left" FOLDED="true">
<font NAME="SansSerif" SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Non-unixes
</p>
</body>
</html>
</richcontent>
<node COLOR="#00b439" ID="sec-2-1" POSITION="left" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Ms windows
</p>
</body>
</html>
</richcontent>
<node COLOR="#990000" ID="sec-2-1-1" POSITION="left" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Cygwin
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="orgc08e632"></a>Sshd<br /><ol class="org-ol"><li><a id="orgb6ba02d"></a>start sshd as a service after its installation with the Cygwin installer?<br /><ol class="org-ol"><li><a id="orgfc4e982"></a><span class="todo TODO">TODO</span> to be verified<br /><ol class="org-ol">
<li>Open a cmd.exe as administrator</li>
<li><p>
Run: 
</p>
<div class="org-src-container">
<pre class="src src-sh">cygrunsrv -S sshd
</pre>
</div>
<p>
(from: <a href="https://unix.stackexchange.com/questions/296275/running-sshd-in-cygwin-var-empty-must-be-owned-by-root">https://unix.stackexchange.com/questions/296275/running-sshd-in-cygwin-var-empty-must-be-owned-by-root</a>
</p></li>
</ol></li></ol></li>
<li><a id="org1aee58f"></a>install gpg under cygwin?<br /><p>
It's already in the standard Cygwin repo, only called <code>gnupg</code>.
</p></li></ol></li></ol>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-2-1-2" POSITION="left" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>cmd.exe
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="orga915d82"></a>windows services cheatsheet?<br /><ul class="org-ul">
<li><p>
list all
</p>
<div class="org-src-container">
<pre class="src src-sh">sc queryex <span style="color: #ff69b4;">type</span>= service <span style="color: #ff69b4;">state</span>= all
</pre>
</div></li>
</ul>
<ul class="org-ul">
<li><p>
list service containing the string "NATION"?
</p>
<div class="org-src-container">
<pre class="src src-sh">sc queryex <span style="color: #ff69b4;">type</span>= service <span style="color: #ff69b4;">state</span>= all | find /i <span style="color: #61CE3C;">"NATION"</span> 
</pre>
</div></li>
</ul></li></ol>
</body>
</html>
</richcontent>
</node>

</node>

</node>


<node COLOR="#0033ff" ID="sec-3" POSITION="right" FOLDED="true">
<font NAME="SansSerif" SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Docker
</p>
</body>
</html>
</richcontent>
<node COLOR="#00b439" ID="sec-3-1" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>find images on the command line ?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<p>
???
</p>
</body>
</html>
</richcontent>
</node>

<node COLOR="#00b439" ID="sec-3-2" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>docker run/start/exec ?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
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
</body>
</html>
</richcontent>
</node>

<node COLOR="#00b439" ID="sec-3-3" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>troubleshoot ubuntu network ?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ul class="org-ul">
<li>ping 8.8.8.8 but no www.google.com ?</li>
<li>incomplete response:</li>
</ul>
<div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">Find your network's DNS server:</span>
$ nmcli dev show | grep <span style="color: #61CE3C;">'IP4.DNS'</span>
IP4.DNS<span style="color: #8b0000;">[</span><span style="color: #96CBFE;">1</span><span style="color: #8b0000;">]</span>:                             <span style="color: #96CBFE;">10.19.18.25</span>

<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">Open up /lib/systemd/system/docker.service and add DNS settings to the ExecStart line:</span>
<span style="color: #ff69b4;">ExecStart</span>=/usr/bin/docker daemon --dns <span style="color: #96CBFE;">8.8.8.8</span> --dns <span style="color: #96CBFE;">10.19.18.25</span> -H fd://
</pre>
</div>
<p>
From: <a href="http://askubuntu.com/questions/475764/docker-io-dns-doesnt-work-its-trying-to-use-8-8-8-8">http://askubuntu.com/questions/475764/docker-io-dns-doesnt-work-its-trying-to-use-8-8-8-8</a>
</p>
</body>
</html>
</richcontent>
</node>

<node COLOR="#00b439" ID="sec-3-4" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>repair docker after a disk full?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">service docker stop

thin_check /var/lib/docker/devicemapper/devicemapper/metadata

thin_check --clear-needs-check-flag /var/lib/docker/devicemapper/devicemapper/metadata

service docker start

</pre>
</div>
<p>
<a href="http://stackoverflow.com/questions/30719896/docker-dm-task-run-failed-error">http://stackoverflow.com/questions/30719896/docker-dm-task-run-failed-error</a>
</p>
</body>
</html>
</richcontent>
</node>

<node COLOR="#00b439" ID="sec-3-5" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>use bashism in Dockerfile?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">Define bash as the default shell </span>
SHELL <span style="color: #8b0000;">[</span><span style="color: #61CE3C;">"bash"</span>, <span style="color: #61CE3C;">"-c"</span><span style="color: #8b0000;">]</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">or: </span>
SHELL <span style="color: #8b0000;">[</span><span style="color: #61CE3C;">"bash"</span>, <span style="color: #61CE3C;">"-ueo"</span>,<span style="color: #61CE3C;">"pipefail"</span>, <span style="color: #61CE3C;">"-c"</span><span style="color: #8b0000;">]</span>
</pre>
</div>
</body>
</html>
</richcontent>
</node>


<node COLOR="#00b439" ID="sec-3-6" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Docker Compose
</p>
</body>
</html>
</richcontent>
<node COLOR="#990000" ID="sec-3-6-1" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>commands cheatsheet ?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
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
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-3-6-2" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>pass env var at build time ?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<p>
from: <a href="https://docs.docker.com/compose/compose-file/#cachefrom">https://docs.docker.com/compose/compose-file/#cachefrom</a>: 
</p>
<div class="org-src-container">
<pre class="src src-sh">build:
  context: .
  args:
    buildno: <span style="color: #96CBFE;">1</span>
    password: secret
</pre>
</div>
</body>
</html>
</richcontent>
</node>

</node>


<node COLOR="#00b439" ID="sec-3-7" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>docker docs
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
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
</body>
</html>
</richcontent>
</node>

<node COLOR="#00b439" ID="sec-3-8" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>bind host /lib and /bin to the guest to run (eg) wget?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">on the host</span>
docker run -v /usr/lib/x86_64-linux-gnu:/usr-lib-host -v /lib/x86_64-linux-gnu/:/lib-host -v /usr/bin/:/bin-host -it ubuntu:16.04 bash
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">on the guest</span>
<span style="color: #4c83ff;">export</span> <span style="color: #ff69b4;">LD_LIBRARY_PATH</span>=/lib-host:/usr-lib-host &amp;&amp; <span style="color: #4c83ff;">export</span> <span style="color: #ff69b4;">PATH</span>=$<span style="color: #ff69b4;">PATH</span>:/bin-host
wget google.com
</pre>
</div>
</body>
</html>
</richcontent>
</node>

</node>

<node COLOR="#0033ff" ID="sec-4" POSITION="left" FOLDED="true">
<font NAME="SansSerif" SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Emacs
</p>
</body>
</html>
</richcontent>
<node COLOR="#00b439" ID="sec-4-1" POSITION="left" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>file type indicator header for emacs?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">-*- mode: outline -*-
</pre>
</div>
</body>
</html>
</richcontent>
</node>

<node COLOR="#00b439" ID="sec-4-2" POSITION="left" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>edit a file remotely over ssh with tramp?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">C-x C-f
/&lt;user&gt;@&lt;host&gt;:&lt;file&gt;
</pre>
</div>
</body>
</html>
</richcontent>
</node>


<node COLOR="#00b439" ID="sec-4-3" POSITION="left" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Spacemacs
</p>
</body>
</html>
</richcontent>
<node COLOR="#990000" ID="sec-4-3-1" POSITION="left" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>evil cheat sheet?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
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
</body>
</html>
</richcontent>
</node>

</node>


<node COLOR="#00b439" ID="sec-4-4" POSITION="left" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>OrgMode
</p>
</body>
</html>
</richcontent>
<node COLOR="#990000" ID="sec-4-4-1" POSITION="left" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Tables
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="org712278e"></a>pipe in table cells?<br /><ol class="org-ol"><li><a id="orgb41ce27"></a>pipe in table with code block<br /><ul class="org-ul">
<li>create the table in org mode</li>
</ul>
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
<ul class="org-ul">
<li><p>
copy and pase the table in a code block and add the missing pipes: 
</p>
<div class="org-src-container">
<pre class="src src-sh">| x    | l               |
|------+-----------------|
| cmd1 | cmd             |
| cmd2 | cmd | cmdx      |
</pre>
</div></li>
</ul></li>
<li><a id="org74cc1ad"></a><span class="todo TODO">TODO</span> org mode how to use pipes in tables? <code>[0%]</code><br /><ol class="org-ol"><li><a id="org07745db"></a><span class="todo TODO">TODO</span> using contants?<br /><table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


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
</table></li>
<li><a id="org1e66fa3"></a><span class="todo TODO">TODO</span> macros?<br /></li>
<li><a id="org2573c03"></a><span class="todo TODO">TODO</span> latex?<br /></li>
<li><a id="org71cbeba"></a><span class="todo TODO">TODO</span> html?<br /></li>
<li><a id="org6cffd11"></a><span class="todo TODO">TODO</span> compute cells values ?<br /></li></ol></li></ol></li></ol>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-4-4-2" POSITION="left" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>twbs export html
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<p>
Controlling html output?
</p>
<div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;">#</span><span style="color: #8B8989; font-style: italic;">+OPTIONS: num:5 whn:2 toc:4 H:6</span>
And to set these via your publish configuration using the org-publish-project-alist, the options would be :section-numbers, :headline-levels and :with-toc.

The above options are described<span style="color: #4c83ff;"> in</span> the export settings section of the orgmode manual. This component introduces a new setting whn for per document, and :with-headline-numbers for publish config, which controls the display of section numbers. To disable, set to nil, to enable, set to t, and to control depth of display, use a whole number.
</pre>
</div>
<p>
from: <a href="https://github.com/marsmining/ox-twbs">https://github.com/marsmining/ox-twbs</a>
</p>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-4-4-3" POSITION="left" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>easy templates?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<p>
from: <a href="http://orgmode.org/manual/Easy-Templates.html#Easy-Templates">http://orgmode.org/manual/Easy-Templates.html#Easy-Templates</a>
</p>

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">s</td>
<td class="org-left">#+BEGIN<sub>SRC</sub> &#x2026; #+END<sub>SRC</sub></td>
</tr>

<tr>
<td class="org-left">e</td>
<td class="org-left">#+BEGIN<sub>EXAMPLE</sub> &#x2026; #+END<sub>EXAMPLE</sub></td>
</tr>

<tr>
<td class="org-left">q</td>
<td class="org-left">#+BEGIN<sub>QUOTE</sub> &#x2026; #+END<sub>QUOTE</sub></td>
</tr>

<tr>
<td class="org-left">v</td>
<td class="org-left">#+BEGIN<sub>VERSE</sub> &#x2026; #+END<sub>VERSE</sub></td>
</tr>

<tr>
<td class="org-left">c</td>
<td class="org-left">#+BEGIN<sub>CENTER</sub> &#x2026; #+END<sub>CENTER</sub></td>
</tr>

<tr>
<td class="org-left">l</td>
<td class="org-left">#+BEGIN<sub>LaTeX</sub> &#x2026; #+END<sub>LaTeX</sub></td>
</tr>

<tr>
<td class="org-left">L</td>
<td class="org-left">#+LaTeX:</td>
</tr>

<tr>
<td class="org-left">h</td>
<td class="org-left">#+BEGIN<sub>HTML</sub> &#x2026; #+END<sub>HTML</sub></td>
</tr>

<tr>
<td class="org-left">H</td>
<td class="org-left">#+HTML:</td>
</tr>

<tr>
<td class="org-left">a</td>
<td class="org-left">#+BEGIN<sub>ASCII</sub> &#x2026; #+END<sub>ASCII</sub></td>
</tr>

<tr>
<td class="org-left">A</td>
<td class="org-left">#+ASCII:</td>
</tr>

<tr>
<td class="org-left">i</td>
<td class="org-left">#+INDEX: line</td>
</tr>

<tr>
<td class="org-left">I</td>
<td class="org-left">#+INCLUDE: line</td>
</tr>
</tbody>
</table>
</body>
</html>
</richcontent>
</node>

</node>

</node>


<node COLOR="#0033ff" ID="sec-5" POSITION="right" FOLDED="true">
<font NAME="SansSerif" SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Programming
</p>
</body>
</html>
</richcontent>
<node COLOR="#00b439" ID="sec-5-1" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>JVM ecosystem
</p>
</body>
</html>
</richcontent>
<node COLOR="#990000" ID="sec-5-1-1" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Groovy
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="orgdd994fa"></a>pipeline oriented programming in groovy like Clojure's threading macro?<br /><div class="org-src-container">
<pre class="src src-java">Collection.metaClass.or = <span style="color: #8b0000;">{</span> <span style="color: #afd8af;">Closure</span> <span style="color: #ff69b4;">c</span> -&gt; delegate.collect c <span style="color: #8b0000;">}</span>

assert<span style="color: #8b0000;">(</span>
        <span style="color: #006400;">[</span><span style="color: #96CBFE;">1</span><span style="color: #006400;">]</span>
      | <span style="color: #006400;">{</span>it + <span style="color: #96CBFE;">1</span><span style="color: #006400;">}</span>
      | <span style="color: #006400;">{</span>it * <span style="color: #96CBFE;">2</span><span style="color: #006400;">}</span><span style="color: #8b0000;">)</span> == <span style="color: #8b0000;">[</span><span style="color: #96CBFE;">4</span><span style="color: #8b0000;">]</span>
</pre>
</div></li>
<li><a id="org976e36e"></a>groovy switch case?<br /><div class="org-src-container">
<pre class="src src-java"><span style="color: #4c83ff;">switch</span><span style="color: #8b0000;">(</span>val<span style="color: #8b0000;">)</span> <span style="color: #8b0000;">{</span>
  <span style="color: #4c83ff;">case</span> ~/<span style="color: #96CBFE;">ab</span>.*/: 
    result=<span style="color: #61CE3C;">"x"</span>
    <span style="color: #4c83ff;">break</span>
  <span style="color: #4c83ff;">case</span> ...
  <span style="color: #4c83ff;">default</span>: 
    ...
    <span style="color: #4c83ff;">break</span>
<span style="color: #8b0000;">}</span>
</pre>
</div></li>
<li><a id="orged467b3"></a>groovy interval ?<br /><div class="org-src-container">
<pre class="src src-java"><span style="color: #8b0000;">(</span><span style="color: #96CBFE;">1</span>..<span style="color: #96CBFE;">10</span><span style="color: #8b0000;">)</span>.each<span style="color: #8b0000;">{</span><span style="color: #afd8af;">prinltn</span> <span style="color: #ff69b4;">it</span><span style="color: #8b0000;">}</span>
</pre>
</div></li>
<li><a id="orgfbd832a"></a>get cmd line args?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #ff1493;">println</span><span style="color: #8b0000;">(</span>args<span style="color: #8b0000;">)</span>
</pre>
</div></li></ol>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-1-2" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Java
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="org2f8b7b5"></a>Create an object with the same behavior than System.out (for testing output)?<br /><div class="org-src-container">
<pre class="src src-java"><span style="color: #afd8af;">ByteArrayOutputStream</span> <span style="color: #ff69b4;">os</span> = <span style="color: #4c83ff;">new</span> <span style="color: #afd8af;">ByteArrayOutputStream</span><span style="color: #8b0000;">()</span>;
<span style="color: #afd8af;">PrintStream</span> <span style="color: #ff69b4;">ps</span> = <span style="color: #4c83ff;">new</span> <span style="color: #afd8af;">PrintStream</span><span style="color: #8b0000;">(</span>os<span style="color: #8b0000;">)</span>;
...
String output = os.toString<span style="color: #8b0000;">(</span><span style="color: #61CE3C;">"UTF8"</span><span style="color: #8b0000;">)</span>;
</pre>
</div>
<p>
<a href="http://stackoverflow.com/questions/1760654/java-printstream-to-string">http://stackoverflow.com/questions/1760654/java-printstream-to-string</a>
</p></li></ol>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-1-3" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Gradle
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="orgfaa428a"></a>how to create a new project from scratch?<br /><div class="org-src-container">
<pre class="src src-sh">gradle init --type basic
</pre>
</div></li></ol>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-1-4" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Maven
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="orgf584948"></a>simply download a jar with maven?<br /><ol class="org-ol"><li><a id="org7980b92"></a>simple<br /><div class="org-src-container">
<pre class="src src-sh">mvn dependency:get -Dartifact=org.springframework:spring-instrument:3.2.3.RELEASE
</pre>
</div>

<p>
See: <a href="http://stackoverflow.com/questions/7110114/how-to-simply-download-a-jar-using-maven">http://stackoverflow.com/questions/7110114/how-to-simply-download-a-jar-using-maven</a>
</p></li>
<li><a id="orge24a5ff"></a>specifying transitivity and repo<br /><div class="org-src-container">
<pre class="src src-sh">mvn dependency:get -DremoteRepositories=https://repo.jenkins-ci.org/releases <span style="color: #61CE3C;">\</span>
  -Dartifact=org.jenkins-ci.plugins:swarm-client:3.4                         <span style="color: #61CE3C;">\</span>
  -Dtransitive=false
</pre>
</div></li></ol></li></ol>
</body>
</html>
</richcontent>
</node>

</node>


<node COLOR="#00b439" ID="sec-5-2" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Node
</p>
</body>
</html>
</richcontent>
<node COLOR="#990000" ID="sec-5-2-1" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Npm
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="orgbb1a41e"></a>how to install global packages without sudo?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;">#</span><span style="color: #8B8989; font-style: italic;">Make a directory for global installations:</span>
mkdir ~/.npm-global
<span style="color: #8B8989; font-style: italic;">#</span><span style="color: #8B8989; font-style: italic;">Configure npm to use the new directory path:</span>
npm config set prefix <span style="color: #61CE3C;">'~/.npm-global'</span>
<span style="color: #8B8989; font-style: italic;">#</span><span style="color: #8B8989; font-style: italic;">Open or create a ~/.profile file and add this line:</span>
<span style="color: #4c83ff;">export</span> <span style="color: #ff69b4;">PATH</span>=~/.npm-global/bin:$<span style="color: #ff69b4;">PATH</span> &gt;&gt; ~/.bashrc
<span style="color: #8B8989; font-style: italic;">#</span><span style="color: #8B8989; font-style: italic;">Back on the command line, update your system variables:</span>
<span style="color: #4c83ff;">source</span> ~/.profile
</pre>
</div>
<p>
<a href="https://docs.npmjs.com/getting-started/fixing-npm-permissions">https://docs.npmjs.com/getting-started/fixing-npm-permissions</a>
</p></li>
<li><a id="org2195270"></a>upgrade npm to latest?<br /><div class="org-src-container">
<pre class="src src-sh">npm install npm@latest -g
</pre>
</div></li></ol>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-5-2-2" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Regex
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="org061b507"></a>Sed<br /><ol class="org-ol"><li><a id="org780144a"></a>use a backreference without grouping?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">echo</span> bar | sed <span style="color: #61CE3C;">'s/.*/=&gt; &amp; &lt;=/'</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">=&gt; bar &lt;=</span>
</pre>
</div></li>
<li><a id="orgb1fb2c7"></a>remove backslash EOL with sed?<br /><div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">echo</span> <span style="color: #61CE3C;">'a</span>
<span style="color: #61CE3C;">b \</span>
<span style="color: #61CE3C;">c'</span> | sed  <span style="color: #61CE3C;">'</span>
<span style="color: #61CE3C;">: again</span>
<span style="color: #61CE3C;">/\\$/ {</span>
<span style="color: #61CE3C;">    N</span>
<span style="color: #61CE3C;">    s/\\\n//</span>
<span style="color: #61CE3C;">    t again</span>
<span style="color: #61CE3C;">}'</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">a</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">b c</span>
</pre>
</div></li></ol></li>
<li><a id="org5893eee"></a>Perl<br /><ol class="org-ol"><li><a id="org51ad0ba"></a>Multiline search and replace?<br /><div class="org-src-container">
<pre class="src src-sh">perl -pe <span style="color: #61CE3C;">'s/&lt;search&gt;/&lt;replace&gt;/'</span>  &lt; in.file &gt; out.file
</pre>
</div></li></ol></li></ol>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-5-2-3" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Languages
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ol class="org-ol"><li><a id="org66f59b5"></a>Python<br /><ol class="org-ol"><li><a id="orga36f379"></a>Pip<br /><ol class="org-ol"><li><a id="orgd871731"></a>How to install pip for python 3 ?<br /><ul class="org-ul">
<li><p>
install: 
on ubuntu/debian:
</p>
<div class="org-src-container">
<pre class="src src-sh">aptitude install python3-pip
</pre>
</div></li>
<li><p>
invoke:
</p>
<div class="org-src-container">
<pre class="src src-sh">pip3 &lt;cmd&gt;
</pre>
</div></li>
</ul></li>
<li><a id="org71dc33e"></a>pip completion on the command line?<br /><div class="org-src-container">
<pre class="src src-sh">pip completion --bash &gt;&gt; ~/.profile
</pre>
</div>
<p>
or
</p>
<div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">eval</span> <span style="color: #61CE3C;">"`pip completion --zsh`"</span>
</pre>
</div>
<p>
from: <a href="https://pip.pypa.io/en/stable/user_guide/?highlight=completion%20#command-completion">https://pip.pypa.io/en/stable/user_guide/?highlight=completion #command-completion</a>
</p></li></ol></li>
<li><a id="orgb96cfec"></a>Json<br /><ol class="org-ol"><li><a id="orgd2c838d"></a>Parse a json string?<br /><div class="org-src-container">
<pre class="src src-sh">    python &lt;&lt;- EOF
<span style="color: #ffff00; font-weight: bold;">import json</span>
<span style="color: #ffff00; font-weight: bold;">j = json.loads('{"one" : "1", "two" : "2", "three" : "3"}')</span>

<span style="color: #ffff00; font-weight: bold;">#print j['two']</span>
<span style="color: #ffff00; font-weight: bold;">EOF</span>
</pre>
</div></li></ol></li></ol></li></ol>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-2-4" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Lorem ipsum
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
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
</body>
</html>
</richcontent>
</node>

</node>


<node COLOR="#00b439" ID="sec-5-3" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Git
</p>
</body>
</html>
</richcontent>
<node COLOR="#990000" ID="sec-5-3-1" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Tags / branches lifecycle mgmt
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
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

<tr>
<td class="org-left">branch</td>
<td class="org-left">delete</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>git push origin --delete feature/example</code></td>
</tr>

<tr>
<td class="org-left">branch</td>
<td class="org-left">push &amp;&amp; set upstream</td>
<td class="org-left">&#xa0;</td>
<td class="org-left"><code>git push origin --set-upstream new-branch</code></td>
</tr>
</tbody>
</table>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-3-2" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>submodule lifecycle mgmt
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
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
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-5-3-3" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>rm a big file from history?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh"><span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">given : </span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">$ git lola --name-status</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">* f772d66 (HEAD, master) Login page</span>
| A     login.html
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">* cb14e Remove DVD-rip</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">| D     oops.iso</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">* ce36c98 Careless</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">| A     oops.iso</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">| A     other.html</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">* 5af4522 Admin page</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">| A     admin.html</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">* e738b63 Index</span>
<span style="color: #8B8989; font-style: italic;">#   </span><span style="color: #8B8989; font-style: italic;">A     index.html</span>

git rebase -i <span style="color: #96CBFE;">5af4522</span>

<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">pick ce36c98 Careless</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">pick cb14e Remove DVD-rip</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">pick f772d66 Login page</span>

<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">e ce36c98 Careless</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;"># pick cb14e Remove DVD-rip</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">pick f772d66 Login page</span>

$ git rm --cached oops.iso
$ git commit --amend -C HEAD
$ git rebase --continue


</pre>
</div>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-3-4" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>list branch sorted by last commit date?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">git for-each-ref --sort=-committerdate refs/heads/
</pre>
</div>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-3-5" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>grep history?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">git grep &lt;regexp&gt; $<span style="color: #8b0000;">(</span>git rev-list --all<span style="color: #8b0000;">)</span>
</pre>
</div>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-3-6" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>view ssh details?
</p>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-3-7" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>git v2.3.0 or higher:
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh"><span style="color: #ff69b4;">GIT_SSH_COMMAND</span>=<span style="color: #61CE3C;">"ssh -vvv"</span> git clone example
</pre>
</div>

<ol class="org-ol"><li><a id="orgbfc9847"></a>Git Lfs essentials?<br /><div class="org-center">
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

<p>
from: <a href="https://git-lfs.github.com/">https://git-lfs.github.com/</a>
</p></li></ol>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-5-3-8" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>config for colors?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">git config --global color.ui true
</pre>
</div>
</body>
</html>
</richcontent>
</node>

</node>

<node COLOR="#00b439" ID="sec-5-4" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Jq
</p>
</body>
</html>
</richcontent>
<node COLOR="#990000" ID="sec-5-4-1" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>recursively find a value by key?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">echo</span> <span style="color: #61CE3C;">'[{"a": 1}, {"b": 2}]'</span> | jq <span style="color: #61CE3C;">'.. | .a? // empty'</span>
<span style="color: #8B8989; font-style: italic;"># </span><span style="color: #8B8989; font-style: italic;">=&gt; 1</span>
</pre>
</div>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-4-2" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>output a array for bash?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">echo</span> <span style="color: #61CE3C;">'[1,2,3]'</span> | jq <span style="color: #61CE3C;">'.|@tsv'</span>
</pre>
</div>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-4-3" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>elements to array?
</p>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-4-4" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>recursively find all values of a given key?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">$ echo <span style="color: #61CE3C;">'{</span>
<span style="color: #61CE3C;">  "a": {</span>
<span style="color: #61CE3C;">    "b": 1,</span>
<span style="color: #61CE3C;">    "c": {</span>
<span style="color: #61CE3C;">      "d": {</span>
<span style="color: #61CE3C;">        "key": 42</span>
<span style="color: #61CE3C;">      },</span>
<span style="color: #61CE3C;">      "e": 666</span>
<span style="color: #61CE3C;">    }</span>
<span style="color: #61CE3C;">  }</span>
<span style="color: #61CE3C;">}'</span> | jq <span style="color: #61CE3C;">'..| .key?//empty'</span>

<span style="color: #8b0000;">[</span>
  <span style="color: #96CBFE;">42</span>
<span style="color: #8b0000;">]</span>

</pre>
</div>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-5-4-5" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>recursively find all path leading to a given key
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">$ echo <span style="color: #61CE3C;">'{</span>
<span style="color: #61CE3C;">  "a": {</span>
<span style="color: #61CE3C;">    "b": 1,</span>
<span style="color: #61CE3C;">    "c": {</span>
<span style="color: #61CE3C;">      "d": {</span>
<span style="color: #61CE3C;">        "key": 42</span>
<span style="color: #61CE3C;">      },</span>
<span style="color: #61CE3C;">      "e": 666</span>
<span style="color: #61CE3C;">    }</span>
<span style="color: #61CE3C;">  }</span>
<span style="color: #61CE3C;">}'</span> | jq <span style="color: #61CE3C;">'path (..| .key?//empty)'</span>

<span style="color: #8b0000;">[</span>
  <span style="color: #61CE3C;">"a"</span>,
  <span style="color: #61CE3C;">"c"</span>,
  <span style="color: #61CE3C;">"d"</span>,
  <span style="color: #61CE3C;">"key"</span>
<span style="color: #8b0000;">]</span>

</pre>
</div>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-5-4-6" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>delete the key of an object?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">echo</span> <span style="color: #61CE3C;">'{"k": 1}'</span> | jq <span style="color: #61CE3C;">'del(.k)'</span>
</pre>
</div>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-5-4-7" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>reduce ?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh"><span style="color: #4c83ff;">echo</span> <span style="color: #61CE3C;">'[1,2,3]'</span> <span style="color: #61CE3C;">\</span>
| jq <span style="color: #61CE3C;">'reduce .[] as $item (0; . + $item)'</span>
</pre>
</div>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-5-4-8" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>get all the values of an object?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">jq -n <span style="color: #61CE3C;">'{"a": 1} | .[]'</span>
<span style="color: #96CBFE;">1</span>
</pre>
</div>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-5-4-9" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>convert string to upper case?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">$ jq -n <span style="color: #61CE3C;">'"abCD" | ascii_upcase'</span>
<span style="color: #61CE3C;">"ABCD"</span>
</pre>
</div>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-5-4-10" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>jq regexes cheet sheat ?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<p>
Flags
</p>

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
<td class="org-left">g</td>
<td class="org-left">Global match, find all not just the first</td>
</tr>

<tr>
<td class="org-left">i</td>
<td class="org-left">case Insensitive</td>
</tr>

<tr>
<td class="org-left">m</td>
<td class="org-left">Multi line match '.' will match newlines</td>
</tr>

<tr>
<td class="org-left">n</td>
<td class="org-left">ignore empty matches</td>
</tr>

<tr>
<td class="org-left">p</td>
<td class="org-left">both s and m mode enabled</td>
</tr>

<tr>
<td class="org-left">s</td>
<td class="org-left">Single line mode <code>('^' -&gt; '\\A','$'-&gt;\\Z')</code></td>
</tr>

<tr>
<td class="org-left">l</td>
<td class="org-left">find Longest possible matches</td>
</tr>

<tr>
<td class="org-left">x</td>
<td class="org-left">eXtended regex format (ignore whitespace and comments)</td>
</tr>
</tbody>
</table>

<p>
Functions
</p>

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
<th scope="col" class="org-left">res if match</th>
<th scope="col" class="org-left">else</th>
<th scope="col" class="org-left">example</th>
</tr>
</thead>
<tbody>
<tr>
<td class="org-left">test</td>
<td class="org-left">val</td>
<td class="org-left">regex; flags</td>
<td class="org-left">true</td>
<td class="org-left">false</td>
<td class="org-left"><code>jq 'test("foo")'</code></td>
</tr>

<tr>
<td class="org-left">match</td>
<td class="org-left">"</td>
<td class="org-left">"</td>
<td class="org-left">{offset,length,string,captures}</td>
<td class="org-left">empty</td>
<td class="org-left"><code>jq 'match("(abc)+"; "g")'</code></td>
</tr>

<tr>
<td class="org-left">capture</td>
<td class="org-left">"</td>
<td class="org-left">"</td>
<td class="org-left">map of matches</td>
<td class="org-left">"</td>
<td class="org-left"><code>jq 'capture("(?&lt;a&gt;[a-z]+)-(?&lt;n&gt;[0-9]+)")'</code></td>
</tr>

<tr>
<td class="org-left">scan</td>
<td class="org-left">"</td>
<td class="org-left">"</td>
<td class="org-left">stream of non overlapping matches</td>
<td class="org-left">empty</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">split</td>
<td class="org-left">"</td>
<td class="org-left">"</td>
<td class="org-left">&lt;obsolete&gt;</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>

<tr>
<td class="org-left">splits</td>
<td class="org-left">"</td>
<td class="org-left">"</td>
<td class="org-left">stream matches</td>
<td class="org-left">?</td>
<td class="org-left"><code>jq 'splits("\\s+")'</code></td>
</tr>
</tbody>
</table>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-5-4-11" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>jq update ?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">   jq -n <span style="color: #61CE3C;">'{foo:1, bar:10} | .foo |= . + 1 '</span>
<span style="color: #8b0000;">{</span>
  <span style="color: #61CE3C;">"foo"</span>: <span style="color: #96CBFE;">2,</span>
  <span style="color: #61CE3C;">"bar"</span>: <span style="color: #96CBFE;">10</span>
<span style="color: #8b0000;">}</span>
</pre>
</div>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-5-4-12" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>delete in nested datastructure?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">jq -n <span style="color: #61CE3C;">'{a:1, b:2, c:3} | del(.. | .a?//empty)'</span>
</pre>
</div>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-5-4-13" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>recursively delete all keys leading to pair numbers?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<p>
Note: Probably could be written more concisely:
</p>
<div class="org-src-container">
<pre class="src src-sh">jq -n <span style="color: #61CE3C;">'{a:1, b:2, c:3} \</span>
<span style="color: #61CE3C;">  | del(.. | numbers | (if (. % 2) == 0 then . else empty end))'</span>
</pre>
</div>
</body>
</html>
</richcontent>
</node>


<node COLOR="#990000" ID="sec-5-4-14" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>recursively find containers having a value that match a given regex?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">   $ jq.help | jq <span style="color: #61CE3C;">'.. | select(.[]? | strings | test("transpose"))'</span>
<span style="color: #8b0000;">{</span>
  <span style="color: #61CE3C;">"body"</span>: <span style="color: #61CE3C;">"\nTranspose a possibly jagged matrix (an array of arrays).\nRows are padded with nulls so the result is always rectangular.\n"</span>,
  <span style="color: #61CE3C;">"examples"</span>: <span style="color: #006400;">[</span>
    <span style="color: #ff1493;">{</span>
      <span style="color: #61CE3C;">"input"</span>: <span style="color: #61CE3C;">"[[1], [2,3]]"</span>,
      <span style="color: #61CE3C;">"program"</span>: <span style="color: #61CE3C;">"transpose"</span>,
      <span style="color: #61CE3C;">"output"</span>: <span style="color: #ffff00;">[</span>
        <span style="color: #61CE3C;">"[[1,2],[null,3]]"</span>
      <span style="color: #ffff00;">]</span>
    <span style="color: #ff1493;">}</span>
  <span style="color: #006400;">]</span>,
  <span style="color: #61CE3C;">"title"</span>: <span style="color: #61CE3C;">"`transpose`"</span>
<span style="color: #8b0000;">}</span>
<span style="color: #8b0000;">(</span>...<span style="color: #8b0000;">)</span>
</pre>
</div>
</body>
</html>
</richcontent>
</node>

</node>


<node COLOR="#00b439" ID="sec-5-5" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Unicode
</p>
</body>
</html>
</richcontent>
<node COLOR="#990000" ID="sec-5-5-1" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Handy emoticon ?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">thumbs up</td>
<td class="org-left">👍</td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">👏y</td>
</tr>

<tr>
<td class="org-left">speaker</td>
<td class="org-left">🔇</td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">2🔈</td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">🔉</td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">🔊</td>
</tr>

<tr>
<td class="org-left">warn</td>
<td class="org-left">⚠</td>
</tr>

<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-5-2" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>draft
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">&#9484;&#9488;
&#9492;&#9496;
&#9484;&#9488;&#9484;&#9488;
&#9492;&#9496;&#9492;&#9496;
&#9484;&#9472;&#9488;
&#9492;&#9472;&#9496;
&#9484;&#9472;&#9472;&#9488;
&#9474;  &#9474;
&#9492;&#9472;&#9472;&#9496;
&#9484;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9488;
&#9474;      &#9474;
&#9474;      &#9474;
&#9492;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9496;
&#9581;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9582;
&#9474;      &#9474;
&#9474;      &#9474;
&#9584;&#9472;&#9472;&#9472;&#9472;&#9472;&#9472;&#9583;
&#9581;&#9472;&#9582;
&#9584;&#9472;&#9583;

&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;&#9488;&#9484;
&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;&#9492;&#9496;

</pre>
</div>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-5-3" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>use char by its code ?
</p>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-5-4" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>unicode number in circle
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
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
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-5-5" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>lambda
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">&#955;
</pre>
</div>
</body>
</html>
</richcontent>
</node>

<node COLOR="#990000" ID="sec-5-5-6" POSITION="right" FOLDED="false">
<font NAME="SansSerif" SIZE="14"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>elipsis?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<div class="org-src-container">
<pre class="src src-sh">&#8230;
</pre>
</div>
</body>
</html>
</richcontent>
</node>

</node>

</node>


<node COLOR="#0033ff" ID="sec-6" POSITION="left" FOLDED="true">
<font NAME="SansSerif" SIZE="18"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Visualization
</p>
</body>
</html>
</richcontent>
<node COLOR="#00b439" ID="sec-6-1" POSITION="left" FOLDED="false">
<font NAME="SansSerif" SIZE="16"/>
<edge STYLE="bezier" WIDTH="thin"/>

<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>Online visualization of Wikipedia's graph?
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<ul class="org-ul">
<li><a href="http://tools.medialab.sciences-po.fr/seealsology/">http://tools.medialab.sciences-po.fr/seealsology/</a></li>
<li><a href="http://seealso.org/">http://seealso.org/</a></li>
</ul>
</body>
</html>
</richcontent>
</node>

</node>

</node>
</map>
