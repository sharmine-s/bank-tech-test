# Bank tech test

## Installation

Welcome to my Bank tech test. To install my code and ensure you can run rspec, rubocop, and view my test coverage, make sure to clone this repo and run the following command:

```
bundle install
```

You can then run `rspec` and notice that all tests are passing, and that my code coverage is 100%. You can also run `rubocop` to see that I have no rubocop offenses. Please note that in the _.rubocop.yml_ file, I have added some exclusions I deemed necessary. This includes not checking the spec files for code length, and avoid running rubocop on the spec_helper and Gemfile documents.

## Process

Below is the diagram I fleshed out before diving into the code:
![Bank tech test diagram](Diagram.png)

My approach was to have an object for each transaction, which can then be applied to an account. Previously I had one class for deposits and one for withdrawals, but as they were exactly the same, I was given feedback to consolidate them into one. Depending on if the amount is positive (a deposit) or negative (a withdrawal), I've added a string to the `@transactions` array with the right credit/debit formatting to make it easier later in the `print_statement` method. As I was going through the self-assessment, I realized I could refactor some bits and remove redundant code, such as adding to a `@deposits` and a `@withdrawals` array that I didn't need to use in the end. One may notice the funny `format('%.2f'` syntax - this is to ensure amounts are shown to 2 decimal places. In the transaction class, I'm forcing the amount to be an integer for simplicity, and then converting the format esthetically once added to an account. Perhaps I could take more time researching a good data type for money that's not an integer so I don't need to reformat it later in account to 2 decimal places. Similar thing for picking a good variable for date to not be a string as my code doesn't currently enforce a format when entering it.

## Running the code on IRB
In order to run the code and play around with it, run the following on your terminal:

```
irb -r './lib/account.rb' -r './lib/transaction.rb'
```

From there, you can create a new `account` obejct. When creating a new `transaction` object, make sure to include an integer as the amount for the first argument, with a positive number for a deposit, or a negative number for a withdrawal. The date should be entered as a string in the second argument, in the format that you'd like. You must then use the `apply_transaction` on the `account` to apply it.

![IRB example](irb.png)

Thank you for reading and please let me know if you have any feedback :)