#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <fcntl.h>
#include <unistd.h>
#include "libfts.h"
int main(int ac, char **av)
{
	/*
	** ft_tolower
	*/

	printf("ft_tolower('b') = %c\n", ft_tolower('b'));
	printf("ft_tolower('A') = %c\n", ft_tolower('A'));
	printf("ft_tolower('@') = %c\n\n", ft_tolower('@'));

	/*
	** ft_toupper
	*/

	printf("ft_toupper('b') = %c\n", ft_toupper('b'));
	printf("ft_toupper('A') = %c\n", ft_toupper('A'));
	printf("ft_toupper('@') = %c\n\n", ft_toupper('@'));

	/*
	** ft_isascii
	*/

	printf("ft_isascii('b') = %i\n", ft_isascii('b'));
	printf("ft_isascii('A') = %i\n", ft_isascii('A'));
	printf("ft_isascii('@') = %i\n", ft_isascii('@'));
	printf("ft_isascii(127) = %i\n", ft_isascii(127));
	printf("ft_isascii(128) = %i\n\n", ft_isascii(128));
	
	/*
	** ft_isdigit
	*/

	printf("ft_isdigit('b') = %i\n", ft_isdigit('b'));
	printf("ft_isdigit('A') = %i\n", ft_isdigit('A'));
	printf("ft_isdigit('@') = %i\n", ft_isdigit('@'));
	printf("ft_isdigit('1') = %i\n", ft_isdigit('1'));
	printf("ft_isdigit( 1 ) = %i\n\n", ft_isdigit(1));

	/*
	** ft_isalpha
	*/

	printf("ft_isalpha('b') = %i\n", ft_isalpha('b'));
	printf("ft_isalpha('A') = %i\n", ft_isalpha('A'));
	printf("ft_isalpha('@') = %i\n", ft_isalpha('@'));
	printf("ft_isalpha('1') = %i\n", ft_isalpha('1'));
	printf("ft_isalpha( 1 ) = %i\n\n", ft_isalpha(1));

	/*
	** ft_isalnum
	*/

	printf("ft_isalnum('b') = %i\n", ft_isalnum('b'));
	printf("ft_isalnum('A') = %i\n", ft_isalnum('A'));
	printf("ft_isalnum('@') = %i\n", ft_isalnum('@'));
	printf("ft_isalnum('5') = %i\n", ft_isalnum('5'));
	printf("ft_isalnum(126) = %i\n", ft_isalnum(126));
	printf("ft_isalnum(127) = %i\n", ft_isalnum(127));
	printf("ft_isalnum(128) = %i\n\n", ft_isalnum(128));
	
	/*
	** ft_isprint
	*/

	printf("ft_isprint('b') = %i\n", ft_isprint('b'));
	printf("ft_isprint('A') = %i\n", ft_isprint('A'));
	printf("ft_isprint('@') = %i\n\n", ft_isprint('@'));
	
	/*
	** ft_strlen
	*/

	printf("ft_strlen(\"hello!\") = %zu\n", ft_strlen("hello!"));
	printf("ft_strlen(\"\") = %zu\n\n", ft_strlen(""));
	
	/*
	** ft_strdup
	*/

	char *str = NULL;
	printf("ft_strdup(\"hello!\") = %s\n\n", (str = ft_strdup("hello!")));

	/*
	** ft_memset
	*/

	printf("ft_memset(\"hello!\", \'a\', 6) = %s\n\n", ft_memset(str, 'a', ft_strlen(str)));

	/*
	** ft_bzero
	*/

	ft_bzero(str, 0);
	printf("ft_bzero(\"aaaaaa\", 0) = |%s|\n", str);
	ft_bzero(str, ft_strlen(str));
	printf("ft_bzero(\"aaaaaa\", 6) = |%s|\n\n", str);
	
	/*
	** ft_puts
	*/

	// int puts_val = ft_puts("hello\n");
	printf("is the output of ft_puts(\"hello \") and returns %i\n\n", ft_puts("hello "));

	/*
	** ft_memcpy
	*/

	str = ft_memcpy(str, "hello ", 6);
	printf("ft_memcpy(str, \"hello \", 6) = |%s|\n\n", str);

	/*
	** ft_strcat
	*/

	printf("before: ft_strlen(str) = %zu\n", ft_strlen(str));
	printf("ft_strcat(str, \"world!\") = |%s|\n", ft_strcat(str, "world!"));
	printf("after: ft_strlen(str) = %zu\n\n", ft_strlen(str));

	/*
	** ft_cat
	*/

	if (ac == 1) {
		int	fd = av[1] ? open(av[1], O_RDONLY) : 1;
		ft_cat(fd);
		close(fd);
	}
}
