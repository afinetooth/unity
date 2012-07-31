# Unity
=====

A gem for maintaining consistent user experiences between different unit systems.

## What it does:

* Makes constructing unit-aware form elements easy.
* Fixes the biggest problem in switching between units---intelligently choosing the right value in the new unit system.

## How it works:

* Adds a new collection object to your projects, UnityCollection.
* Supports construction of form elements with standard Rails FormHelpers and FormOptionsHelpers.
* Provides an instance method of UnityCollection---closest_to(value)---for selecting the most appropriate value in the new unit system.

## Tutorial

Follow these steps to get unity working in your project.

# Installation

Add to your Gemfile and run the `bundle` command to install it.

```ruby
gem "unity"
```