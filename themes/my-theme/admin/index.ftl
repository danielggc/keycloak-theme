
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <base href="/auth/resources/qyefu/admin/keycloak.v2/" />
    <link rel="icon" type="image/svg+xml" href="/auth/resources/qyefu/admin/keycloak.v2/favicon.svg" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Web site to manage keycloak" />
    

    <title>Keycloak Administration UI</title>
    <script type="importmap">
      {
        "imports": {
          "react": "/auth/resources/qyefu/common/keycloak/vendor/react/react.production.min.js",
          "react/jsx-runtime": "/auth/resources/qyefu/common/keycloak/vendor/react/react-jsx-runtime.production.min.js",
          "react-dom": "/auth/resources/qyefu/common/keycloak/vendor/react-dom/react-dom.production.min.js"
        }
      }
    </script>

    <style>
      body {
        margin: 0;
      }

      body, #app {
        height: 100%;
      }

      .container {
        padding: 0;
        margin: 0;
        width: 100%;
      }

      .keycloak__loading-container {
        height: 100vh;
        width: 100%;
        background-color: #f0f0f0;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        margin: 0;
      }

      #loading-text {
        z-index: 1000;
        font-size: 20px;
        font-weight: 600;
        padding-top: 32px;
      }
    </style>
    <script type="module" crossorigin src="/auth/resources/qyefu/admin/keycloak.v2/assets/index-sihFV1NS.js"></script>
    <link rel="stylesheet" crossorigin href="/auth/resources/qyefu/admin/keycloak.v2/assets/index-fWBYmwO3.css">
  

  </head>


  <body>
    <div id="app">
      <div class="container">
        <div class="keycloak__loading-container">
          <span class="pf-c-spinner pf-m-xl" role="progressbar" aria-valuetext="Loading...">
            <span class="pf-c-spinner__clipper"></span>
            <span class="pf-c-spinner__lead-ball"></span>
            <span class="pf-c-spinner__tail-ball"></span>
          </span>
          <div>
            <p id="loading-text">Loading the Admin UI</p>
          </div>
        </div>
      </div>
    </div>

    <noscript>You need to enable JavaScript to run this app.</noscript>
  

  <script id="environment" type="application/json">
    {
      "loginRealm": "master",
      "clientId": "security-admin-console",
      "authServerUrl": "http://localhost:8080/auth",
      "authUrl": "http://localhost:8080/auth",
      "consoleBaseUrl": "/auth/admin/master/console/",
      "resourceUrl": "/auth/resources/qyefu/admin/keycloak.v2",
      "masterRealm": "master",
      "resourceVersion": "qyefu",
      "logo": "/opt/",
      "logoUrl": ""
    }
  </script>
</body>


</html>
