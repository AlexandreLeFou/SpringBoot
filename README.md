# SpringBoot Application

The aim of this repository is to learn **Spring Boot** and develop a CRUD application regarding a Car Repair Shop so as to deeply understand design patterns regarding the 3-tier Architecture used by this MVC framework.


During server's startup, in the application.properties(/src/main/resources) file change the 25th line:

``spring.jpa.hibernate.ddl-auto= none `` to ``spring.jpa.hibernate.ddl-auto= create-drop ``

if you wish to disable Spring Boot from automatically loading 20 tuples of dummy data for each table so as to adequately Unit Test the application. When the server's proccess is terminated all data will be deleted automatically ([Spring Boot Documentation: Database Initialization](https://docs.spring.io/spring-boot/docs/current/reference/html/howto-database-initialization.html)).

After importing the project, simply fire up your server (tomcat's port is set to 8000) and click the following:



## Login Page

The Login page (username/password) is validating the input via the database's password records which are hash encrypted. 
 In order to login and test out the application the following login credentials are given [username/password] :

	- User_Role: ssore1@gmpg.org / pass1234
	- Admin_Role: lrutgers3@ustream.tv / pass1234

Ρegarding Hash Encryption, user, administrator in these credentials have deliberately the same value. More specifically, even though they have the same (string) value, they are stored differently to our database. More specifically,
User_Role Password is encrypted as: `$10$FKg42N1H9SytX7kr6m7TGu8T4uOcAdF5DTZOrI69CxPMVuVMm9iiy`

whereas

Admin_Role Password is encrypted as: `$2a$10$vYxq4JAQ2YTpleuCoYRtvOP8bcfS9gfgmbJU7L/MRcIGbWmSGtZfS`

Admin_Role is encrypted as:  `$2a$10$vYxq4JAQ2YTpleuCoYRtvOP8bcfS9gfgmbJU7L/MRcIGbWmSGtZfS`

## [Users's Index Page](http://localhost:8000/carshopwebapp/) 

Depending on the user's credentials the webpage shall display the current Repair status of the car as stored to the database.

## [Admin's Index Page](http://localhost:8000/carshopwebapp/) 

The index page consists of the following:

-Contributors page

-Display All Contributors

-User/Owner of a Car page

	a. Create New User Entry

	b. Display All Entries

	c. Update/Delete an Entry

-Car Repair Shop page 

	a. Create New Repair Entry
	
	b. Display All Entries
	
	c. Update/Delete an Entry
	
	
-Search the Database (via User Input) 


	a. For a user's surname display all available db records
	
	b. For a user's AFM (National Insurance number) display all available db records
	
	c. For a user's Email Adress display all available db records
	
-Search the Database for the last 10 Repairs of the (current) day

	
	
The project was developed in collaboration with: [Alexandros Gazis](https://github.com/AlexandrosGazis), [Giorgos Anagnostakis](https://github.com/GiorgosAnagnostakis), [Kostas Beroukas](https://github.com/KostasGit) and [Katerina Manioudaki](https://github.com/katerinaeks).

