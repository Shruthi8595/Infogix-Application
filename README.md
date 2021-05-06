Testing Infogix Application using Robot Framework

**Robot Framework Structure **

	TC 001 : Verify whether User can Succesfully fill the form and Submit the data
	TC002 : Verify if the link"regulatorycompliance" is targetting https://www.infogix.com/solutions/regulatory-compliance/
	
	Common Folder 
		Here I am writing the Test Setup and Tear down for Open Browser and Closing the Browser
		
	PageObjectModel
		This is a Python file so the file extension is .py 
		Here I am storing all the identified webelement in Variables
	
	Resource 
		Here I am importing the PageObjectModel and Selenium Library under Settings Section 
		Here I am creating user defind keywords and performing some actions using Robot framework inbulit function
		
	TestCase
		Setting Section : I am importing the Selenium Library and Keyword file from resource 
		Variable Section : Passing the data for the arguments
		TestCase : contains TestCase which include user defined keywords from Resource folder
Note: To Run the Cases in the Terminal : We need to give path of the Current Project and navigate to the TestCases folder C:\Users\91994\PycharmProjects\Robot FrameWork\Infogix\TestCases> robot Testcasefile name .robot

	► Run  all the Test Cases in single Same Browser:  
			1. robot -d Reports TestCases\ or robot -d Reports TestCases\*
	
	► Run  Test Cases in Parallel : install Robotframework-pabot (pip install -U robotframework-pabot) :
			1. Run all the Testcases : pabot -d Reports TestCases\*
			2. Run only 2 Cases : pabot --processes 2 TestCases\*
			
	► Run TestCases and Test Suit using Regular Expression
			1. robot -d Reports TC*.robot
		
	► Include Browser and URL 
			1. robot -d Reports -v URL : " path " -v browser : Firefox TC*.robot
			
	► Give Name for Report
			1. robot -N RegressionSuits TestCases/TC001_FillForm.robot
				-N -> gives the generic name for the Reports 
		
	► Grouping the TestCase using Tags
		***TestCase***
		TC001 
			[Tags] Smoke
			Log to console  SmokeTesting
		TC002
			[Tags] Regression
			Log to console  RegressionTesting
			
		Terminal : 
			1. robot -d Reports --i/include Smoke TestCasefoldername.robot ---> Include
			2. robot -d Reports --e/exclude Smoke TestCasefoldername.robot ---> excluding
			3. robot -d Reports --i Smoke --e Regression TestCasefoldername.robot  ---> Includes Smoke testcases and excludes Regression Testcases
