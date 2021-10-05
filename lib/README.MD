to run this automation you should do this :

1. download this repository
2. open the project in any IDE
3. activate the android emulator
4. open terminal in your IDE and make sure ure inside the project folder
5. run  flutter test integration_test/app_test.dart -d  'your_device_id'

for the structur setup in scrumban i will do like below. Please take notes that i am not really familiar with scrumban since i only have experience on scrum. so i will explain from my perspective after i do little research about scrumban.

1. since scrumban using few steps/flow from kanban (kanban board). i think it would be nice if QA has separate task related create automation and testing.
2. create automation and testing will have different point
3. testing task should be have same prioritization with automation task. but in really tight condition i think we should prioritize the testing first and put the automation task in backlog for next sprint
4. in Testing phase. automation task should be pull/ move to Testing phase (board).
5. The Flow would be like this

To Do  |   In Progress | Testing | Done
Test A     Auto B
Auto A
Test B
                        Auto C
                        Test C
                                    Auto D
                                    Test D

6. so ideally, if the testing done so the automate code should be done also. and if status still testing the automate code should be in testing status also.
for In-Progress status only filled by creating automation sice Testing task only can be moved in Testing Phase