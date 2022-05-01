fun oldest(data1:(int*int*int) list) = 
if null data1 
then (0,0,0)
else if null (tl data1)
then  hd data1
else
let val data2 = oldest(tl data1)
in
if ( #1 (hd data1) <     #1 data2) orelse  ((#1 (hd data1)) = (#1  data2) andalso (#2 (hd data1)) < (#2  data2) ) orelse (
(#1 (hd data1)) = (#1  data2) andalso (#2 (hd data1)) = (#2  data2) andalso (#3 (hd data1)) < (#3  data2) )
then  hd data1
else  data2
end