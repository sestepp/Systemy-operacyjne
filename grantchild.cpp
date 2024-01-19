#include <iostream>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    std::cout << "Parent PID: " << getpid() << std::endl;
    getchar();
    pid_t child_pid = fork();

    if (child_pid == 0) {
        std::cout << "Child PID: " << getpid() << std::endl;
        std::cout << "Parent PID (PPID): " << getppid() << std::endl;
        getchar();
        pid_t grandchild_pid = fork();

        if (grandchild_pid == 0) {
            std::cout << "Grandchild PID: " << getpid() << std::endl;
            std::cout << "Child PID: " << getppid() << std::endl;
            getchar();
            return 0;
        }
    } else {
        wait(NULL);
        getchar();
    }
    return 0;
}
