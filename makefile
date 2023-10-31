
image:image.c image.h
	gcc -g image.c -o image -lm

image-pthread: image-pthread.c image-pthread.h
	gcc -g image-pthread.c -o image-pthread -lpthread -lm

image-openmp: image-openmp.c image-openmp.h
	gcc -std=c99 -g image-openmp.c -o image-openmp  -fopenmp -lm
clean:
	rm -f image image-pthread image-openmp output.png
	\rm -rf *.dSYM