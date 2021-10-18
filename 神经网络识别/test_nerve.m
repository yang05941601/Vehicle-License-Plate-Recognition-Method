function [y,a1]=test_nerve(w1,w2,b1,b2,x)
%«∞œÚ‘ÀÀ„£¨≤‚ ‘
[a1,z2]=forward_algo(w1,x,b1);
[y,z1]=forward_algo(w2,a1,b2);