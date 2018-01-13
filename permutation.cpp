

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

void permutation::permutations_available(int permutation_to_print) {
    std::vector<char> copy_of_vector(this->letters->size());
    std::copy(this->letters->begin(), this->letters->end(), copy_of_vector.begin());
    std::sort(copy_of_vector.begin(), copy_of_vector.end());
    int index = 1;
    do {
        if (permutation_to_print == -1 || permutation_to_print == index) {
            std::cout << "Permutation #" << index++ << " : ";
            print_vec(copy_of_vector);
            std::cout << std::endl;
        } else {
            index++;
        }

    } while (std::next_permutation(copy_of_vector.begin(), copy_of_vector.end()));

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

void permutation::print_vec(const std::vector<char> &other) {
    for (char c : other) {
        std::cout << c;
    }
}


#pragma clang diagnostic pop