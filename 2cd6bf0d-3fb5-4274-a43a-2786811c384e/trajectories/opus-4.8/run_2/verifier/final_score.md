# Score — opus-4.8/run_2

Task: Textualize__rich-1449 (`2cd6bf0d-3fb5-4274-a43a-2786811c384e`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.5593  

| channel | score |
|---|--:|
| outcome | 0.0 |
| deterministic (soft) | 0.3243 |
| rubric | 0.3437 |
| **process** = (det + 0.5593·rubric) / 1.5593 | 0.3313 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.0331 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.0500 |
