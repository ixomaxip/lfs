NM=lfs
T=8.2

main:
	docker build --tag $(NM):$(T) .
run:
	sudo docker run --rm -ti --privileged --name $(NM) $(NM):$(T)
