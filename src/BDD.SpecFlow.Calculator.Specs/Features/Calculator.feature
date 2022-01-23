Feature: Calculator
	![Calculator](https://specflow.org/wp-content/uploads/2020/09/calculator.png)
	Simple calculator for adding **two** numbers

	Link to a feature: [Calculator](SpecFlow.Calculator.Specs/Features/Calculator.feature)
	***Further read***: **[Learn more about how to generate Living Documentation](https://docs.specflow.org/projects/specflow-livingdoc/en/latest/LivingDocGenerator/Generating-Documentation.html)**

@mytag
Scenario: Add two numbers
	Given the first number is 50
	And the second number is 70
	When the two numbers are added
	Then the result should be 120

Scenario: Add two numbers as parameters
	When the first number is 30 and the second number is 70
	Then the result should be 100

Scenario Outline: Add two numbers as parameters with table
	When the first number is <First> and the second number is <Second>
	Then the result should be <Result>

	Examples:
	  | First | Second | Result |
	  | 50    | 70     | 120    |
	  | 30    | 40     | 70     |
	  | 60    | 30     | 90     |