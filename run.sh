#g++ -I ./include test.cpp -o test -L ./lib -ldmp -ldynamicalsystems -lfunctionapproximators -lboost_system -lboost_filesystem

g++ -I ./include test.cpp runSimulationThrowBall.cpp -o test -L ./lib -ldmp -ldynamicalsystems -lfunctionapproximators -lboost_system -lboost_filesystem -std=c++11