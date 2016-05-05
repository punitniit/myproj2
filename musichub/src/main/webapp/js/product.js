angular.module('sortApp', [])

.controller('mainController', function($scope) {
  $scope.sortType     = 'name'; // set the default sort type
  $scope.sortReverse  = false;  // set the default sort order
  $scope.search   = '';     // set the default search/filter term
  
  // create the list  
  $scope.music = [
    { id: '1102', name: 'violin', brand: 'A',price:9500,category:'violin'},
    { id: '1103', name: 'flute', brand: 'B' ,price:2000,category:'flute'},
    { id: '1104', name: 'guitar', brand: 'C',price:6000,category:'guitar'},
    { id: '1105', name: 'tabla', brand: 'D',price:2500,category:'tabla'}
  ];  
  
});