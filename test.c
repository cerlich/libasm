#include <unistd.h>

int main()
{
    write(1, "qouqou\n", 7);
    write(2, "qouqou\n", 7);
    write(0, "qouqou|", 10);
    write(3, "qouqou\n", 7);
}