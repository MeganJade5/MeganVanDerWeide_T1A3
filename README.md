# **Ruby Terminal Application - T1A3**
## Megan Van Der Weide

## **Purpose**

The main purpose of my terminal was to provide a free, open source application with easy navigations. The target audience and user is a personal trainer who will use the application to increase their productivity and their clients knowledge. The application is to be used before, during and after their sessions. The user will be able to input and view information about their clients injuries which is requirement for their job. With so much user ability to store and change their clients info, the application can be constantly adaptable for future use.

My prior knowledge of personal trainer platforms is that there data stored in complex systems which don’t allow for quick updates and brief recaps for their trainers. This is a necessity for a trainer prior to each session, to ensure that they’re tailoring the clients session for their personal injuries. In the role of a personal trainer their working day on the floor can be very busy, doing back to back 30 minute sessions for 6 hours straight, So I created this terminal to allow for the user to gain quick access to clients information. It aims to be a quick reminder about the important injury details of their client and therefore resolve the current issue of a trainer having to remember this off the top of their head. Developing my own trainer database has allowed for me to overcome the restrictions found in other products which are not flexible to the real life scenario of a trainers working day. It is to reduce the time, reduce paper waist and increase the gyms use of a database. 

The terminal application achieves it’s purpose by being clean and responsive via the convenance of a common line interface. Through its professional tone and language familiar to the user, the application allows for an easy user experience.

The application is accessible to any persons wanting to organise their database of clients to trainer. 

## **Features** 
The program consists of three trainers files which can be accessed to view or adjust the clients information within. The user is directed to select the following features from the main menu. The program features the following:

1. Create a new client
	The user is able to create a new client which stores their first name, last name, injury status and the placement of the injury on the clients body. This method utilises Ruby CSV file handling to generate an array result. 

    The user is to interact with inputing a new client method by reading and answering the onscreen questions for client creation. Inputing a new client involves the user being directed to input a valid string entry of the trainers (1,2 or 3) file that they choose to input into. The user is then to input valid string of the clients informations into the correct fields. Upon completion the user will be directed to input another client or return to the main menu. 

2. View individual client stored information
	The user is able to view clients stored information. Similar to the creating of the client the user will first select the corresponding trainer in which the client is stored within. The storage was first chosen during the creation of the client in the prior feature. The user input methods remain the same and they’re provided with onscreen prompts asking of the clients last name to locate the correct string of information. The program will return a string of the selected clients stored information, this will include their first name, last name, injury status and location of the injury. 

3. View suggested exercises and exercises to avoid for said injury
	Within this feature the user will be provided with a menu where arrow keys are to be used to navigate through the options. The user is required to press enter to confirm their selection. The menu is a stored array of different areas of the body. The application will ask the user which injury they wish to learn more about. Upon selecting, the terminal will provide the user with the ‘do’s and dont’s’ for training with this injured area. The program will then give the user an option to return to the main menu. 

4. Delete client and their stored information
    The user is able to delete an existing client. Through the familiar process of following the prompts to access the required trainers file and inputing the clients surname. The user will initiate deleting the required client through following the series of prompts. 

## **Help documentation** 
**Dependencies**
The app is dependent on the following gems: 
- TTY Pompt
- TTY Font 
- Rainbow 
- Rspec (for testing) 

The Ruby gems adjust the applications colour and styling. This approach aim to keep the users attention to the terminal. In addition the use colour allows for the user to differentiate where they are in the terminal.

These are automatically downloaded when you run the app in the terminal using ```./runmain.sh```

source: "https://rubygems.org"

## **Command Line Arguments:**
Command line arguments are a available for this application.
--g or --gems : Prints the gems used in the application
--h or --help : Prints help documentation
These can be used by running the app directly in the terminal (not the bash script): 
    ```ruby main.rb [argument]```


## **Application Flow**
The site navigational flow is through a question answer and/or selection responses from the user. Once the selection or answer is made, the user is provided with the outcome asked. If the incorrect or not recognisable answer or selection is made, the user will find themselves asked the question again or returned to the main menu. 

Please find the link to the application flow diagram:

## Application Flow Diagram
![Flow Diagram](/docs/flowchart1.png)

## Skeleton Planning Document
![Skeleton Planning](/docs/skeleton.png)

## **Implementation Plan (Trello)** 
The following is the projects implementation plan documented through Trello: 
[Megans Trello](https://trello.com/b/REkGoUFp/megan-terminal)

## **User Documentation**
## Trello 1
![Trello 1](/docs/Trello1.png)

## Trello 2
![Trello 1](/docs/Trello2.png)

## Trello 3
![Trello 1](/docs/Trello3.png)

## Trello 4
![Trello 1](/docs/Trello4.png)

## Trello 5
![Trello 1](/docs/Trello5.png)

## Trello 6
![Trello 1](/docs/Trello6.png)

**Instructions for installing the terminal are as followed:** 
1. Ensure that you have the latest version of Ruby on your computer. 
   *Please follow the instructions of installing Ruby if required.* 
    **Ruby Doc:** [Ruby documents](https://www.ruby-lang.org/en/documentation/installation/)
2. Whilst using a Mac computer, run the application by entering the following line into your terminal: 
   ```sh -c "$(curl -fsSL https://raw.githubusercontent.com/MeganJade5/MeganVanDerWeide_T1A3/master/runmain.sh)" ```

   There are a few options to start the application: 
   Running the following: ```ruby runmain.sh```
   Running the following: ```ruby main.rb```


**Alternatively follow the below steps:** 
1. Download application files through Github link source: 
   [Megans Github](https://github.com/MeganJade5/MeganVanDerWeide_T1A3/tree/master)
   It can be installed by clicking on the "Code" button at the top of this page. Clone this repository or download it and then unzip.

2. Open your terminal and navigate to the directory helpdesk_terminal that the files were cloned to
   
3. Run the following common in your terminal, please skip if you already have this installed:
    ```bundle install```

4. Navigate and run: 
    ```ruby runmain.sh```

If you are not sure how to access terminal on your computer, check out the following article for "opening command line".
[Command Line](https://towardsdatascience.com/a-quick-guide-to-using-command-line-terminal-96815b97b955)