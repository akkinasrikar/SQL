class Solution:
    def rob(self, nums: List[int]) -> int:
        l=len(nums)
        if l==1: return nums[0]
        if l==0: return 0
        if l==2: return max(nums)
        
        def dp(n,memo):
            if n>l-1: return 0
            if n in memo: return memo[n]
            memo[n]=max(nums[n]+dp(n+2,memo),dp(n+1,memo))
            return memo[n]
        
        memo={}
        return dp(0,memo)
        
        