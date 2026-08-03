# Score — opus-4.8/run_1

Task: fastfetch-cli__fastfetch-2115 (`d8072ca7-2029-4733-9dc6-78050639cf13`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.8728  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.1017 |
| rubric | 0.7396 |
| **process** = (det + 0.8728·rubric) / 1.8728 | 0.3990 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.9399 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9153 |
