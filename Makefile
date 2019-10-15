# kiss - c++ makefile project #

# executable and directories
EXEC = plot
SDIR = source
IDIR = -Iinclude
# for example IDIR = -Iinclude -I~/dev-tools/libraries/plot/share/examples/c++ -I~/dev-tools/libraries/plot/include
LDIR =
# for example LDIR = -L~/dev-tools/libraries/plot/lib
ODIR = obj
BDIR = build

#compile and link flags
CXX    = g++
CFLAGS = -Wall -std=c++17 $(IDIR)
LIBS   = $(LDIR)
# for example LIBS = $(LDIR) -lplotcxx

SRC = $(wildcard $(SDIR)/*.cpp)
OBJ = $(patsubst $(SDIR)/%.cpp, $(ODIR)/%.o, $(SRC))

$(BDIR)/$(EXEC): $(OBJ)
	$(CXX) -o $(BDIR)/$(EXEC) $(CFLAGS) $(OBJ) $(LIBS) 

$(ODIR)/%.o: $(SDIR)/%.cpp
	$(CXX) $(CFLAGS) -c $< -o $@

clean:
	rm $(ODIR)/* $(BDIR)/*
