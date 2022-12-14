# Authentication-block

Hi! That's my Authorisation app using VIPER.

Here it is.

## Project flowchart

![Flowchart-6](https://user-images.githubusercontent.com/106081917/196931166-e50d245d-9bc3-4d5b-ba62-458890cd4177.jpg)

| File | Description |
|:----|:----|
| 1. **Router** | Asks AssemblyModuleBuilder to create Modules (Presenter + View) and presents Modules on the screen.  |
| 2. **Assembly Module Builder** | Creates Modules |
| 3. **Network Service** | Contains all the network methods: internet connection check, images downloading, etc. |
| 4. **Firebase Service** | Contains all the Firebase methods: log in, sign up, log out, delete user account |
| 5. and 6. **Presenters** | 1. Contain all the methods that connect the views and the network layer, the views and the router.  2. Can manage the views.  3. Are independent from each other. |
| **Views** | 1. Contain only UI methods. 2. Are independent from each other. |


## Interface  
### Registration process  

**1.0 [StartHereViewController] First module:**  
— internet connection check  
— error handling  
— downloading random screen-size image  
— button pushing presents SIGN IN / REGISTRATION modal screen  
view | error handling
:-: | :-:
<video src='https://user-images.githubusercontent.com/106081917/196025793-fb98b076-8cc6-4466-aa84-98b9b5711ad9.mp4' width=180/> | <video src='https://user-images.githubusercontent.com/106081917/196025810-06bc90ed-de19-4fcb-9ba0-406391c11d42.mp4' width=180/>


**1.1 [SignInViewController] SIGN IN / REGISTRATION modal screen**  
— internet connection check  
— error handling  
— checking the data in the text field  
— button pushing presents PASSWORD modal screen 

**1.2 [PasswordViewController] PASSWORD modal screen**  
— internet connection check  
— error handling  
— checking the data in the text field  
— button pushing presents either REGISTRATION modal screen or LOGGED IN modal screen  

**1.3 [RegistrationViewController] REGISTRATION modal screen**  
— internet connection check  
— error handling  
— checking the data in the text field 
1.1 SIGN IN / REGISTRATION modal screen | 1.2 PASSWORD modal screen | 1.3 REGISTRATION modal screen
:-: | :-: | :-:
<video src='https://user-images.githubusercontent.com/106081917/196026765-9a7a70fc-e38a-461e-9588-2c7ffa4eed82.mp4' width=180/> | <video src='https://user-images.githubusercontent.com/106081917/196026831-ee934f77-d0bb-41b2-8641-6a689755c50f.mp4' width=180/>  | <video src='https://user-images.githubusercontent.com/106081917/196026923-188c1d7f-6252-441b-9f4e-bc50ca872198.mp4' width=180/>

**2.0 [LoggedInViewController] LOGGED IN modal screen**  
— Label shows username  
— Button for logging out  
— Button for deleting account  
— Deleting confirmation with the alert controller  
<video src='https://user-images.githubusercontent.com/106081917/196027024-a2cc6a3c-49cd-4cf9-8f6a-ea6652965f44.mp4' width=180/>

#### The process of logging in and deleting an account

logging in | deleting an account
:-: | :-:
<video src='https://user-images.githubusercontent.com/106081917/196027412-c8458534-4ea3-47d5-8a46-84b593603d3a.mp4' width=180/> | <video src='https://user-images.githubusercontent.com/106081917/196027423-f0cbec7f-e0b2-40bb-bd08-4b14e8b2a419.mp4' width=180/>



## Firbase responses

**Firebase_Auth creates user account**  
<img width="937" alt="Firebase Auth create account feedback" src="https://user-images.githubusercontent.com/106081917/196028983-b5e221aa-141b-4be2-9042-41694cd7cdbb.png">

**Firebase_Database creates user account**  
<img width="361" alt="Firebse Database create account feedback" src="https://user-images.githubusercontent.com/106081917/196028990-d4b12dfc-66c1-4265-9992-0ab5e3fdc161.png">

**Firebase_Database deletes user account**  
<img width="389" alt="Firebase database delete user feedback" src="https://user-images.githubusercontent.com/106081917/196029011-8d70d47b-3526-4331-9ca7-5e18dfdeccae.png">


# That is all. Thanks for watching!

















