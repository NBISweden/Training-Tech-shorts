#pragma once
#include <string>

class Engine {
public:
    Engine(const std::string& name);
    void init();
    void run();
    void shutdown();
private:
    std::string name;
};
