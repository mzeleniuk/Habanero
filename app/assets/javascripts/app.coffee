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
    )
])

recipes = [
  {
    id: 1
    name: 'Baked Potato w/ Cheese'
  },
  {
    id: 2
    name: 'Garlic Mashed Potatoes'
  },
  {
    id: 3
    name: 'Potatoes Au Gratin'
  },
  {
    id: 4
    name: 'Baked Brussel Sprouts'
  }
]

controllers = angular.module('controllers', [])
