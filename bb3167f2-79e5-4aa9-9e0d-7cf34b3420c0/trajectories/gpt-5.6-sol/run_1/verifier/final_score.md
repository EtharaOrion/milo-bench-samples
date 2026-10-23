# Score — gpt-5.6-sol/run_1

Task: fastify__fastify-1882 (`bb3167f2-79e5-4aa9-9e0d-7cf34b3420c0`)  
Status: scored  
Gate: open  
Judges: n=1 (opus-4.8), κ=0.8152  

| channel | score |
|---|--:|
| outcome | 0.5 |
| deterministic (soft) | 0.7059 |
| rubric | 0.7753 |
| **process** = (det + 0.8152·rubric) / 1.8152 | 0.7371 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.5237 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.5415 |
