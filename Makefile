NM=lfs
VER=8.2
SRC_PATH=toolchain

main:
	docker build --tag $(NM):$(VER) .
run:
	sudo docker run --rm -ti --privileged --name $(NM) $(NM):$(VER)
wget-list:
	rm $@
	wget http://www.linuxfromscratch.org/lfs/downloads/$(VER)/$@
load-src:
	wget --input-file=wget-list --continue --directory-prefix=$(SRC_PATH)
rm-src:
	rm $(SRC_PATH)/*
