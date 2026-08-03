# Score — gemini-3.1-pro-preview/run_3

Task: capnproto__capnproto-1069 (`ec97eba5-ac42-4aca-bded-2abf68f491a3`)  
Status: scored  
Gate: open  
Judges: n=2 (gpt-5.5, opus-4.8), κ=0.8467  

| channel | score |
|---|--:|
| outcome | 0.0 |
| deterministic (soft) | 0.6111 |
| rubric | 0.8152 |
| **process** = (det + 0.8467·rubric) / 1.8467 | 0.7047 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.0705 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.1000 |
