# Score — opus-4.8/run_2

Task: vueuse__vueuse-3015 (`0c8af667-87c9-4dd2-9b8f-8db273dee834`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.597  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.9310 |
| rubric | 0.6027 |
| **process** = (det + 0.597·rubric) / 1.597 | 0.8083 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.9808 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9000 |
