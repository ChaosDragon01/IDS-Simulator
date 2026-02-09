CXX = g++
# Adding -g for debugging info
CXXFLAGS = -std=c++17 -Wall -g -Iinclude

# Explicitly list main.cpp + all .cpp files in src subdirectories
# This is safer than using "**" which doesn't always work in Make
SRC = main.cpp \
      $(wildcard src/core/*.cpp) \
      $(wildcard src/detection/*.cpp) \
      $(wildcard src/utils/*.cpp)

OBJ = $(SRC:.cpp=.o)

# Windows executables should have .exe extension
TARGET = idsSim.exe

# Main Build Rule
$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) $(OBJ) -o $(TARGET)

# Explicit Compile Rule (compiles .cpp to .o)
# This ensures header dependencies are respected and flags are applied
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)