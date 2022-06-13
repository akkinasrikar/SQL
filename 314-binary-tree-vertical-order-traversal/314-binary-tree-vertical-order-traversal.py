# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
from collections import defaultdict

class Solution:
    def verticalOrder(self, root: Optional[TreeNode]) -> List[List[int]]:
        
        hashmap = defaultdict(list)
        
        def distance(root,hd):
            if not root: return
            hashmap[hd].append(root.val)
            distance(root.left,hd-1)
            distance(root.right,hd+1)
            
        #distance(root,0)
        #idx=sorted(hashmap)
        #res=[hashmap[i] for i in idx]
        
        dct = defaultdict(list)
        queue = [(root,0)]
        for node,hd in queue:
            if node:
                dct[hd].append(node.val)
                queue += (node.left,hd-1),(node.right,hd+1)
        return [dct[i] for i in sorted(dct)]