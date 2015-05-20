# llvm-vpopcount
Evaluation of LLVM x86 vector population count implementation.  

+ sselookup: implementation based on http://wm.ite.pl/articles/sse-popcount.html
+ parallelbitmath: implementation based on http://graphics.stanford.edu/~seander/bithacks.html#CountBitsSetParallel
+ scalar + ctpop = vec_extracts + vec_inserts + x86 ctpop instructions

Currently, scalar+ctpop and parallelbitmath are used for population count on vector types. The idea is to replace them by sselookup wherever it's profitable.

**v4i32-avx**  
+ sselookup (v4i32): 1.10211  
+ scalar + ctpop (v4i32): **0.907016**
+ parallelbitmath (v4i32): 1.14124

**v8i32-avx**
+ sselookup (v8i32): **1.97514**
+ scalar + ctpop (v8i32): 2.37118

**v8i32-avx2**  
Multiple runs for implementations below yielded similar results between both, but parallelbitmath performs better on most part. 
+ sselookup (v8i32): 1.17823
+ parallelbitmath (v8i32): **1.15288**

**v2i64-avx**
+ scalar + ctpop (v2i64): **0.589292**
+ sselookup (v2i64): 0.865797
+ parallelbitmath (v2i64): 1.31027

**v4i64-avx**
+ scalar + ctpop (v4i64): **0.903523**
+ sselookup (v4i64): 1.11988

**v4i64-avx2**
+ scalar + ctpop (v4i64): 0.895486 
+ sselookup (v4i64): **0.677801**
+ parallelbitmath (v4i64): 1.02711

**v16i8-avx**
+ scalar + ctpop (v16i8): 4.1569
+ sselookup (v16i8): **0.508693**

**v32i8-avx**
+ scalar + ctpop (v32i8): 8.32336
+ sselookup (v32i8): **0.961657**

**v32i8-avx2**  
+ scalar + ctpop (v32i8): 8.79509
+ sselookup (v32i8): **0.487716**

**v8i16-avx**  
+ scalar + ctpop (v8i16): 1.86908
+ sselookup (v8i16): **0.755885**

**v16i16-avx**  
+ scalar + ctpop (v16i16): 4.08575
+ sselookup (v16i16): **1.32838**

**v16i16-avx2**  
+ scalar + ctpop (v16i16): 4.19101
+ sselookup (v16i16): **1.18095**

