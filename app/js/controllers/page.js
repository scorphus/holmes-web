(function() {
  'use strict';
  angular.module('holmesApp').controller('PageCtrl', function($scope, Restangular) {
    $scope.model = {};
    return $scope.model.domains = Restangular.all('domains').getList();
  });

}).call(this);

/*
//@ sourceMappingURL=page.js.map
*/