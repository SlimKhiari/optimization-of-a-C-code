#-----------------------------------------------------------------------------------------------------------------------------------#
#version de la baseline#
#-----------------------------------------------------------------------------------------------------------------------------------#

#all: nbody.gcc nbody.icc nbody.icx

#nbody.gcc: nbody.c
#	gcc -g3 -march=native -mavx2 -Ofast -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp

#nbody.icc: nbody.c
#	icc -g3 -xhost -Ofast -qopt-report $< -o $@ -qmkl -qopenmp

#nbody.icx: nbody.c
#	icx -g3 -xhost -Ofast -qopt-report $< -o $@ -qmkl -qopenmp

#clean:
#	rm -Rf *~ nbody.gcc nbody.icc nbody.icx *.optrpt

#-----------------------------------------------------------------------------------------------------------------------------------#
#version de l'aos#
#-----------------------------------------------------------------------------------------------------------------------------------#

#all: nbody_aos.gcc nbody_aos.icc nbody_aos.icx

#nbody_aos.gcc: nbody_aos.c
#	gcc -g3 -march=native -mavx2 -Ofast -fopt-info-all=nbody_aos.gcc.optrpt $< -o $@ -lm -fopenmp

#nbody_aos.icc: nbody_aos.c
#	icc -g3 -xhost -Ofast -qopt-report $< -o $@ -qmkl -qopenmp

#nbody_aos.icx: nbody_aos.c
#	icx -g3 -xhost -Ofast -qopt-report $< -o $@ -qmkl -qopenmp

#clean:
#	rm -Rf *~ nbody_aos.gcc nbody_aos.icc nbody_aos.icx *.optrpt

#-----------------------------------------------------------------------------------------------------------------------------------#
#version de l'aos avec l'amélioration de la multiplication (division)
#-----------------------------------------------------------------------------------------------------------------------------------#

#all: nbody_aos_division.gcc nbody_aos_division.icc nbody_aos_division.icx

#nbody_aos_division.gcc: nbody_aos_division.c
#	gcc -g3 -march=native -mavx2 -Ofast -fopt-info-all=nbody_aos.gcc.optrpt $< -o $@ -lm -fopenmp

#nbody_aos_division.icc: nbody_aos_division.c
#	icc -g3 -xhost -Ofast -qopt-report $< -o $@ -qmkl -qopenmp

#nbody_aos_division.icx: nbody_aos_division.c
#	icx -g3 -xhost -Ofast -qopt-report $< -o $@ -qmkl -qopenmp

#clean:
#	rm -Rf *~ nbody_aos_division.gcc nbody_aos_division.icc nbody_aos_division.icx *.optrpt

#-----------------------------------------------------------------------------------------------------------------------------------#
#version de l'aos avec l'amélioration de la multiplication  (division) + puissance
#-----------------------------------------------------------------------------------------------------------------------------------#

all: nbody_aos_division_puissance.gcc nbody_aos_division_puissance.icc nbody_aos_division_puissance.icx

nbody_aos_division_puissance.gcc: nbody_aos_division_puissance.c
	gcc -g3 -march=native -mavx2 -Ofast -fopt-info-all=nbody_aos.gcc.optrpt $< -o $@ -lm -fopenmp

nbody_aos_division_puissance.icc: nbody_aos_division_puissance.c
	icc -g3 -xhost -Ofast -qopt-report $< -o $@ -qmkl -qopenmp

nbody_aos_division_puissance.icx: nbody_aos_division_puissance.c
	icx -g3 -xhost -Ofast -qopt-report $< -o $@ -qmkl -qopenmp

clean:
	rm -Rf *~ nbody_aos_division_puissance.gcc nbody_aos_division_puissance.icc nbody_aos_division_puissance.icx *.optrpt
































