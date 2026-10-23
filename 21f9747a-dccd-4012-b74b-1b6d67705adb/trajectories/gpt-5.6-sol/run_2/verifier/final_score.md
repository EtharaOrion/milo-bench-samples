# Score — gpt-5.6-sol/run_2

Task: Textualize__rich-1657 (`21f9747a-dccd-4012-b74b-1b6d67705adb`)  
Status: scored  
Gate: open  
Judges: n=1 (opus-4.8), κ=0.5977  

| channel | score |
|---|--:|
| outcome | 0.5 |
| deterministic (soft) | 0.4444 |
| rubric | 0.6112 |
| **process** = (det + 0.5977·rubric) / 1.5977 | 0.5068 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.5007 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.5164 |
