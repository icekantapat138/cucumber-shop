#Kantapat radchawatr 6310450433
Feature: check product stock
  As a manager
  I want to get remaining products in stock

Background:
  Given the store is ready to service customers
  And a product "Bread" with price 20.50 and stock of 5 exists
  And a product "Jam" with price 80.00 and stock of 10 exists
  And a product "Orange" with price 25.00 and stock of 3 exists

Scenario: Buy one product
  When A customer bought "Orange" with quantity 3
  Then stock of "Orange" should be 0

Scenario: Buy multiple products
  When A customer bought "Orange" with quantity 2
  And A customer bought "Bread" with quantity 2
  Then stock of "Orange" should be 1
  And stock of "Bread" should be 3