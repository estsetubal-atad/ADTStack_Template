default:
	gcc -Wall -o prog main.c input.c stackElem.c stackArrayList.c
debug:
	gcc -Wall -o prog -g main.c input.c stackElem.c stackArrayList.c
clean:
	rm -f prog
