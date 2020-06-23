
FFLAGS := -ipo -O2 -xHost
CXXFLAGS := -ipo -O2 -xHost -std=c++17
LDFLAGS := -ipo

text: main.o solver.o
	icpc $(LDFLAGS) -o $@ $^

main.o: main.cpp
	icpc $(CXXFLAGS) -c main.cpp

solver.o: solver.f90
	ifort $(FFLAGS) -c solver.f90
