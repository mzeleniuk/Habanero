Habanero = angular.module('Habanero', [
  'templates',
  'ngRoute',
  'ngResource',
  'controllers'
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
