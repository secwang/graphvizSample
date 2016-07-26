DOT=$(wildcard *.dot)
DOTPNG=$(DOT:.dot=.png)

all: dot

dot: $(DOTPNG)

%.png : %.dot	
	dot -Tpng $< > $@

.PHONY: dot

clean :
	rm *.png 
