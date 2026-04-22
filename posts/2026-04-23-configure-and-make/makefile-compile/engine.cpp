#include "engine.h"
#include "utils.h"

Engine::Engine(const std::string& name) : name(name) {}

void Engine::init() {
    log("Initialising engine: " + name);
}

void Engine::run() {
    log("Engine running...");
    log("3 + 4 = " + std::to_string(add(3, 4)));
}

void Engine::shutdown() {
    log("Engine shutting down");
}
