# synomin7
SPK's for DSM7 | Current and Latest

CREDITs:

toafez for the DSM7DemoSPK, the toolset and the creativity: https://github.com/toafez/DSM7DemoSPK
vletroye for the impressions of the CGI router and the SSH administrator query during installation
gnadelwartz for the actual work on Synomin
webmin for the great administration interface

Preface:

I do not give any guarantees, warranty or anything else in case of damage or improper use. What is offered here is for experienced users who know what they are doing.

I would like to thank @Toafez aka Tommes (https://github.com/toafez) as well as @Vletroye aka Valéry (https://github.com/vletroye) who have dealt intensively with the DSM7 problem and were able to bring this package here at least to 95% to life =)

Also a big thank you to @Gnadelwartz aka Kay (https://github.com/gnadelwartz) who put together the original Synomin package.

I can now see what a huge pain in the ass this is thanks to Synology, after spending over 10 days in trial and error trying to rebuild the link to the Synology interface.

Also thanks to the Webmin team - an ingenious interface that leaves nothing to be desired.

The offered SPK packages refer to the install.sh file in the Target/Scripts folder:

Current http://download.webmin.com/devel/tarballs/
Latest http://builds.webmin.dev/

The Latest is missing the german language files, these can be uploaded later via the Current archive. ( webmin/lang & webmin/authentic-theme/lang )

One more thing: its not a 100% automated installation package - unfortunately this was not possible for me, also updates dont seem to work ( access denied error )
There are probably files in the package that are not needed, I hope from the "release" that maybe someone can optimize it, because I am currently a bit unnerved.

Installation

Perl or *PKG) as well as IPKG/OPKG must be installed in advance.
The recommended modules for *PKG are to be installed in advance: git dstat Im-sensors per-net-ssleay
The optional modules also in advance ( Who has need ): coreutils git git-manpages dstat man man-pages Im-sensors iptables mc openssl perl perl-net-ssleay Isof gcc make

The archive etc contains files for the root access history - if you need them you can test them yourself
The file /var/packages/webmin/target/ui/app_permissions.sh has always given me a strange output in the console:

"title: 'webmin:app:title' is neither mail string key nor i18n format." - the user webmin became part of the admin group anyway.

Upload the SPK of your choice via DSM package management, ignore the waming ( thirdparty ), your user is already in the SSH query, add password manually.

The installation runs through, stop Webmin and log in via SSH.

Change the path to /var/packages/webmin/target/scripts/ in Putty and execute the ./install.sh.

After that I changed user and group manually in the terminal ( path: Ivar/packages/webmin/target/webmin/:

sudo chown -R webmin:webmin /webmin/

This is it

Changes / Compile yourself:

The content of the working archive must be extracted to ./working/* so that the following structure is created:

/working/etc
/working/man
/working/reset
/working/scripts
/working/update

Please follow the instructions of Toafez:

https://github.com/toafez/DSM7DemoSPK

License

This program is free software. You can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful to you, but WITHOUT ANY WARRANTY, even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. For details, see the GNU General Public License file.