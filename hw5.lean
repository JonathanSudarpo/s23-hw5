/- Define the following list functions. Example uses are given via example. Once you have defined the function (replaced the _ with an implementation), the examples will work (the red highlighting will go away).
-/

def nonzeros : List Nat -> List Nat := _
example : nonzeros [0,1,0,2,3,0,0] = [1,2,3] := rfl

def oddmembers : List Nat -> List Nat := _
example : oddmembers [0,1,0,2,3,0,0] = [1,3] := rfl

def countoddmembers : List Nat -> Nat := _
example : countoddmembers [1,0,3,1,4,5] = 4 := rfl
example : countoddmembers [0,2,4] = 0 := rfl
example : countoddmembers nil = 0 := rfl

/- A bag (or multiset) is like a set, except that each element can appear multiple times rather than just once. One possible representation for a bag of numbers is as a list.
-/

def Bag := List Nat

/- Complete the following definitions for the functions count, sum, add, and member for bags.
-/

def count : Nat -> Bag -> Nat := _
example : count 1 [1,2,3,1,4,1] = 3 := rfl
example : count 6 [1,2,3,1,4,1] = 0 := rfl

def sum : Bag -> Bag -> Bag := _
example : count 1 (sum [1,2,3] [1,4,1]) = 3 := rfl

def add : Nat -> Bag -> Bag := _
example : count 1 (add 1 [1,4,1]) = 3 := rfl
example : count 5 (add 1 [1,4,1]) = 0 := rfl


def member : Nat -> Bag -> Bool := _
example : member 1 [1,4,1] = true := rfl
example : member 2 [1,4,1] = false := rfl

def remove_one : Nat -> Bag -> Bag := _
example : count 5 (remove_one 5 [2,1,5,4,1]) = 0 := rfl
example : count 5 (remove_one 5 [2,1,4,1]) = 0 := rfl
example : count 4 (remove_one 5 [2,1,4,5,1,4]) = 2 := rfl
example : count 5 (remove_one 5 [2,1,5,4,5,1,4]) = 1 := rfl

def remove_all : Nat -> Bag -> Bag := _
example : count 5 (remove_all 5 [2,1,5,4,1]) = 0 := rfl
example : count 5 (remove_all 5 [2,1,4,1]) = 0 := rfl
example : count 4 (remove_all 5 [2,1,4,5,1,4]) = 2 := rfl
example : count 5 (remove_all 5 [2,1,5,4,5,1,4,5,1,4]) = 0 := 0

def subset : Bag -> Bag -> Bool := _
example : subset [1,2] [2,1,4,1] = true := rfl
example : subset [1,2,2] [2,1,4,1] = false := rfl