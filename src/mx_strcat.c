#include "../inc/libmx.h"

char *mx_strcat(char *restrict s1, const char *restrict s2){
    char *ptr = s1;
    while (*s1 != '\0'){
        s1++;
    }
    int length = mx_strlen(s2);
    for (int i = 0; i < length; i++){
        *s1 = *(char*)s2;
        s1++;
        s2++;
    }
    *s1 = '\0';
    return ptr;
}

