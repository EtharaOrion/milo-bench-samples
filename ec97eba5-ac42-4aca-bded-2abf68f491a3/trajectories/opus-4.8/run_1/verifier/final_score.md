# Score — opus-4.8/run_1

Task: capnproto__capnproto-1069 (`ec97eba5-ac42-4aca-bded-2abf68f491a3`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.8467  

| channel | score |
|---|--:|
| outcome | 0.5 |
| deterministic (soft) | 0.4000 |
| rubric | 0.7547 |
| **process** = (det + 0.8467·rubric) / 1.8467 | 0.5626 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.5063 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.5000 |
