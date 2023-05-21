# The title of the project.

# The date and time at which make was run.

# The number of lines of code contained in guessinggame.sh.

title = "Guessing Game"
datetime = $(shell date)
num_lines = 5

all:
	touch README.md
	echo "# $(title) \n" > README.md
	echo "$(datetime) \n" >> README.md
	echo "Number of lines : $(num_lines)" >> README.md

clean:
	rm README.md