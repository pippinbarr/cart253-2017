#### Array declaration

`int[] nums = { 5, 4, 2, 7, 6, 8, 5, 2, 8, 14 };`


#### Square each number (i.e., multiply each by itself )

```java
for (int i = 0; i < nums.length; i++) {
  nums[i] *= nums[i];
}
```

#### Add a random number between zero and 10 to each number.

```java
for (int i = 0; i < nums.length; i++) {
  nums[i] += int(random(11));
}
```

#### Add to each number the number that follows in the array. Skip the last value in the array.
```java
for (int i = 0; i < nums.length - 1; i++) {
  nums[i] += nums[i+1];
}
```

#### Calculate the sum of all the numbers.

```java
int total = 0;
for (int i = 0; i < nums.length; i++) {
  total += nums[i];
}
```
