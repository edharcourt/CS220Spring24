
row: main.c init_rm.c avg_mat_rm.c init.h avg_mat.h 
	gcc -O3 -o row main.c init_rm.c avg_mat_rm.c

col: main.c init_cm.c avg_mat_cm.c init.h avg_mat.h 
	gcc -O3 -o col main.c init_cm.c avg_mat_cm.c

clean:
	rm -f col row *.o 
