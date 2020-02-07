#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#define MAX(a, b)	(((a) > (b)) ? (a) : (b))

static void raw_cat(int rfd)
{
	int off, wfd;
	ssize_t nr, nw;
	static size_t bsize;
	static char *buf = NULL;
	struct stat sbuf;

	wfd = fileno(stdout);
	if (buf == NULL) {
		bsize = MAX(sbuf.st_blksize, 1024);
		buf = malloc(bsize);
		if (buf == NULL)
			return;
	}
	while ((nr = read(rfd, buf, bsize)) > 0)
		for (off = 0; nr; nr -= nw, off += nw)
			if ((nw = write(wfd, buf + off, (size_t)nr)) < 0)
				return;
	if (nr < 0)
		return;
}

int main(int ac, char  **av)
{
	if (ac == 2)
	{
		int	fd = open(av[1], O_RDONLY);
		raw_cat(fd);
		close(fd);
	}	
}
