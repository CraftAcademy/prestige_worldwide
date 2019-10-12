# The Mid-course Project (RESTful APIs)
### Authors  
[Clarissa Liljander](https://github.com/clalil)   
[Sverrir Steindorsson](#) 
[Luca Lobacher](#)  
[David Izosimov](https://github.com/DavveDavve)  
[Miyesier Kaerman](#)  
[Laetitia Vettese Ursescu](#)
## Built with  
**Front End:** Rails, Tailwind, CSS  
**Back End:** Rails  
**Testing frameworks:** Cucumber, RSpec  
**Deployed at:** - 
**Project Management Tool:** [Pivotal tracker for our team](https://www.pivotaltracker.com/n/projects/2401272)

## The code   
This repository contains our team's solution to our mid-course project. For this app we're implementing a search-by-ingredient functionality for alcoholic beverages using a RESTful API. Moreover we're adding third-party user authentication ([OAuth](https://github.com/oauth-xx/oauth-ruby)) with Facebook, login functionality ([Devise](https://github.com/plataformatec/devise)) and payment options for subscribers ([Stripe](https://stripe.com/docs)). Finally, we are using the library [Webmock](https://github.com/bblimke/webmock) to mock our API response.

## Getting started
### Dependencies  
* Rails v. 6.0.0
* Postgresql
* Cucumber
* RSpec
* Bundler

### Setup [WIP]  
To test this application you need to fork it to your own GitHub account and clone it to your local workspace. After that, you should run the following commands in your terminal:   
 
```
$ bundle
$ rails db:migrate
$ rails db:seed
```  
If you have issues with the migrations, you might have to update your current version of bundle or yarn.  

To run the feature and unit tests:  
```
$ rake
```
To start the application and run it on your local host:
```
$ rails server
```

## Updates/Improvements  
At the moment this was written, the Stripe and search functionality were not yet merged. 

## License  
This project is under the [MIT-license](https://en.wikipedia.org/wiki/MIT_License).

### Acknowledgement  
Thank you [Craft Academy](https://craftacademy.se) for giving us this assignment.
