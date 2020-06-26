# Authentication with ADFS and AZURE ACTIVE DIRECTORY 

Settup ADFS WINDOw SERVER 2016.
1. add  Active Directory Domain Services 
    https://social.technet.microsoft.com/wiki/contents/articles/12370.windows-server-2012-set-up-your-first-domain-controller-step-by-step.aspx

2: Create SSL.
   https://www.youtube.com/watch?v=Lx34iwXLjz8
   
3. Install ADFS
   
   https://www.virtuallyboring.com/how-to-setup-microsoft-active-directory-federation-services-adfs/
   
   Note: 
   https://localhost/adfs/ls/idpinitiatedSignOn.aspx insted of 
   https://ADFS_FQDN/adfs/ls/idpinitiatedSignOn.aspx
   
   error: The resource you are trying to access is not available. Contact your administrator for more information.
   => https://blog.rmilne.ca/2017/06/20/how-to-enable-idpinitiatedsignon-page-in-ad-fs-2016/
   
   
4. Login user:
    using user in  Active Directory Domain Services:
    
5. implement logout (single page with angularjs using adal.js)
   // when user click logout button then login page will appear.
   (https://docs.microsoft.com/en-us/windows-server/identity/ad-fs/development/single-page-application-with-ad-fs) 

    5.1. In adaj.js
    AuthenticationContext.prototype.logOut = function () {
    var idTokenInfo = this._getItem(this.CONSTANTS.STORAGE.IDTOKEN); // New Line
    this.clearCache();
    var tenant = 'common';
    var logout = '';
    this._user = null;
    if (this.config.tenant) {
        tenant = this.config.tenant;
    }

    if (this.config.instance) {
        this.instance = this.config.instance;
    }

    if (this.config.postLogoutRedirectUri) {
        logout = 'post_logout_redirect_uri=' + encodeURIComponent(this.config.postLogoutRedirectUri);
        logout += "&id_token_hint=" + idTokenInfo; // New Line
    }

    var urlNavigate = this.instance + tenant + '/oauth2/logout?' + logout;
    this._logstatus('Logout navigate to: ' + urlNavigate);
    this.promptUser(urlNavigate);
};

   5.2. in app.js, adalProvider is dependency

  adalProvider.init(
        {
            instance: 'https://win-ocsrisfnhe0.arabitpro.local/', // your STS URL
            tenant: 'adfs',                      // this should be adfs
            clientId: 'https://localhost:65168', // your client ID of the
            postLogoutRedirectUri:'http://localhost:65168/index.html#/TodoList' // page is required login so it go to adfs's loginpage  automaticlly

            //cacheLocation: 'localStorage', // enable this for IE, as sessionStorage does not work for localhost.
        },
        $httpProvider
    );
     


