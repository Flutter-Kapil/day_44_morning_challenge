// Trapping Rain Water
// Given n non-negative integers representing an elevation map where the width
// of each bar is 1, compute how much water it is able to trap after raining.
/// https://assets.leetcode.com/uploads/2018/10/22/rainwatertrap.png
// The above elevation map is represented by array [0,1,0,2,1,0,1,3,2,1,2,1].
// In this case, 6 units of rain water (blue section) are being trapped.

// Example:
// Input: [0,1,0,2,1,0,1,3,2,1,2,1]
// Output: 6

int waterCollected(List<int> pipe) {
  List<int> totalWater = [];
  for (int i = 0; i < pipe.length; i++) {
    int count =0;
    if(pipe[i] == 0){
      continue;
    }
    for (int j = i + 1; j < pipe.length; j++) {
      count++;
      if ((pipe[j] >= pipe[i])) {
        int area =count;
        for(int k=i;k<j;k++){
          area = area -pipe[k];
        }
        totalWater.add(area);
        break;
      }
    }
  }
  return totalWater.fold(0, (previous, current) => previous + current);

}

main() {
  print(waterCollected([0,1,0,2,1,0,1,3,2,1,2,1]));
}
