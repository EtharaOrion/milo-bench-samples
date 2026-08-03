# Score — gpt-5.6-sol/run_3

Task: Textualize__rich-294 (`7b1d4b08-dcd4-43d1-a277-cbc72fb75a58`)  
Status: scored  
Gate: open  
Judges: n=1 (opus-4.8), κ=0.4545  

| channel | score |
|---|--:|
| outcome | 0.046511627906976744 |
| deterministic (soft) | 0.4750 |
| rubric | 0.7217 |
| **process** = (det + 0.4545·rubric) / 1.4545 | 0.5521 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.011364 | 0.0580 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.0651 |
