#include <iostream>
#include <unistd.h>
#include <string>

int main() {
    std::cout << "Pid: " << getpid() << std::endl;
    std::cout << "Enter the number of bytes to allocate:" << std::endl;
    for (std::string line; std::getline(std::cin, line);) {
        int numBytes = stoi(line);
        char * c = new char[numBytes]; // char is 1 byte
    }
    return 0;
}
