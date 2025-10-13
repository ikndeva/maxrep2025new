# IWOCA 2025 submission 

submit2025iwoca.md

## submission info 

### Title: 

A Simple and Faster Algorithm for Enumerating Maximal Repeats in Strings

### Abstract: 

Fundamental parameters of a string with length $n$ are the numbers $\mu$ and $e_R$ of maximal repeats and their right extensions, satisfying that $\mu \le e_R\le n$. 
Maximal repeats are string features, which are defined as such substrings of a string that cannot be extended to the left or to the right without losing their occurrences. 
It is well-known that these parameters  $\mu$ and $e_R$  can be much smaller than the string length $n$, even logarithmically, for highly-repetitive strings. 

This paper studies the problem of enumerating all of $\mu$ distinct maximal repeats in a string $T$ of length $n$ using the suffix array (SA), whose running time is sensitive to the compression parameter $e_R$. Since all of the previous algorithms based on SA or BWT were known to require at least linear time in the text length $n$ for the task, it is a natural question whether it can be done in sublinear time for highly-repetitive texts. 

As a main result, we show that the set of all maximal repeats in a string can be enumerated in $O(e_R)$ time and $O(\sigma^2 \log e_R)$ working space by a simple algorithm based on the suffix array with as auxiliary data structures of $O(n)$ space, namely, the inverse suffix array (ISA) and the range-minima structure on the longest common prefix (LCP) array. This result improves on the previous algorithms with $O(n)$ time complexity based on either the SA or BWT array of $O(n)$ space for highly-repetitive strings when $e_R = o(n)$. 

Furthermore, we also show that all maximal repeats can be enumerated in $O(e_R \;\textrm{polylog}(n))$ time and space on the top of existing compressed text indexing structures. 
Technically, to obtain $O(e_R)$ running time, we devise a simple and modular algorithm by combining simulation of the top-down traversal of the suffix tree and constant time left-maxiamlity test in a novel way. 

### Category : 

### Keywords: 

sequence analysis,
maximal repeats,
suffix array,
longest prefix array,
bioinformatcs

### Authors: 

Hiroki Arimura
Hokkaido University, Japan
arim@ist.hokudai.ac.jp

Yuta Tsuruzono
Hokkaido University, Japan
turuzono.yuta.y9@elms.hokudai.ac.jp

Shunsuke Inenaga
Kyushu University, Japan
inenaga.shunsuke.380@m.kyushu-u.ac.jp

### PDF

### Comments (visible to organizers and reviewers)


## EOF

