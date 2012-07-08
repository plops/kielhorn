function saveim(a,fn)
n = 255*a/max(a); % normalize image to 0..255
writeim(squeeze(n),fn,'JPEG')
