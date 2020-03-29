![Run Features](https://github.com/rockwig/code_challenge/workflows/Run%20Features/badge.svg)

# QA Code Test

### Setup
1. Download and unzip file
2. Rename your project "qa-interview-yourname"
3. Make sure your Ruby environment is using `ruby 2.3.3`
4. Be sure to bundle install
5. Run the example feature file:
    - `bundle exec cucumber features/example.feature`
6. Create the tests below in order.  You should be able to create any tests by building on the
   files that are already set up in the project.

Homepage='http://www.myrapname.com/'

### Tests
Write an automated test to validate each of the following:
1. The input fields exist
    * 2 Scenarios (one for each field)
2. A negative scenario using the input fields
    * 2 Scenarios (one for each field)
3. Input data into the fields
    * 2 Scenarios (one for each field) 
4. Submit a name for male with a nickname and validate that a new name has been prepended to the list
    * 1 Scenario
5. Submit twice for a female with a last initial and validate that a new name has been prepended to the list
    * 1 Scenario
    
Run the rapname feature file:
    - `bundle exec cucumber features/rapname.feature`