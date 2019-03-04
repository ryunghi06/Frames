(function () {
    'use strict';

    angular
        .module('FramesPopup', ['ngRoute', 'ngMaterial'])
        .controller('PopupController', PopupController);

    PopupController.$inject = ['$scope','$mdDialog'];
    
    function PopupController($scope, $mdDialog) {
        $scope.title = 'PopupController';
        $scope.status = '  ';
        $scope.customFullscreen = false;

        $scope.showAlert = function (ev) {
            // Appending dialog to document.body to cover sidenav in docs app
            // Modal dialogs should fully cover application
            // to prevent interaction outside of dialog
            $mdDialog.show(
                $mdDialog.alert()
                    .parent(angular.element(document.querySelector('#popupContainer')))
                    .clickOutsideToClose(true)
                    .title('This is an alert title')
                    .textContent('You can specify some description text in here.')
                    .ariaLabel('Alert Dialog Demo')
                    .ok('Got it!')
                    .targetEvent(ev)
            );
            console.log("showAlert");
        };

        $scope.ShowSignin = function (ev) {
            $mdDialog.show({
                controller: DialogController,
                templateUrl: '../SignIn.aspx',
                parent: angular.element(document.body),
                targetEvent: ev,
                clickOutsideToClose: true,
                fullscreen: $scope.customFullscreen // Only for -xs, -sm breakpoints.
            })
                .then(function (answer) {
                    $scope.status = 'You said the information was "' + answer + '".';
                }, function () {
                    $scope.status = 'You cancelled the dialog.';
                });
        };

        function DialogController($scope, $mdDialog) {
            $scope.hide = function () {
                $mdDialog.hide();
            };

            $scope.cancel = function () {
                $mdDialog.cancel();
            };

            $scope.answer = function (answer) {
                $mdDialog.hide(answer);
            };
        }

        activate();

        function activate() {
            console.log("test");
        }


    }
})();
