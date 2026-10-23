# Score — gemini-3.1-pro-preview/run_2

Task: Textualize__rich-294 (`7b1d4b08-dcd4-43d1-a277-cbc72fb75a58`)  
Status: scored  
Gate: open  
Judges: n=2 (gpt-5.5, opus-4.8), κ=0.4545  

| channel | score |
|---|--:|
| outcome | 0.0 |
| deterministic (soft) | 0.3462 |
| rubric | 0.2275 |
| **process** = (det + 0.4545·rubric) / 1.4545 | 0.3091 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.011364 | 0.0070 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.0000 |
