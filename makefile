
image:image.c image.h
	gcc -g image.c -o image -lm

image-pthread: image-pthread.c image-pthread.h
	gcc -std=c99 image-pthread.c -o image-pthread -lpthread -lm

image-openmp: image-openmp.c image-openmp.h
	gcc image-openmp.c -o image-openmp  -fopenmp -lm
clean:
	rm -f image image-pthread image-openmp output.png
	\rm -rf *.dSYM

