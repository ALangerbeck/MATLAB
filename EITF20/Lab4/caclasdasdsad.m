
blocksize = 256;
missrate1 = 0.0149;
missrate2 = 0.0163;

missPenalty2 = 18 + 2*blocksize;
hittime1= 1;
hittime2= 6;

AMAT = hittime1 + missrate1*(hittime2 + missrate2*missPenalty2)