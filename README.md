# install-mcs-plugin
Tired of installing your Minecraft server plugins by using your file manager? try this. its better, trust me.
<h2> Requirements </h2>
<ul>
  <li> A unix-like operating system that uses bash (shell) </li>
  <li> A Minecraft server. (duh) </li>
  <li> Literally any piece of hardware, if you're running a server, you can run this. </li>
</ul>
<h2> Installation </h2>
Installation is fairly easy, place install_plugin.sh in your Minecraft server's folder (to keep track of it easily).
Open up the file and change the directory for where your server is located to the address where you have your folder.
Save the file and close the window.
Find your .bashrc file on your computer (usually located in your home folder but hidden), open it up and scroll to the bottom, add this line to the end `./path-to-mcserver/install_plugin.sh` (replace path-to-mcserver with your path.).
Save, reopen any open terminals, enjoy.

<h2> Using the Script </h2>
You can view the help command by using `install-mcs-plugin -help`
