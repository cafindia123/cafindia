/*
Give the service worker access to Firebase Messaging.
Note that you can only use Firebase Messaging here, other Firebase libraries are not available in the service worker.
*/
importScripts('https://www.gstatic.com/firebasejs/8.2.5/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.2.5/firebase-messaging.js');
/*
Initialize the Firebase app in the service worker by passing in the messagingSenderId.
* New configuration for app@pulseservice.com
*/
  var firebaseConfig = {
    apiKey: "AIzaSyBSE6Yio9aXaC81e-itW3APBI0lGEY4zMo",
    authDomain: "cafindiaweb-b43c8.firebaseapp.com",
    projectId: "cafindiaweb-b43c8",
    storageBucket: "cafindiaweb-b43c8.appspot.com",
    messagingSenderId: "758381815417",
    appId: "1:758381815417:web:8e2fb9415972c8b05856a8",
    measurementId: "G-FPL6M1377C"
  };
firebase.initializeApp(firebaseConfig);
  
/*
Retrieve an instance of Firebase Messaging so that it can handle background messages.
*/
const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function(payload) {
    console.log(
        "[firebase-messaging-sw.js] Received background message ",
        payload,
    );
    /* Customize notification here */
    const notificationTitle = "Background Message Title";
    const notificationOptions = {
        body: "Background Message body.",
        icon: "/itwonders-web-logo.png",
    };
  
    return self.registration.showNotification(
        notificationTitle,
        notificationOptions,
    );
});