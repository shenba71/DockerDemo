'use strict';

angular.module('demoappApp')
    .factory('Register', function ($resource) {
        return $resource('api/register', {}, {
        });
    });


