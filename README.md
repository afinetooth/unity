# Unity
=====

A gem for maintaining consistent user experiences across different unit systems.

Make your apps all unit-y!

## What it does:

* Makes constructing unit-aware form elements easy.
* Fixes the biggest problem in switching between units---intelligently choosing the right value in the new unit system.

## How it works:

* Adds a new collection object to your projects, UnityCollection.
* Supports construction of form elements with standard Rails FormHelpers and FormOptionsHelpers.
* Provides an instance method of UnityCollection---closest_to(value)---for selecting the most appropriate value in the new unit system.

## Tutorial

Follow the steps here to get unity working in your project.

# Installation

Add `unity` to your Gemfile and run the `bundle` command to install it.

```ruby
gem "unity"
```

## Usage

Construct form elements as normal with FormHelpers and FormOptionsHelpers, but use UnityCollection as the source for your FormOptionsHelper.

Example:

```ruby
<%= select_tag("length", options_from_collection_for_select(@lengths, :with_units, :without_units, @lengths.closest_to("29 cm"))) %>
```

Notice the use of the FormOptionsHelper:

```ruby
options_from_collection_for_select(collection, value_method, text_method, selected = nil)
```

But for constructing unit-aware form elements, populate it as follows.

Where:

* collection is a UnityCollection.
* value_method generates the value for the option, in this case using a special method of the Unit object, with_units;
* text_method generates the text for the option, in this case using the Unit object's without_units method; and
* selected generates the selected value (if any) from the given collection.



For a full tutorial with examples, see wiki.

## Development

Questions or problems? Please post them on the [issue tracker](https://github.com/afinetooth/unity/issues). 

You can contribute changes by forking the project and submitting a pull request. 

This gem is created by James Kessler (afinetooth@gmail.com) and is under the MIT License.