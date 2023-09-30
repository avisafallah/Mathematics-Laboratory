function [out1,out2] = multi(in1,in2)
out1 = mod((in1 + in2),1);
out2 = mod((in1 + 2*(in2)),1);
