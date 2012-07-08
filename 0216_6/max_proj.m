wf = readims('wf',12);
sec = readims('sec',12);
clem = readims('clem',8);
ang = readims('ang',8);

cat(3,max(wf,[],3),max(sec,[],3),max(clem,[],3),max(ang,[],3))
