#This is the Makefile for the Qt_Testapp Scripts

CPPFLAGS += -std=c++11 -pedantic -Wall
debug: CPPFLAGS += -g

EXES :=  testapp_backend

SRCS := ${EXES:=.cpp}

all: ${EXES}

debug: ${EXES}

clean:	
	rm -f ${EXES}
	
test: testapp_backend
	./testapp_backend case=A1 file=TESTX

.PHONY: all clean test debug

%: %.cpp
#  recipe to execute (built-in):
	$(LINK.cpp) $^ $(LOADLIBES) $(LDLIBS) -o $@
