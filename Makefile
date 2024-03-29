.PHONY: all clean

CXX = g++ -std=c++14 -Wall -Wextra -w -O2
lib = util.o board.o score.o minesawyer.o menu_scene.o chooser_scene.o end_scene.o game_scene.o saw_game_scene.o score_scene.o

# Build entire program
all: main

main: main.o  ${lib}
	${CXX} -o main ${lib} main.o

util.o: .\src\util.cpp .\header\util.h
	${CXX} -c .\src\util.cpp

board.o: .\src\board.cpp .\header\board.h
	${CXX} -c .\src\board.cpp

score.o: .\src\score.cpp .\header\score.h
	${CXX} -c .\src\score.cpp

minesawyer.o: .\src\minesawyer.cpp .\header\minesawyer.h
	${CXX} -c .\src\minesawyer.cpp

menu_scene.o: .\src\menu_scene.cpp .\header\menu_scene.h
	${CXX} -c .\src\menu_scene.cpp

chooser_scene.o: .\src\chooser_scene.cpp .\header\chooser_scene.h
	${CXX} -c .\src\chooser_scene.cpp

end_scene.o: .\src\end_scene.cpp .\header\end_scene.h
	${CXX} -c .\src\end_scene.cpp

game_scene.o: .\src\game_scene.cpp .\header\game_scene.h
	${CXX} -c .\src\game_scene.cpp

saw_game_scene.o: .\src\saw_game_scene.cpp .\header\saw_game_scene.h
	${CXX} -c .\src\saw_game_scene.cpp

score_scene.o: .\src\score_scene.cpp .\header\score_scene.h
	${CXX} -c .\src\score_scene.cpp

main.o: main.cpp
	${CXX} -c main.cpp

# Build driver program for testing
driver: driver.o  ${lib}
	${CXX} -o driver ${lib} driver.o

driver.o: driver.cpp
	${CXX} -c driver.cpp

clean:
	rm *.o main.exe driver.exe
