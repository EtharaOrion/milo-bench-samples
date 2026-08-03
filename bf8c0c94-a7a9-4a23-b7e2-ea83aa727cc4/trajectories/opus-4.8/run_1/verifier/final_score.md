# Score — opus-4.8/run_1

Task: clap-rs__clap-4684 (`bf8c0c94-a7a9-4a23-b7e2-ea83aa727cc4`)  
Status: scored  
Gate: open  
Judges: n=1 (gpt-5.5), κ=0.5301  

| channel | score |
|---|--:|
| outcome | 1.0 |
| deterministic (soft) | 0.0972 |
| rubric | 0.9748 |
| **process** = (det + 0.5301·rubric) / 1.5301 | 0.4013 |

| composed score | value |
|---|--:|
| **score_eval** = gate·((1−2α)·outcome + 2α·process), α=0.022727 | 0.9728 |
| **score_rl** — same form over the process score normalised within this task's outcome stratum | 0.9602 |
