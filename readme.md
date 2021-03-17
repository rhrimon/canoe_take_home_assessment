# Canoe Take Home Assessment

## Question 1

### INSTRUCTIONS
*Inside the folder titled `Question 1` you will find two SQL files. The file titled `create_db_and_data` contains the queries for creating the table and adding test data into them. These queries should be ran first. The second file titled `query` contains the actual queries to organize the data. These queries should be ran after the database has been created and populated with test data.*

This was an interesting question, with many different potential approaches to take. I ultimately decided to use SQL, and came to a solution using PostGres and a little bit of Python. After creating the database and tables, the first real challenge was generating enough test data to simulate a real world scenario as outlined in the problem. With every game loser putting in only $10 it would take a little while until the ultimate goal of $800 was reached. 

Pythons random module was a huge help here and with the following code I was able to quickly and easily generate 100 unique employee IDs, then pick from that pool of employee IDs to generate 200 random selections with duplicates to use as potential players in the game nights, and 200 random selections of either `TRUE` or `FALSE` for whether or not they were winners:   

```
def generator(int):
    # generate 100 unique employee IDs
    numlist = random.sample(range(1, 101), 100)
    print("INITIAL LIST OF EMPLOYEES")
    for i in numlist:
        print(f'{i}')
    # pick from pool of employee IDs to generate 200 random selections with duplicates 
    employee_list = random.choices(numlist, k=int)
    print("RANDOM EMPLOYEE IDS WITH DUPLICATES")
    for i in employee_list:
        print(i)
    # generate 200 random selections of either `TRUE` or `FALSE`
    torf = ['true', 'false']
    torf_list = random.choices(torf, k=int)
    print("RANDOM TRUE OR FALSE")
    for i in torf_list:
        print(i)
generator(200)
```

The code above does result in certain employee IDs being potentially repeated multiple times per game. In a real world scenario, this would not happen as no employee would play in the same game twice. For the purposes of generating test data for this problem, I decided that some repetitions would be okay. 

The second challenge was organizing the data in a way that would return the results I needed. 
One key point to track were which employees had lost per game. This would give me the total amount contributed towards the prize pot for that game. Adding these into its own column using an `OVER` clause would give me a running tally of the current prize pot, and a boolean column called `party_next` could keep track of whether or not the pot was greater than or equal to $800. If it was, then it would return `TRUE`, meaning the next even would be a party and not a game. Otherwise it would return `FALSE`. This effectively estimates when the pot will be full. 

Adding $10 for every game loser and removing $800 from the prize pot to reset it are both handled by multiple `CASE` statements. If the boolean column that tracks whether or not an employee is a winner for that game returns `FALSE` then 