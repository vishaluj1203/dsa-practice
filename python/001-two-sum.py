from typing import List

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        # Brute Force
        """
        [Two Sum Problem](https://leetcode.com/problems/two-sum/)

        Args:
            nums (List[int]): List of integers.
            target (int): Integer.

        Returns:
            List[int]: List of intgers which sum up to target.
        """
        for i in range(0, (len(nums))):
            for j in range(i + 1, (len(nums))):
                if nums[i] + nums[j] == target:
                    return [i, j]
