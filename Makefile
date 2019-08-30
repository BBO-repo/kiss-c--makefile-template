# kiss - c++ makefile project #


# executable and directories
EXEC = plot
SDIR = source
IDIR = include
LDIR = -LC:\dev-tools\libraries\plplot\bin
ODIR = obj
BDIR = build

#compile and link flags
CXX    = g++
CFLAGS = -I$(IDIR) -IC:\dev-tools\libraries\plplot\share\plplot5.15.0\examples\c++ -IC:\dev-tools\libraries\plplot\include\plplot
LIBS   = $(LDIR) -lplplotcxx

SRC = $(wildcard $(SDIR)/*.cpp)
OBJ = $(patsubst $(SDIR)/%.cpp, $(ODIR)/%.o, $(SRC))

$(BDIR)/plot: $(OBJ)
	$(CXX) -o $(BDIR)/plot $(CFLAGS) $(LDFLAGS) $(LIBS) $(OBJ) 

$(ODIR)/%.o: $(SDIR)/%.cpp
	$(CXX) $(CFLAGS) -c $< -o $@

clean:
	del /q $(ODIR)\* $(BDIR)\$(EXEC).exe