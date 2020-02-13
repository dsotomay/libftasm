/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dysotoma <dysotoma@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/15 16:53:04 by dysotoma          #+#    #+#             */
/*   Updated: 2020/02/12 20:54:37 by dysotoma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H
# include <stdlib.h>

int		ft_isascii(int c);
int		ft_isdigit(int c);
int		ft_isalpha(int c);
int		ft_isprint(int c);
int		ft_isalnum(int c);
int		ft_tolower(int c);
int		ft_toupper(int c);
size_t	ft_strlen(char *str);
char	*ft_strdup(char *str);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *dest, void *srce, size_t n);
void	ft_bzero(void *s, size_t len);
int		ft_puts(char *str);
char	*ft_strcat(char *s1, char *s2);
void	ft_cat(int fd);


#endif