# Score — gemini-3.1-pro-preview/run_2

Task: fastify__fastify-1882 (`bb3167f2-79e5-4aa9-9e0d-7cf34b3420c0`)  
Status: scored  
Gate: open  
Judges: n=2 (gpt-5.5, opus-4.8), κ=0.8152  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.6429 |
| rubric | 0.8942 |
| **process** = (det + 0.8152·rubric) / 1.8152 | 0.7557 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.9756 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 1.0000 |
