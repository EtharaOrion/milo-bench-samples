# Score — opus-4.8/run_2

Task: clap-rs__clap-3955 (`85aa814e-2b16-41ed-8e06-3a1ac1ec3cd4`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.7458  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.2273 |
| rubric | 0.3704 |
| **process** = (det + 0.7458·rubric) / 1.7458 | 0.2884 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.018519 | 0.9736 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9630 |
