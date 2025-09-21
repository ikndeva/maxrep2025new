## indexing arrays 

```
T  : n=12 : 'abcadabcabc$'
SA : n=12 : [11 8 5 0 3 9 6 1 10 7 2 4]
BWT: n=12 : 'ccd$caaabbba'
LCP: n=12 : [0 0 3 4 1 0 2 3 0 1 2 0]
```


print all suffixes in the lexicographic-order...

```
size: n=12
rnk	SA	BWT	LCP	suff 
0	11	c	0	'$'	
1	8	c	0	'abc$'	
2	5	d	3	'abcabc$'	
3	0	$	4	'abcadabcabc$'	
4	3	c	1	'adabcabc$'	
5	9	a	0	'bc$'	
6	6	a	2	'bcabc$'	
7	1	a	3	'bcadabcabc$'	
8	10	b	0	'c$'	
9	7	b	1	'cabc$'	
10	2	b	2	'cadabcabc$'	
11	4	a	0	'dabcabc$'	
```
done.
