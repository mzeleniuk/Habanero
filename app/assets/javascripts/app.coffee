Habanero = angular.module('Habanero', [
  'templates',
  'ngRoute',
  'ngResource',
  'controllers',
  'angular-flash.service',
  'angular-flash.flash-alert-directive'
])

Habanero.config(['$routeProvider',
  ($routeProvider)->
    $routeProvider
    .when('/',
      templateUrl: "index.html"
      controller: 'RecipesController'
    ).when('/recipes/:recipeId',
      templateUrl: "show.html"
      controller: 'RecipeController'
    )
])

controllers = angular.module('controllers', [])
