$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("Web01.feature");
formatter.feature({
  "comments": [
    {
      "line": 1,
      "value": "#Author: Lathusha"
    }
  ],
  "line": 4,
  "name": "verify search option",
  "description": "I want to verify search option",
  "id": "verify-search-option",
  "keyword": "Feature"
});
formatter.scenario({
  "line": 8,
  "name": "Search function",
  "description": "",
  "id": "verify-search-option;search-function",
  "type": "scenario",
  "keyword": "Scenario",
  "tags": [
    {
      "line": 7,
      "name": "@search"
    }
  ]
});
formatter.step({
  "line": 9,
  "name": "I want to verify search option",
  "keyword": "Given "
});
formatter.match({
  "location": "SearchProcess.User_Login_Again()"
});
formatter.result({
  "duration": 46947181600,
  "status": "passed"
});
formatter.uri("Web02.feature");
formatter.feature({
  "line": 1,
  "name": "Women top",
  "description": "",
  "id": "women-top",
  "keyword": "Feature"
});
formatter.scenario({
  "line": 4,
  "name": "navigate to the woman top",
  "description": "",
  "id": "women-top;navigate-to-the-woman-top",
  "type": "scenario",
  "keyword": "Scenario",
  "tags": [
    {
      "line": 3,
      "name": "@filter"
    }
  ]
});
formatter.step({
  "line": 5,
  "name": "User filter product",
  "keyword": "Given "
});
formatter.match({
  "location": "MyorderProcess.Given_User_filter_product()"
});
formatter.result({
  "duration": 40073609100,
  "status": "passed"
});
formatter.uri("Web03.feature");
formatter.feature({
  "line": 1,
  "name": "Add to Cart",
  "description": "",
  "id": "add-to-cart",
  "keyword": "Feature"
});
formatter.scenario({
  "line": 5,
  "name": "Things add to cart",
  "description": "",
  "id": "add-to-cart;things-add-to-cart",
  "type": "scenario",
  "keyword": "Scenario",
  "tags": [
    {
      "line": 3,
      "name": "@Addtocart"
    }
  ]
});
formatter.step({
  "line": 6,
  "name": "User add things to cart",
  "keyword": "Given "
});
formatter.match({
  "location": "AddToCartProcess.click_on__button()"
});
formatter.result({
  "duration": 37033123600,
  "status": "passed"
});
});