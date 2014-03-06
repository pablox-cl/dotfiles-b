# TODO: check if stuff exists first

# ~/.dropbox-dist/dropboxd &
( /opt/dropbox/dropbox ) &

( urxvtd -f -q -o ) &

( gnome-do ) &

( numlockx on ) &

( parcellite ) &

( feh --bg-max "$(find $HOME/customize/wallpaper -iregex '.*\.\(jpg\|png\)' | shuf | head -n 1)" ) &

( xcape ) &

( tomboy --tray ) &
