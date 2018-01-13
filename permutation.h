//
// Created by chaosruler on 1/13/18.
//

#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCUnusedGlobalDeclarationInspection"
#pragma ide diagnostic ignored "OCUnusedStructInspection"
#ifndef PERMUTATIONS_PERMUTATION_H
#define PERMUTATIONS_PERMUTATION_H

#include <iostream>
#include <vector>
#include <cmath>
#include <thread>
#include <mutex>

class permutation
{
    private:
            std::vector<char>* letters;
            int amount=0;
            void handle_permutation(std::string str,int l, int r,std::vector<std::string>* vec, std::mutex* mtx);
            void swap(std::string& str,int i,int j);
    public:
        explicit permutation(std::string word);
        bool add_letter_to_list(char letter);
        bool remove_letter_from_list(char letter);
        char operator[](int index);
        int getAmount() const;
        friend std::ostream &operator<<(std::ostream &os, const permutation &permutation1);
        std::vector<std::string> * permutations_available();
        ~permutation();
};


#endif //PERMUTATIONS_PERMUTATION_H

#pragma clang diagnostic pop