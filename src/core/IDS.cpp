#include <iostream>
#include "include/core/IDS.h" // Notice we use "core/" because -I points to "include"

IDS::IDS() {
    std::cout << "IDS System Initialized." << std::endl;
}

void IDS::start() {
    std::cout << "IDS Monitoring Started..." << std::endl;
}