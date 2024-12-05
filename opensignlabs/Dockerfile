FROM registry.lazycat.cloud/opensign/opensignserver:main-20241128

#RUN sed -i "33a\    user.set('emailVerified', true);" /usr/src/app/cloud/parsefunction/usersignup.js
#RUN sed -i "90a\    user.set('emailVerified', true);" /usr/src/app/cloud/parsefunction/AddAdmin.js
#RUN sed -i "91a\    await user.save(null, { useMasterKey: true });" /usr/src/app/cloud/parsefunction/AddAdmin.js
#RUN sed -i "92a\    console.log('fuck');" /usr/src/app/cloud/parsefunction/AddAdmin.js
RUN sed -i "13d" /usr/src/app/cloud/parsefunction/VerifyEmail.js
#RUN sed -i "41a\    _user.set('emailVerified', true);" /usr/src/app/cloud/parsefunction/savecontact.js
#RUN sed -i "131a\    _user.set('emailVerified', true);" /usr/src/app/cloud/parsefunction/savecontact.js

#RUN sed -i "66a\    _user.set('emailVerified', true);" /usr/src/app/cloud/customRoute/v1/routes/createContact.js
#RUN sed -i "231a\    _user.set('emailVerified', true);" /usr/src/app/cloud/parsefunction/linkContactToDoc.js
#RUN sed -i "395a\    _user.set('emailVerified', true);" /usr/src/app/cloud/parsefunction/PublicUserLinkContactToDoc.js