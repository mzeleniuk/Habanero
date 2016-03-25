Habanero = angular.module('Habanero', [
  'templates',
  'ngRoute',
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

controllers = angular.module('controllers', [])

controllers.controller("RecipesController", ['$scope',
  ($scope)->
])
