function tmp = readims(fn,n)
    tmp = newim(300,300,n);
    for i=0:size(tmp,3)-1
	tmp(:,:,i) = readim(sprintf('build/%s_%03d.pgm',fn,i));
    end
