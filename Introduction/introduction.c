#include <stdio.h>
#include "greeting.h"
#include "recipient.h"

int main()
{
    printf("%s %s.\n", greet(), recipient());
    return 0;
}

