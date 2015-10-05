# Boolean logic solver

This was designed to solve many boolean logic problems quickly, to facilitate a test scenario where you wish to ask a candidate many questions. If the questions change frequently you do need to manually check the answers, you can use this tool to automate it.

## Setup

``` sh
bundle install --binstubs
```

## Running

Amend `data/expressions.txt` to contain the boolean expressions you wish to solve. Then run

``` sh
ruby run.rb
```

You will find the results in `data/results.csv`

## Testing

``` sh
bin/rspec
```
