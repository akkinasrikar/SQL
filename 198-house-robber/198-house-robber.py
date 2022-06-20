class Solution:
    def rob(self, nums: List[int]) -> int:
        l=len(nums)
        if l==1: return nums[0]
        if l==0: return 0
        if l==2: return max(nums)
        
        @lru_cache(None)
        def dp(n):
            if n>l-1: return 0
            return max(nums[n]+dp(n+2),dp(n+1))

        return dp(0)
        
        