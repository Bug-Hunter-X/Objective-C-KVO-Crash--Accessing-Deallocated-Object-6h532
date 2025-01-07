# Objective-C KVO Crash: Accessing Deallocated Object

This repository demonstrates a common error in Objective-C when using Key-Value Observing (KVO): attempting to access a deallocated object that is still being observed.

## The Bug
The `bug.m` file contains code that sets up KVO observation on a property of an object.  If the observed object is deallocated before the observation is removed, a crash will occur.  This is because the observer attempts to access memory that has already been freed. 

## The Solution
The `bugSolution.m` file shows the corrected code.  The key to fixing this is to remove the observer in the deallocation method (`dealloc`) of the observed object.  This ensures that the observer is properly released before the observed object is deallocated.

## How to Reproduce
1. Clone this repository.
2. Open the project in Xcode.
3. Run the application. Observe the crash without the fix, and the successful run with the fix. 
