#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "libfts.h"
int main()
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
	** ft_isdigit
	*/

	printf("ft_isdigit('b') = %i\n", ft_isdigit('b'));
	printf("ft_isdigit('A') = %i\n", ft_isdigit('A'));
	printf("ft_isdigit('@') = %i\n", ft_isdigit('@'));
	printf("ft_isdigit('1') = %i\n", ft_isdigit('1'));
	printf("ft_isdigit( 1 ) = %i\n\n", ft_isdigit(1));

	/*
	** ft_isascii
	*/

	printf("ft_isascii('b') = %i\n", ft_isascii('b'));
	printf("ft_isascii('A') = %i\n", ft_isascii('A'));
	printf("ft_isascii('@') = %i\n", ft_isascii('@'));
	printf("ft_isascii(127) = %i\n", ft_isascii(127));
	printf("ft_isascii(128) = %i\n\n", ft_isascii(128));
	
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
	printf("ft_strdup(\"hello!\") = %s\n", (str = ft_strdup("hello!")));

	/*
	** ft_memset
	*/

	printf("ft_memset(\"hello!\") = %s\n", ft_memset(str, 'a', ft_strlen(str)));

	/*
	** ft_bzero
	*/

	
}