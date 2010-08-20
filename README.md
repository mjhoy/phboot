## phboot ##

note: this is basically a work-under-progress. emphasis on
under. or maybe "rogr".

### usage ###

phboot [opts] source_dir [dest_dir]

e.g.,

phboot my_cool_photos/

Generates a directory `phboot` within the source directory
(or optionally a provided destination) containing copies
of the images and an index.html file displaying them,
ready to be thrown on a web server.

### install ###

    cd ~/bin
    wget http://github.com/mjhoy/phboot/raw/master/bin/phboot
    chmod +x phboot
