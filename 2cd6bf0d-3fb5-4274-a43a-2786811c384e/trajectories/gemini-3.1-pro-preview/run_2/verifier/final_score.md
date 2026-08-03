# Score — gemini-3.1-pro-preview/run_2

Task: Textualize__rich-1449 (`2cd6bf0d-3fb5-4274-a43a-2786811c384e`)  
Status: scored  
Gate: open  
Judges: n=2 (gpt-5.5, opus-4.8), κ=0.5593  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.8810 |
| rubric | 0.3019 |
| **process** = (det + 0.5593·rubric) / 1.5593 | 0.6732 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.05 | 0.9673 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9934 |
