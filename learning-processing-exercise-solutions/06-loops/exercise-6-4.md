## #1: Global “count”

B

`count` increases by 1 each frame, so by the 100th frame its value will be `100`.
And `fill(100)` gives us a darkish grey.

## #2: Local “count”

A

`count` is initialised to 0 every frame, then increased by one, so every frame its
value for the fill will be `1`. And `fill(1)` gives us almost black.
