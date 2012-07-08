wf = readims('wf',12);
sec = readims('sec',12);
clem = readims('clem',8);
ang = readims('ang',8);
mwf=max(wf,[],3);
msec=max(sec,[],3);
mclem=max(clem,[],3);
mang=max(ang,[],3);
cat(3,mwf,msec,mclem,mang);


saveim(mwf,'build/max_wf.jpg');
saveim(msec,'build/max_sec.jpg');
saveim(mclem,'build/max_clem.jpg');
saveim(mang,'build/max_ang.jpg');