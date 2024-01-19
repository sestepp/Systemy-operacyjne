#include <iostream>
#include <csignal>
#include <cstdlib>

int main(int argc, char *argv[]) {
    int pid = std::atoi(argv[1]);
    int signalNum = std::atoi(argv[2]);

    if (kill(pid, signalNum) == 0) {
        std::cout << "Sygnał " << signalNum << " do procesu o PID " << pid << "\n";
    }
    return 0;
}
