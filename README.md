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
     


