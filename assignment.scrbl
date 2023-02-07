#lang scribble/manual
@require[scribble-math]
@require[scribble-math/dollar]
@require[racket/runtime-path]

@require["../../lib.rkt"]
@define-runtime-path[hw-file "hw5.lean"]


@title[#:tag "hw5" #:style (with-html5 manual-doc-style)]{Homework 5}

@bold{Released:} @italic{Wednesday, February 8, 2023 at 6:00pm}

@bold{Due:} @italic{Wednesday, February 22, 2023 at 6:00pm}


@nested[#:style "boxed"]{
What to Download:

@url{https://github.com/logiccomp/s23-hw5/raw/main/hw5.lean}
}

Please start with this file, filling in where appropriate, and submit your homework to the @tt{hw5} assignment on Gradescope. This page has additional information, and allows us to format things nicely.

@bold{To do this assignment in the browser: @link["https://github.com/codespaces/new?machine=basicLinux32gb&repo=575111975&ref=main&location=EastUs"]{Create a Codespace}.}

@section{Problem 1: Programming in Lean}

Define the following list functions. Example uses are given via @lean{example}. Once you have defined the function (replaced the @lean{_} with an implementation), the examples will work (the red highlighting will go away).

@minted-file-part["lean" "p1-a" hw-file]

A bag (or multiset) is like a set, except that each element can appear multiple times rather than just once. One possible representation for a bag of numbers is as a list.

@minted-file-part["lean" "p1-b" hw-file]

Complete the following definitions for the functions count, union, add, and member for bags.

@minted-file-part["lean" "p1-c" hw-file]

@section{Proofs in Minimal Propositional Logic}

Complete the following "proofs", by replacing the @lean{_} with a term that typechecks. You should not
need to use any @italic{tactics}.

@minted-file-part["lean" "p1-d" hw-file]

@section{Proofs in Propositional Logic}

Complete the following "proofs", by replacing the @lean{_} with a term that typechecks. You should not
need to use any @italic{tactics}.

@minted-file-part["lean" "p1-e" hw-file]
