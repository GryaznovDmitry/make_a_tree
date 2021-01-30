WARNINGS_CXX=-W -Wall -Wfloat-equal -Wpointer-arith -Wwrite-strings -Wno-format \
-Wno-long-long -Wcast-align -Winline -Werror -pedantic -pedantic-errors \
-Wunused -Wuninitialized \
--param inline-unit-growth=1000000 --param max-inline-insns-single=10000000 \
--param large-function-growth=10000000

CXXFLAGS = $(WARNINGS_CXX) -O2 -fPIC


all:  exam-fun.o exam-test.o 
	g++ $(CXXFLAGS) exam-fun.o exam-test.o

exam-fun.o: exam-fun.cpp exam-test.h 
	g++ -c $(CXXFLAGS) exam-fun.cpp

exam-test.o:  exam-test.cpp exam-test.h 
	g++ -c $(CXXFLAGS) exam-test.cpp

clean:
	rm *.o 
#	del *.o
