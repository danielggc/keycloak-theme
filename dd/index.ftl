<!DOCTYPE html>
<html>
<head>
    <title></title>

    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="${resourcesPath}/img/favicon.ico">
    <#if properties.styles?has_content>
    <#list properties.styles?split(' ') as style>
    <link href="${resourcesPath}/${style}" rel="stylesheet" />
    </#list>
    </#if>

    <script type="text/javascript">
        var authUrl = '${authUrl}';
        var consoleBaseUrl = '${consoleBaseUrl}';
        var resourcesPath = '${resourcesPath}';
        var masterRealm = '${masterRealm}';
        var resourceVersion = '${resourceVersion}';
    </script>

    <!-- Minimized versions (for those that have one) -->
    <script src="${resourcesPath}/node_modules/jquery/dist/jquery.min.js" type="text/javascript"></script>
    <script src="${resourcesPath}/node_modules/select2/select2.js" type="text/javascript"></script>
    <script src="${resourcesPath}/node_modules/angular/angular.min.js"></script>
    <script src="${resourcesPath}/node_modules/angular-resource/angular-resource.min.js"></script>
    <script src="${resourcesPath}/node_modules/angular-route/angular-route.min.js"></script>
    <script src="${resourcesPath}/node_modules/angular-cookies/angular-cookies.min.js"></script>
    <script src="${resourcesPath}/node_modules/angular-sanitize/angular-sanitize.min.js"></script>
    <script src="${resourcesPath}/node_modules/angular-translate/dist/angular-translate.min.js"></script>
    <script src="${resourcesPath}/node_modules/angular-translate-loader-url/angular-translate-loader-url.min.js"></script>
    <script src="${resourcesPath}/node_modules/angular-ui-select2/src/select2.js" type="text/javascript"></script>
    <script src="${resourcesPath}/node_modules/autofill-event/autofill-event.js"></script>


    <!-- Unminimized versions
    <script src="${resourcesPath}/node_modules/jquery/dist/jquery.js" type="text/javascript"></script>
    <script src="${resourcesPath}/node_modules/select2/select2.js" type="text/javascript"></script>
    <script src="${resourcesPath}/node_modules/angular/angular.js"></script>
    <script src="${resourcesPath}/node_modules/angular-resource/angular-resource.js"></script>
    <script src="${resourcesPath}/node_modules/angular-route/angular-route.js"></script>
    <script src="${resourcesPath}/node_modules/angular-cookies/angular-cookies.js"></script>
    <script src="${resourcesPath}/node_modules/angular-sanitize/angular-sanitize.js"></script>
    <script src="${resourcesPath}/node_modules/angular-translate/dist/angular-translate.js"></script>
    <script src="${resourcesPath}/node_modules/angular-translate-loader-url/angular-translate-loader-url.js"></script>
    <script src="${resourcesPath}/node_modules/angular-ui-select2/src/select2.js" type="text/javascript"></script>
    <script src="${resourcesPath}/node_modules/autofill-event/autofill-event.js"></script>
    -->

    <!-- Libraries not managed by yarn -->
    <script src="${resourcesPath}/lib/angular/ui-bootstrap-tpls-0.11.0.js"></script>
    <script src="${resourcesPath}/lib/angular/treeview/angular.treeview.js"></script>
    <script src="${resourcesPath}/lib/fileupload/angular-file-upload.min.js"></script>
    <script src="${resourcesPath}/lib/filesaver/FileSaver.js"></script>
    <script src="${resourcesPath}/lib/ui-ace/min/ace.js"></script>
    <script src="${resourcesPath}/lib/ui-ace/ui-ace.min.js"></script>

    <script src="${authUrl}/js/keycloak.js?version=${resourceVersion}" type="text/javascript"></script>

    <script src="${resourcesPath}/js/app.js" type="text/javascript"></script>
    <script src="${resourcesPath}/js/controllers/realm.js" type="text/javascript"></script>
    <script src="${resourcesPath}/js/controllers/clients.js" type="text/javascript"></script>
    <script src="${resourcesPath}/js/controllers/users.js" type="text/javascript"></script>
    <script src="${resourcesPath}/js/controllers/groups.js" type="text/javascript"></script>
    <script src="${resourcesPath}/js/controllers/roles.js" type="text/javascript"></script>
    <script src="${resourcesPath}/js/loaders.js" type="text/javascript"></script>
    <script src="${resourcesPath}/js/services.js" type="text/javascript"></script>

    <!-- Authorization -->
    <script src="${resourcesPath}/js/authz/authz-app.js" type="text/javascript"></script>
    <script src="${resourcesPath}/js/authz/authz-controller.js" type="text/javascript"></script>
    <script src="${resourcesPath}/js/authz/authz-services.js" type="text/javascript"></script>

    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script type="text/javascript" src="${resourcesPath}/${script}"></script>
        </#list>
    </#if>
</head>
<body data-ng-controller="GlobalCtrl" data-ng-cloak data-ng-show="auth.user">

<nav class="navbar navbar-default navbar-pf project-primary-color-background " role="navigation" data-ng-include data-src="resourcesPath + '/partials/menu.html'">
</nav>

<div class="container-fluid">
<div class="row">
    <div data-ng-view id="view"></div>
</div>
</div>

<div class="feedback-aligner" data-ng-show="notification.display">
    <div class="alert alert-{{notification.type}} alert-dismissable">
        <button type="button" class="close" data-ng-click="notification.remove()" id="notification-close">
            <span class="pficon pficon-close"/>
        </button>

        <span class="pficon pficon-ok" ng-show="notification.type == 'success'"></span>
        <span class="pficon pficon-info" ng-show="notification.type == 'info'"></span>
        <span class="pficon-layered" ng-show="notification.type == 'danger'">
            <span class="pficon pficon-error-octagon"></span>
            <span class="pficon pficon-error-exclamation"></span>
        </span>
        <span class="pficon-layered" ng-show="notification.type == 'warning'">
            <span class="pficon pficon-warning-triangle"></span>
            <span class="pficon pficon-warning-exclamation"></span>
        </span>
        <strong>{{notification.header}}</strong> {{notification.message}}
    </div>
</div>

<div id="loading" class="loading">Loading...</div>

</body>
</html>