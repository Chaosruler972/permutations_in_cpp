

#include "permutation.h"

int main() {
    permutation permutation1("abcd");

    auto* vec = permutation1.permutations_available();
    int index = 0 ;
    for(std::string str : *vec)
    {
        std::cout << "Permutation #" << index++ << " :" << str << std::endl;
    }
    delete vec;
    return 0;
}