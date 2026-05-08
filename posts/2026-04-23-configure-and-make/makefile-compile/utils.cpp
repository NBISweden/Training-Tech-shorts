#include "utils.h"
#include <iostream>

void log(const std::string& message) {
    std::cout << "[LOG] " << message << std::endl;
}

int add(int a, int b) {
    return a + b;
}
