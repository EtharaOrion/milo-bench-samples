# Score — gemini-3.1-pro-preview/run_3

Task: vueuse__vueuse-3015 (`0c8af667-87c9-4dd2-9b8f-8db273dee834`)  
Status: scored  
Gate: open  
Judges: n=2 (gpt-5.5, opus-4.8), κ=0.597  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.9048 |
| rubric | 0.8925 |
| **process** = (det + 0.597·rubric) / 1.597 | 0.9002 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.9900 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9827 |
