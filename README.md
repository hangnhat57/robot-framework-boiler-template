# Test Framework --  Robotframework


---

**Descriptions**
* Keyword automated testing framework using
    * Robotframework
    * Gitlab CI
    * Allure Report
    
## Table of Contents
* [Installation](#installation)
* [Structure](#structure)
* [Convention](#convention)
* [TODO](#todo)


<a id="installation"></a>
## Installation

Install python3
Install dependencies from requirements.txt
Install docker && docker-compose


<a id="structure"></a>
## Structure
```
├── Pages                            Store all elements and functions for each page
│   ├── CreateNewStoryPage.robot
│   ├── HomePage.robot
│   └── ProfilePage.robot
├── README.md
├── RobotFrameworkSlackNotifier.py
├── Steps                            All helper steps, custom scripts define here
│   └── Common.robot
├── SuitesUI                         All Test cases define here
│   └── TestCase.robot
├── Variables                        Store all variables, parameters for testing
│   └── GlobalVar.py
├── docker-compose.yml
├── exec.sh
└── requirements.txt
```


<a id="convention"></a>
## Convention

1. Test case must have unique ID
2. Test case must include tags 
3. Test case must have BDD keyword : Given - When - Then - and

    * For examples: 

```
[TC_001] Login to app with company admin user
    [Tags]    Main
    Given Go to homepage
    When Login to app with email nhat.nguyen and password dobietpassword
    Then Logged in successfully
```

4. All defined pages should follow Page Object Model concept
    * Element which belong to a page should be defined in that page file 
    * Any function belong to a page should be defined in that page file 
    * For examples, Login to application : 
        * Login fields belong to Login Page, then we store Login fields in LoginPage.robot
        * Login To App With User user and Password password keyword/functions should store in LoginPage
        * After Login, User should be redirected to a page, then we check for Log in success. So we store keyword/function to check for logging in success in that page
5. We use Xpath for store WebElements