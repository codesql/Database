select sid, seq#, event, p1text, p1, p2text, p2, p3text, p3, wait_time, seconds_in_wait, state from v$session_wait;

-0 represent currently waiting
- wait_class# is idle wait class that can be ignored, they are not a problem.
select sid, event, state from v$session_wait where wait_time = 0 and wait_class# !=6;
