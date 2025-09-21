# summary.md


## Gemini: proposal

併合案

##
revision

This paper presents a new algorithm for enumerating maximal repeats in a text using the suffix array and its auxiliary data structures. Unlike previous array-based algorithms $O(n)$-time for enumerating all maximal repeats in a text of length $n$, our algorithm guarantees enumeration in $O(e_R)$ time, proportional to the size $e_R$ of the CDAWG, which is a fundamental graph-based data structure that represents all maximal repeats. By combining novel characterizations of maximal repeats with top-down traversal of the suffix tree using the suffix arrays, we efficiently identify and skip non-maximal repeats during traversal. This approach provides a simpler and faster alternative to existing methods, making it suitable for various sequence analysis tasks.

##
revision

This paper presents a new algorithm for enumerating maximal repeats in a text using the suffix array and its auxiliary data structures. Unlike previous array-based methods, our algorithm guarantees enumeration in time proportional to the size of the CDAWG, a fundamental graph-based data structure that represents all maximal repeats. By combining novel characterizations of maximal repeats with top-down traversal of the suffix tree using the suffix arrays, we efficiently identify and skip non-maximal repeats during traversal. This approach provides a simpler and faster alternative to existing methods, making it suitable for various sequence analysis tasks.

## 

This paper presents a new algorithm for enumerating maximal repeats in a text using the suffix array and its auxiliary data structures. Unlike previous array-based methods, our algorithm guarantees enumeration in time proportional to the size of the CDAWG, a fundamental graph-based data structure that represents all maximal repeats. By combining novel characterization of maximal repeats, and top-down traversal of the suffix tree with the suffix arrays, we efficiently identify and skip non-maximal repeats during traversal. This approach provides a simpler and faster alternative to existing methods, making it suitable for various sequence analysis tasks.

修正案：
提案1をベースに，細部を提案2で補足する．

Gemini: 英文アブストラクトの要約案
提案2：

We propose a novel algorithm for enumerating maximal repeats in a text that achieves optimal output-sensitive time complexity. By utilizing the suffix array and its auxiliary data structures, our algorithm efficiently traverses the suffix tree and identifies maximal repeats. Our method outperforms previous array-based approaches by ensuring enumeration time proportional to the size of the CDAWG, a theoretical lower bound.


提案1：

This paper presents a new algorithm for enumerating maximal repeats in a text using suffix arrays. Unlike previous array-based methods, our algorithm guarantees enumeration in time proportional to the size of the CDAWG, a graph-based data structure that represents all maximal repeats. By leveraging the suffix array, inverse suffix array, and LCP array, we efficiently identify and skip non-maximal repeats during traversal. This approach provides a simpler and faster alternative to existing methods, making it suitable for various sequence analysis tasks.


## original 

あなたは、コンピュータサイエンスの研究者です。今、文字列処理アルゴリズムの研究をしています。特に接尾辞木、接尾辞配列、最長共通接頭辞配列、BWT変換配列を研究しています。これらの配列を用いた極大反復部分列（maximal repeat）の列挙に関する論文を書いています。次の英文を、60単語程度の長さの英文のアブストラクトに要約してください：

Title: A Simple and Faster Enumeration of Maximal Repeats with Suffix Arrays
Abstract: 
Maximal repeats are one of the fundamental string features, used in a wide range of sequence analysis as the basis of various string features.
In this paper, we consider enumeration of maximal repeats in an input text. 
It is well-known that the complete set of maximal repeats can be enumerated using a graph-based data structure, called the CDAWG (compacted directed acyclic word graph) in time proportional to the size $e_R$ or $e_L$ of the CDAWG, where $e_R$ and $e_L$ are the numbers of its forward or reverse edges, respectively. 

Dispite this fact, the CDAWG has too large memory footprint to apply itself to real-world applications. Hence, extensive efforts have been paid for the last decades to develope simpler array-based algorithms that runs in $O(n)$ time and $O(n)$ space using the array-like structure, namely, the suffix array or the Burrows–Wheeler transform (BWT). 
However, none of these algorithms can not enumerate all maximal repeats in time proportional to the size of the CDAWG for a text. 

In this paper, we present an array-based algorithm that enumerates all maximal repeats in a text of length $n$ in time proportinal to the size of the CDAWG for the same text; The algorithm runs in $O(e_R)$ time using the suffix array to traverse the virtual suffix tree for a text. It uses auxiliary data structures, namely, the inverse suffix and longest common prefix (LCP) arrays.

Technically, the key to efficient enumeration is how to skip non-maximal repeats encontered in the traversal. To do this, the proposed algorithm uses a structual property of the locations of maximal repeats in the suffix tree. It also efficiently solves a key subproblem of checking left-branchingity in constant time in combination with the suffix, inverse suffix, and LCP arrays by extending the previous result by Narisawa \textit{et al.} (CPM 2007). 

Overall, we presented the first output-sensitive array-based algorithms for enumerating all maximal repeats in a text in time proportinal to the size of the corresponding CDAWG. An advantage of our algorithm is its simplicy, and extensivility since it uses the indexing arrays as black box. Using this, we also show the different time-space bounds when implementd on compressed data structures. 

