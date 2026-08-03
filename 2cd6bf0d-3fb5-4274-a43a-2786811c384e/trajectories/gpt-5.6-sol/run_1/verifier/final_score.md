# Score — gpt-5.6-sol/run_1

Task: Textualize__rich-1449 (`2cd6bf0d-3fb5-4274-a43a-2786811c384e`)  
Status: scored  
Gate: open  
Judges: n=1 (opus-4.8), κ=0.5593  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.8333 |
| rubric | 0.4707 |
| **process** = (det + 0.5593·rubric) / 1.5593 | 0.7033 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.9703 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 1.0000 |
