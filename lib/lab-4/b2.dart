void main() {
  List<int> nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];

  List ans = List.filled(nums.length, "_");

  int idx = 0;
  for (int n in nums) {
    if (!ans.contains(n)) {
      ans[idx] = n;
      idx++;
    }
  }
  print(ans);
}
