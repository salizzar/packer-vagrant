cat > /etc/apt/sources.list <<SOURCES
deb     http://mirror-debian.locaweb.com.br/debian              wheezy          main  contrib non-free
deb     http://mirror-debian.locaweb.com.br/debian-security     wheezy/updates  main  contrib non-free
SOURCES

apt-get update

apt-get upgrade --yes --force-yes

