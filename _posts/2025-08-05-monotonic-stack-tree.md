## Graph Theoretic View of Nearest Smaller Values

Let us consider the classical problem [Nearest Smaller Values](https://cses.fi/problemset/task/1645). For our convenience we'll imagine another element at the start \\(x_0 = -\infty\\), and we define a function \\(f: \\{1,\dots,n\\} \rightarrow \\{0,\dots,n-1\\}\\), where \\(f(i)\\) is the index of the nearest smaller number of \\(x_i\\) on the left. The solution uses a stack with a monotonicity observation. But why? I mean it is easy to justify why, but the order in which elements are added, removed from a set, looks way too much like doing DFS (foreshadow?). 

We define a strict order over our input. Consider the relation, \\(i \prec j\\) iff \\(i< j\\) and \\(x_i < x_j\\). Evidently, \\(\forall i \in \\{1, 2, \dots, n \\}, 0 \prec i\\). We consider the [Hasse diagram](https://en.wikipedia.org/wiki/Hasse_diagram) of this ordering. Clearly, there will be an edge from \\(f(i)\\) to \\(i\\). 

Now, we start a DFS from \\(0\\), in a particular order. If there are multiple edges from a vertex \\(u\\) that connect to some vertices \\(v_1, v_2 \dots, v_K\\), WLOG we can assume \\(v_1 > v_2 > \dots > v_K\\) and we process vertices in exactly this order. In the final DFS tree that we obtain, the parent of \\(i\\) is precisely \\(f(i)\\). So the standard stack algorithm reduces to doing DFS over the Hasse diagram and keeping track of DFS tree parent of vertices along the way. However, we are left with two important questions:

1. Do I have a proof for my claim? No. I believe in the vibes as of now. Also [this](https://cses.fi/paste/118149b4fc187c9dd5c4d7/) is a proof of concept. Doesn't pass all cases due to the \\(O(N^3)\\) time and \\(O(N^2)\\) space complexity. 
2. Is it useful? Kind of. I don't know an exact situation where this is required. However, constructing something similar to this DFS tree helped in [this problem](https://cses.fi/problemset/task/3304).

Nonetheless, I find this extremely cute.

{{ addcomments }}