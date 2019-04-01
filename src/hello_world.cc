#include <iostream>
#include <vector>
// #include <jni.h>

int main(int argc, char *argv[]) {
    int a = 0;
    if (argc > 1) {
        std::cout << argv[1] << std::endl;
    }

    std::vector<int> ab;
    ab.emplace_back(1);
    std::cout << "hello xxx" << a << std::endl;
    std::cout << "hello hhhh" << std::endl;
    return 0;
}
