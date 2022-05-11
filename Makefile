CC=/opt/gnu/arm/bin/arm-eabi-gcc
CFLAGS=-Wall -gdwarf-2

all: test_map test_red test_map2 test_red2

OBJS= map.o multiplication.o essai_map.o gestion_tab.o fg.o es.o
OBJS1=red.o essai_red.o gestion_tab.o fg.o es.o multiplication.o

OBJS2= map2.o multiplication.o essai_map2.o gestion_tab.o fg2.o es.o

es.o: es.s 
	${CC} ${CFLAGS} -c $< -o $@

map.o:	map.s  
	${CC} ${CFLAGS} -c $< -o $@

multiplication.o:	multiplication.s
	${CC} ${CFLAGS} -c $< -o $@

essai_map.o : essai-map.s  
	${CC} ${CFLAGS} -c $< -o $@

gestion_tab.o: gestion_tab.s 
	${CC} ${CFLAGS} -c $< -o $@

fg.o: fg.s 
	${CC} ${CFLAGS} -c $< -o $@

red.o: red.s 
	${CC} ${CFLAGS} -c $< -o $@

essai_red.o: essai-red.s 
	${CC} ${CFLAGS} -c $< -o $@

test_map: ${OBJS}
	${CC} ${OBJS} -o $@

test_red: ${OBJS1}
	${CC} ${OBJS1} -o $@

map2.o:	map2.s  
	${CC} ${CFLAGS} -c $< -o $@

essai_map2.o : essai-map2.s  
	${CC} ${CFLAGS} -c $< -o $@

fg2.o: fg2.s 
	${CC} ${CFLAGS} -c $< -o $@

test_map2: ${OBJS2}
	${CC} ${OBJS2} -o $@

clean:
	/bin/rm -rf *.o