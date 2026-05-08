#include "engine.h"

int main() {
    Engine engine("MyEngine");
    engine.init();
    engine.run();
    engine.shutdown();
    return 0;
}
