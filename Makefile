# kiss - c++ makefile project #

# executable and directories
EXEC = plot
SDIR = source
IDIR = include
LDIR =
# for example LDIR = -L~/dev-tools/libraries/plot/lib
ODIR = obj
BDIR = build

#compile and link flags
CXX    = g++
CFLAGS = -I$(IDIR)
LIBS   = $(LDIR)
# for example CFLAGS = -I$(IDIR) -I~/dev-tools/libraries/plot/share/examples/c++ -I~/dev-tools/libraries/plot/include
# for example LIBS   = $(LDIR) -lplotcxx

SRC = $(wildcard $(SDIR)/*.cpp)
OBJ = $(patsubst $(SDIR)/%.cpp, $(ODIR)/%.o, $(SRC))

$(BDIR)/$(EXEC): $(OBJ)
	$(CXX) -o $(BDIR)/$(EXEC) $(CFLAGS) $(LDFLAGS) $(OBJ) $(LIBS) 

$(ODIR)/%.o: $(SDIR)/%.cpp
	$(CXX) $(CFLAGS) -c $< -o $@

clean:
	rm $(ODIR)/* $(BDIR)/*
