/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   print_map_and_error.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fgabler <mail@student.42heilbronn.de>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/07/26 19:19:52 by fgabler           #+#    #+#             */
/*   Updated: 2023/08/14 17:18:26 by fgabler          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/so_long.h"

void	print_map_and_error(char **map, char *str)
{
	int	i;

	i = 0;
	ft_printf("\n%s", RED);
	while (map[i] != NULL)
		ft_printf("%s\n", map[i++]);
	ft_printf("\nError\n%s\n", str);
}
