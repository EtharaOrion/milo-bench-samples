# Score — gpt-5.6-sol/run_1

Task: vueuse__vueuse-3015 (`0c8af667-87c9-4dd2-9b8f-8db273dee834`)  
Status: scored  
Gate: open  
Judges: n=1 (opus-4.8), κ=0.597  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.8571 |
| rubric | 0.7947 |
| **process** = (det + 0.597·rubric) / 1.597 | 0.8338 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.9834 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9230 |
