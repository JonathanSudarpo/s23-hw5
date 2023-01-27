/- Problem 1: Programming in Lean -/

/-
Define the following list functions. Example uses are given via example. Once you have defined the function (replaced the _ with an implementation), the examples will work (the red highlighting will go away).
-/

-- part p1-a
def nonzeros : List Nat -> List Nat := _
example : nonzeros [0,1,0,2,3,0,0] = [1,2,3] := by rfl

def oddmembers : List Nat -> List Nat := _
example : oddmembers [0,1,0,2,3,0,0] = [1,3] := by rfl

def countoddmembers : List Nat -> Nat := _
example : countoddmembers [1,0,3,1,4,5] = 4 := by rfl
example : countoddmembers [0,2,4] = 0 := by rfl
example : countoddmembers [] = 0 := by rfl

-- part p1-a


/- A bag (or multiset) is like a set, except that each element can appear multiple times rather than just once. One possible representation for a bag of numbers is as a list.
-/

-- part p1-b
def Bag := List Nat
-- part p1-b

/- Complete the following definitions for the functions count, sum, add, and member for bags.
-/

-- part p1-c
def count : Nat -> Bag -> Nat := _
example : count 1 [1,2,3,1,4,1] = 3 := by rfl
example : count 6 [1,2,3,1,4,1] = 0 := by rfl

def sum : Bag -> Bag -> Bag := _
example : count 1 (sum [1,2,3] [1,4,1]) = 3 := by rfl

def add : Nat -> Bag -> Bag := _
example : count 1 (add 1 [1,4,1]) = 3 := by rfl
example : count 5 (add 1 [1,4,1]) = 0 := by rfl


def member : Nat -> Bag -> Bool := _
example : member 1 [1,4,1] = true := by rfl
example : member 2 [1,4,1] = false := by rfl

def remove_one : Nat -> Bag -> Bag := _
example : count 5 (remove_one 5 [2,1,5,4,1]) = 0 := by rfl
example : count 5 (remove_one 5 [2,1,4,1]) = 0 := by rfl
example : count 4 (remove_one 5 [2,1,4,5,1,4]) = 2 := by rfl
example : count 5 (remove_one 5 [2,1,5,4,5,1,4]) = 1 := by rfl

def remove_all : Nat -> Bag -> Bag := _
example : count 5 (remove_all 5 [2,1,5,4,1]) = 0 := by rfl
example : count 5 (remove_all 5 [2,1,4,1]) = 0 := by rfl
example : count 4 (remove_all 5 [2,1,4,5,1,4]) = 2 := by rfl
example : count 5 (remove_all 5 [2,1,5,4,5,1,4,5,1,4]) = 0 := 0

def subset : Bag -> Bag -> Bool := _
example : subset [1,2] [2,1,4,1] = true := by rfl
example : subset [1,2,2] [2,1,4,1] = false := by rfl

-- part p1-c

/- Proofs in minimal propositional logic -/

-- part p1-d

variable (P Q R S : Prop)

theorem t1 : P -> P := _

theorem t2 : P -> Q -> P := _

theorem t3 : (P -> Q) -> (Q -> R) -> P -> R := _

theorem t4 : P -> Q -> (Q -> P -> R) -> R := _

theorem t5 : (P -> Q) -> (P -> R) -> (R -> Q -> S) -> P -> S := _

theorem t6 : (P -> Q -> R) -> (P -> Q) -> P -> R := _

-- part p1-d

/- Proofs in propositional logic -/

-- part p1-e

theorem p1 : P ∧ Q -> Q ∧ P := _

theorem p2 : P ∧ Q -> P := _

theorem p3 : P ∧ Q -> (Q -> R) -> R ∧ P := _

theorem p4 : P ∨ Q -> (P -> R) -> (Q -> R) -> R := _

theorem p5 : P ∨ Q -> (P -> R) -> R ∨ Q := _

theorem p6 : ¬ Q -> (R -> Q) -> (R ∨ ¬ S) -> S -> False := _

-- part p1-e
