// Trapping Rain Water
// Given n non-negative integers representing an elevation map where the width
// of each bar is 1, compute how much water it is able to trap after raining.
import 'dart:math';

/// https://assets.leetcode.com/uploads/2018/10/22/rainwatertrap.png
// The above elevation map is represented by array [0,1,0,2,1,0,1,3,2,1,2,1].
// In this case, 6 units of rain water (blue section) are being trapped.

// Example:
// Input: [0,1,0,2,1,0,1,3,2,1,2,1]
// Output: 6

int waterCollected(List<int> pipe) {
  List<int> totalWater = [];
  if(pipe.isEmpty){
    return 0;
  }
  int longestPipe = pipe.reduce(max);
//  print('longestPipe:$longestPipe');
  for(int k =longestPipe;k>0;k--){
//    print('k:$k');
    for (int i = 0; i < pipe.length; i++) {
      if(pipe[i]>=k){
//        print('pipe i;${pipe[i]} , k:$k');
//        print('here');
        for (int j = i+1; j < pipe.length; j++) {
          if(pipe[j]>=k){
//            print('i:$i, j:$j, k:$k');
          int temp = j-i-1;
            temp>=0?totalWater.add(temp):null;
            break;
          }

        }
      }
    }
  }

  return totalWater.fold(0, (previous, current) => previous + current);

}

main() {
  print(waterCollected([1,0,0,1]));
  print(waterCollected([2,1,0,3]));
  print(waterCollected([5,0,0,2]));
  print(waterCollected([1,2,3,4]));
  print(waterCollected([2]));
}
