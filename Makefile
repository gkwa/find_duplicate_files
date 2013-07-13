t: fdups.py
t: scratch
	python fdups.py scratch

scratch: Makefile
	mkdir -p scratch/1
	echo 1 >scratch/1/1

	mkdir -p scratch/2
	echo 1 >scratch/2/1

	mkdir -p scratch/3
	echo 1 >scratch/3/1

	mkdir -p scratch/4
	echo 2 >scratch/4/1

	mkdir -p scratch/5
	echo 2 >scratch/5/1

fdups.py:
	curl -O https://gist.github.com/miku/1158681/raw/53236287b23764be201b32690a990346cf4bd968/fdups.py

clean:
	rm -rf scratch
