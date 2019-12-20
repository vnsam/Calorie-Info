# Calorie-Info


DEMO CODE

**How to run the project:**

Just open the `Lifesum.xcodeproj` file.

**Architecture followed:**

MVVM

**What's not covered:**

0. Error handling.
1. Loading states.

**Source Control:**

0. I've not done `logical commits` since I was focussing more on solving the assignment to the extent possible.
	All of the assignment is a single commit.
1. I'd prefer a [feature] -> [develop] -> [master] - branching strategy. [Not done].

**What's Skipped as part of assignment:**

0. More Info Button [ kept as a low priority since no action is done by the button ]

**Why chose a single page approach?**

I'd have gone with Collection View design if I had more.

0. Paging the collectionview would be a little on the effort since I have to issue cell width also.
	`isPagingEnabled` property also needs `item.width` to calculated properly.

1. Also, collectionView would have meant pagination - looking at the UI, I got this assumption. This'd also require a little more effort.

**What improvements I'd do? (if I had time)**

0. Have an UI object instead of directly consuming `Server` object. Transform `Server` object ==> `UI Display` object.

1. `CircleView` and `MiniInfostackView` would go as a separate component. (with IBDesignable, IBInspectable - attirbutes).

2. I'd love to improve code formatting.

3. When receive the callback from `viewModel` I'd send a `UI Object` with only properties needed for display. [ Currently I'm consuming the server object ]

4. `Server Object` is currently reading only the fields required for display. What if I want to show details later? [ Read all sever response fields and transform -> 				serverObject ==> uiObject ].

5. Better naming.

6. Improve the gradient layer to match UI.

7. Move `HomeViewModelDelegate` protocol to separate file.

8. Make `RequestBuilder` more general. When given `parametes` in key:vaue pair the `RequestBuilder` should be able to return a `URLRequest` with issued paramters.

9. Create a `Generic` codable parser function ==> <T: Codable>.

10. Build a `Thread` extension having functions for running in `Main` thread and `background` thread. Like, for example ==> Thread.runInMainThread {// dispatch main code here} 
