# Score — opus-4.8/run_2

Task: jesseduffield__lazygit-5487 (`07dcdc26-0461-4562-a39f-c0dd66fbf68a`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.9192  

| channel | score |
|---|--:|
| outcome | 0.6666666666666666 |
| deterministic (soft) | 0.5909 |
| rubric | 0.8603 |
| **process** = (det + 0.9192·rubric) / 1.9192 | 0.7199 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.6720 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.6715 |
