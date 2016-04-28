# OpenStruct performance

# What is OpenStruct anyway?

* Very useful and flexible class

# OpenStruct is super convenient

## What's the catch?

Internally, OpenStruct defines methods for each parameter.

# Cost of metaprogramming

Metaprogramming in Ruby is the technique of defining behavior to be
determined at run time. The canonical example is probably
`method_missing`.

Metaprogramming comes with a run-time penalty.


# What about a class?

* Number of `attr_accessors` matters!

An unusual situation came up dealing with an STI model:
many, many different column names were introduced for programming
convenience.

Whether STI was appropriate is a different story (where the conclusion
is "maybe").

Carrier classes were inherited from OpenStruct.

The convenience here is not needing to worry about arbitrary
attributes, which can be set as needed with openstruct.

# OpenStruct can be as fast

It turns out that when the number accessors is relatively large,
OpenStruct is competitive.


# Memory consumption



# Summary

* Use at the boundary where performance doesn't matter
