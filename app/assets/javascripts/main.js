messenger = angular.module('messenger', ['ngRoute', 'rails', 'faye']);

messenger.config(['$routeProvider', function($routeProvider) {
  $routeProvider.
    otherwise({
      templateUrl: '/assets/templates/home.html',
      controller: 'HomeCtrl'
    });
}]);
