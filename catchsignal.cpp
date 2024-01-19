#include <iostream>
#include <csignal>
#include <unistd.h>

void signalHandler(int signalNum) {
    std::cout << "Otrzymałem sygnał: " << signalNum << "\n";
}

int main() {
    for (int i = 1; i <= 64; ++i) {
        signal(i, signalHandler);
    }
    std::cout << "Czekam na sygnał\n";

    while (true) {
        usleep(100000);
    }

    return 0;
}
