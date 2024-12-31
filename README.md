
# ListApp-SwiftData

This project is a simple task management application where users can create, update, and track their tasks. It uses SwiftData for data management and SwiftUI for building the user interface. The application is designed to run on iOS.



## Features

- Create tasks
- Update tasks (mark as completed or pending)
- Delete tasks
- View completed tasks
- Data management using SwiftData


## Tech Stack

**SwiftUI:** Used for building the user interface.

**SwiftData:** Used for data management. All tasks are stored in the SwiftData database.

**Xcode:** Used for app development and compilation.
## Installation

**Prerequisites**
- Xcode 15 or above
- macOS operating system

**Clone the Project**

You can clone the project from GitHub to your local machine:

```
git clone https://github.com/giraysengonul/ListApp-SwiftData.git
```

The project does not have any external dependencies; Xcode with SwiftData is sufficient to run it.

Running the App
Open the project in Xcode.

Select your target device (either a real device or a simulator).

Press Cmd + R to run the app.
    
## Usage/Examples

**Usage**

**View Task List**

- Upon opening the app, users can view a list of tasks and sort them based on completion status.
**Add a Task**
- To add a new task, click the "Add" button in the top-right corner.
- Make sure to input a title for the task.
**Toggle Task Completion Status**
- To mark a task as completed or pending, click the toggle switch next to the task.
**Delete a Task**
- To delete a task, swipe right on the task to bring up the delete option.


**Task Model**
- The Task model stores information about each task. The model is defined as follows:

```swift
import SwiftData

@Model
public class Task{
    public var title: String
    
    public init(title: String) {
        self.title = title
    }
}
```

This model is stored in the database, and each task created by the user is converted into a Task object.

**Saving a Model:**

```swift
private func addTask(title: String) {
    let newTask = Task(title: title, isComplete: false)
    context.insert(newTask)
}
```
This function is used to add a new task.

**Deleting a Model:**

To delete a task programmatically, you can add the following function in your SwiftUI view:

```swift
private func deleteTask(task: Task) {
    context.delete(task)
}
```
## Contributing

If you wish to contribute to this project, follow these steps:

1- Fork the project.

2- Make changes in your own branch.

3- Submit a pull request to merge your changes with the main repository.


## License

This project is licensed under the MIT License. For more information, please check the LICENSE file.

[MIT](https://choosealicense.com/licenses/mit/)


## Authors
**Giray SENGONUL**

- [Github](https://github.com/giraysengonul)
- [LinkedIn](https://www.linkedin.com/in/giray-sengonul-168420318/?locale=en_US)

## Acknowledgements

 - Thank you to Apple Documentation for providing the tools and resources that helped me build this project.
- Special thanks to everyone who contributed feedback and suggestions during development.

