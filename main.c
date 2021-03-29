#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

size_t ft_strlen(const char *str);
char *ft_strcpy(char *dst, const char *src);
int ft_strcmp(const char *s1, const char *s2);
char *ft_strdup(const char *s);
ssize_t write(int fd, const void *buf, size_t count);
//nasm -felf64 -o <object> <filename>
//gcc -o <output> <object>
int main()
{
    char *str = "An assembly (or assembler) language, often abbreviated asm, is a low-level programming language for a computer, or other programmable device, in which there is a very strong (but often not one-to-one) correspondence between the language and the architecture’s machine code instructions. Each assembly language is specific to a particular computer architecture. In contrast, most high-level programming languages are generally portable across multiple architectures but require interpreting or compiling. Assembly language may also be called symbolic machine code.";
    char *empty = "";
    printf("===================strlen===================\n");
    printf("STR : \n%s\n\n", str);
    printf("strlen : %lu\n", strlen(str));
    printf("ft_strlen: %lu\n", ft_strlen(str));
    printf("\nEMPTY STRING :\n\n");
    printf("strlen : %lu\n", strlen(empty));
    printf("ft_strlen: %lu\n", ft_strlen(empty));
    printf("\n===================strcpy===================\n");
    char dst[strlen(str) + 1];
    printf("strcpy : |%s|\n\n", strcpy(dst, str));
    printf("ft_strcpy : |%s|\n", ft_strcpy(dst, str));
    printf("\nEMPTY STRING :\n\n");
    printf("strcpy : |%s|\n", strcpy(dst, empty));
    printf("ft_strcpy : |%s|\n", ft_strcpy(dst, empty));
    printf("\n===================strcmp===================\n");
    char *str1 = "An assembly";
    char *str2 = "An asm";
    printf("\nSTR1 > STR2\n");
    printf("strcmp : |%d|\n", strcmp(str1, str2));
    printf("ft_strcmp : |%d|\n", ft_strcmp(str1, str2));
    char *str3 = "An assembly";
    char *str4 = "An asmb";
    printf("\nSTR1 < STR2\n");
    printf("strcmp : |%d|\n", strcmp(str4, str3));
    printf("ft_strcmp : |%d|\n", ft_strcmp(str4, str3));
    printf("\nSTR1 = STR2\n");
    printf("strcmp : |%d|\n", strcmp(str1, str1));
    printf("ft_strcmp : |%d|\n", ft_strcmp(str1, str1));
    printf("\n===================strdup===================\n");
    printf("strdup : |%s|\n\n", strdup(str));
    printf("ft_strdup : |%s|\n", ft_strdup(str));
    printf("\nEMPTY STRING :\n\n");
    printf("strdup : |%s|\n", strdup(""));
    printf("ft_strdup : |%s|\n\n", ft_strdup(""));
    printf("\n===================strdup===================\n");      
}