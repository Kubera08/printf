/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abeaudui <abeaudui@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/02 15:26:25 by abeaudui          #+#    #+#             */
/*   Updated: 2022/12/02 16:23:12 by abeaudui         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int ft_printf(const char *str, ...)
{

int i;
int j;
va_list arg;

i = 0;
va_start(arg, str);

while (str[i])
{
	if (str[i] != '%')
	{
		ft_putchar(str[i]);
		j++;
	}
	else if (str[i] == '%')
		{
			j = j + ft_douane(str[i + 1], arg);
		}
i++;
}
return(j);
}