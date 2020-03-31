# Unity
=====

A gem for maintaining consistent user experiences between unit systems.

*Make your apps all unit-y!*

## What it does:

* Makes constructing unit-aware form elements easy.
* Fixes the biggest problem in switching between units---intelligently choosing the most appropriate value in the new unit system.

## How it works:

* Adds a new collection object to your projects, **UnityCollection**.
* Supports construction of form elements with standard Rails FormHelpers and [FormOptionsHelpers](http://apidock.com/rails/ActionView/Helpers/FormOptionsHelper).
* Provides an instance method of UnityCollection, **closest_to()**, for selecting the most appropriate value in the new unit system.

## Installation

Add `unity` to your Gemfile and run the `bundle` command to install it.

```ruby
gem "unity", :git => "git://github.com/afinetooth/unity.git"
```

## Usage

Construct form elements as normal with FormHelpers and [FormOptionsHelpers](http://apidock.com/rails/ActionView/Helpers/FormOptionsHelper), but use UnityCollection as the source for your FormOptionsHelper.

Example:

```ruby
<%= select_tag("length", options_from_collection_for_select(@lengths, :with_units, :without_units, @lengths.closest_to("29 cm"))) %>
```

Where @lengths is a UnityCollection, which might be constructed as follows:

```ruby
@lengths = UnityCollection.new(:units => "in", :range => 4..16, :increment => 0.5)
```

## Tutorial

Follow the steps [here](https://github.com/afinetooth/unity/wiki) to get unity working in your project.

## Development

Questions or problems? Please post them on the [issue tracker](https://github.com/afinetooth/unity/issues). 

You can contribute changes by forking the project and submitting a pull request. 

This gem is created by [James Kessler](mailto:afinetooth@gmail.com) and is under the MIT License.
