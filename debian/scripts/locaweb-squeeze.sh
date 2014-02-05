cat > /etc/apt/sources.list <<SOURCES
deb     http://mirror-debian.locaweb.com.br/debian              squeeze         main  contrib non-free
deb     http://mirror-debian.locaweb.com.br/debian-security     squeeze/updates main  contrib non-free

deb     http://pacotes.linux.locaweb.com.br/coresqueeze/debian  stable          main  contrib non-free
deb-src http://pacotes.linux.locaweb.com.br/coresqueeze/debian  stable          main  contrib non-free
deb     http://pacotes.linux.locaweb.com.br/coresqueeze/debian  dell            main  contrib non-free
SOURCES

cat > /etc/apt/sources.list.d/fthospedagem.list <<FT_HOSPEDAGEM
deb     http://pacotes.linux.locaweb.com.br/fthospedagem/debian stable          main  contrib non-free
FT_HOSPEDAGEM

cat > /etc/apt/sources.list.d/ftsaas.list       <<FT_SAAS
deb     http://pacotes.linux.locaweb.com.br/ftsaas/debian       stable          main  contrib non-free
FT_SAAS

cat > /etc/apt/sources.list.d/ruby-1.9.2.list   <<RUBY192
deb     http://pacotes.linux.locaweb.com.br/ruby/debian         stable          main  contrib non-free
RUBY192

cat > /etc/apt/sources.list.d/ruby-1.9.3.list   <<RUBY193
#deb     http://pacotes.linux.locaweb.com.br/ruby/debian         ruby193         main  contrib non-free
RUBY193

apt-get update

apt-get upgrade --yes --force-yes

