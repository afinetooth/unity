unity
=====

A gem for maintaining a consistent user experience between different unit systems.

What unity does:

* Makes constructing unit-aware form elements easy.
* Fixes the biggest problem in switching between units---intelligently choosing the right value in the new system.

How unity works:

* Adds a new collection object to your projects, UnityCollection.
* Prescribes construction of form elements with standard Rails FormHelpers and FormOptionsHelpers.
* Provides an instance method of UnityCollection---closest_to(value)---for selecting the most appropriate value in the new unit system.