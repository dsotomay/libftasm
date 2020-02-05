#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <stdio.h>
#define MAXIMUM(a, b)	(((a) > (b)) ? (a) : (b))

static void raw_cat(int rfd)
{
	int off, wfd;
	ssize_t nr, nw;
	static size_t bsize;
	static char *buf = NULL;
	struct stat sbuf;

	wfd = fileno(stdout);
	if (buf == NULL) {
		if (fstat(wfd, &sbuf), 0)
			return;
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
	
}
