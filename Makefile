CXX = g++
CXXFLAGS = -Wall -std=c++17
TARGET = mp

all: $(TARGET)

$(TARGET): main.o
	$(CXX) -o $(TARGET) main.o

main.o: src/main.cpp
	$(CXX) $(CXXFLAGS) -c src/main.cpp

clean:
	rm -f *.o $(TARGET)
