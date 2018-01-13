//
// Created by chaosruler on 1/13/18.
//


#include "permutation.h"

#pragma clang diagnostic push
#pragma ide diagnostic ignored "OCUnusedGlobalDeclarationInspection"
permutation::permutation(std::string word)
{
    this->letters = new std::vector<char>;
    for(char letter: word)
    {
        add_letter_to_list(letter);
    }

}

bool permutation::add_letter_to_list(char letter) {
    bool found = false;
    for(char input : *this->letters)
    {
        if(input == letter)
            found=true;
    }
    if(!found)
        letters->push_back(letter);
    if(!found)
        amount++;
    return !found;
}




permutation::~permutation()
{
    delete this->letters;
}

std::ostream &operator<<(std::ostream &os, const permutation &permutation1) {
    os << "letters: " << std::endl;
    int index = 1;
    for(char letter : *permutation1.letters)
        os << std::endl << "Index #" << std::to_string(index++) << " " << letter << std::endl;
    return os;
}

char permutation::operator[](int index) {
    if(index >= this->letters->size() || index < 0)
        return ' ';
    return (*this->letters)[index];
}

int permutation::getAmount() const {
    return amount;
}

bool permutation::remove_letter_from_list(char letter)
{
    int found = -1;
    for(auto i=0; i<this->letters->size();i++)
    {
        if((*this->letters)[i] == letter)
            found=i;
    }
    if(found!= -1)
    {
        this->amount--;
        auto it = this->letters->begin();
        std::advance(it, found);
        this->letters->erase(it);
        return true;
    }
    return false;
}

std::vector<std::string> * permutation::permutations_available()
{
    auto * vec = new std::vector<std::string>;
    auto* mtx = new std::mutex();
    std::string str;
    for(char c : *this->letters)
    {
        str+=c;
    }
    std::thread trd([this,&str,&vec,&mtx] { handle_permutation(str, 0, static_cast<int>(str.size() - 1),vec,mtx);} );
    trd.join();
    delete mtx;

    auto * vec2 = new std::vector<std::string>;
    for(std::string str2 : *vec)
    {
        bool found = false;
        for(std::string str3 : *vec2)
        {
            if(str2 == str3)
                found=true;
        }
        if(!found)
            vec2->push_back(str2);
    }
    delete vec;
    return vec2;
}

void permutation::swap(std::string& str,int i,int j)
{
    char temp = str[i];
    str[i] = str[j];
    str[j] = temp;
}

void permutation::handle_permutation(std::string str,int l, int r,std::vector<std::string>* vec, std::mutex* mtx)
{
    int i;
    if( l == r)
    {
        mtx->lock();
        vec->push_back(str);
        mtx->unlock();
    }
    else
    {
        for(i=l; i<=r;i++)
        {
            swap(str,l,r);
            std::thread trd([this,&str,&vec,&l,&r,&mtx] { handle_permutation(str,l+1,r,vec,mtx);} );
            trd.join();
        }
    }
}



#pragma clang diagnostic pop