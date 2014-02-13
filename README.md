# Population Model
A simple population model written in Julia.

## The point
There is almost no point to this. I wrote this mainly on the bus on the way
home from work when I had forgotten a book. Well, there is a point, but 
suffice it to say that I wanted to play with Julia some more than I had and 
this example came up. 

It should go without saying that this is probably error-filled, haphazard, and
unsuitable for any use, even as a population model. So, ya know, YMMV.

## Running
Clone the repository or just download it. If you have Julia, you can try 
running it from the command line. If you don't, may I suggest the 
[Julia Studio IDE](http://forio.com/products/julia-studio/)? 
(Disclosure: I work for the company that writes this free and open-source IDE 
for Julia).

In Julia Studio, you can open the driver file and hit ``F5`` or click the 
green arrow. From the command line, type ``julia driver.jl``.

## Modifying parameters
Parameters are all stored in ``Parameters.jl``, so that should be straightforward
enough. They can be changed and the model re-run immediately.

If you change the types or methods in the files other than ``driver.jl``, you 
may have to Reset the Julia console in Julia Studio IDE to get the changes
reflected, or run each file you changed individually. There's some trick to it
that I can never remember.

## TODOs
(Besides stop wasting my time with this simple, but somewhat fun model)

* Print out more useful information
* Modify birth and death rates to depend on the age of the generation 
  (using Distributions.jl likely, a good Beta never hurt anyone)
* Add type and functions to track various population statistics.
* Add support for Julia graphing (for my own practice)

