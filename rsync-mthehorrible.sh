# Jekyll
#rsync -e "/usr/bin/ssh"  --bwlimit=2000 -av --delete /home/mm/apps/git/mthehorrible.cc/_site/ mthehorrible@baratheon.dreamhost.com:/home/mthehorrible/mthehorrible.cc

# Zola
#rsync -e "/usr/bin/ssh"  --bwlimit=2000 -av --delete /home/mm/apps/git/zola-sites/mthehorrible/public/ mthehorrible@baratheon.dreamhost.com:/home/mthehorrible/mthehorrible.cc

# Zola Github
rsync -e "/usr/bin/ssh"  --bwlimit=2000 -av --delete /home/mm/apps/git/mthehorrible.cc/current/public/ mthehorrible@baratheon.dreamhost.com:/home/mthehorrible/mthehorrible.cc
