# arm-eabi-gcc -c es.s gestion_tab.s fg.s multiplication.s
# arm-eabi-gcc -c $1.s
# arm-eabi-gcc -o $1 $1.o es.o gestion_tab.o fg.o multiplication.o
make clean
make $1