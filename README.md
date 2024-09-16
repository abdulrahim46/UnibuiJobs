
# Job Search App


![Platform](https://img.shields.io/badge/Platform-iOS-orange.svg)
![Languages](https://img.shields.io/badge/Language-Swift-orange.svg)



## Installation
- Need Xcode 13+ & iOS 15+.
- open UnibuiJobs.xcodeproj
- Select the iphone simulator or connect device of your choice & run it. 
- Minimum iOS 16.

# Problem Statement

The Job Search App is an iOS application built using SwiftUI and the MVVM (Model-View-ViewModel) architecture. The app allows users to search for jobs, view details about each job, and save jobs as favorites. The job data is loaded from a CSV file and displayed in a scrollable list. Users can search for jobs by title or company name and filter results in real time.


   
# Architecture
MVVM (Model-View-ViewModel)
Models: Represent the job data, including title, company, location, description, and requirements.
Views: Display the UI using SwiftUI components, such as List, Text, NavigationView, and more.
ViewModels: Handle the logic, fetching jobs from the CSV file, managing search functionality, and toggling favorites.

# Features
Job Search:

Users can search for jobs by title or company name.
The search results update in real-time as users type into the search bar.
Job List:

Jobs are displayed in a scrollable list, showing the job title, company, and location.
Each job entry is tappable and navigates to the job detail screen.
Job Detail View:

When a user taps on a job, they are presented with detailed information, including the job description, requirements, and company details.
Favorites:

Users can favorite jobs by tapping a star icon in the job list.
The favorite state persists for the session and updates the UI.
CSV Parsing:

Job data is parsed from a local CSV file using the CSV.swift library. The CSV file contains job titles, companies, locations, descriptions, and requirements.

## Requirements
Create a SwiftUI Application:
Use SwiftUI to create the user interface.
Follow MVVM (Model-View-ViewModel) architecture.
CSV Integration:
Use the provided CSV file to fetch a list of jobs. The CSV file contains job data in tabular format.
Parse the CSV file and display the list of jobs in a scrollable view.
Job List Screen:
Display the job title, company name, and location in each job item.
Ensure the list is visually appealing and follows iOS design guidelines. Be creative, we want to see your UI/UX skills.
Job Detail Screen:
When a job item is tapped, navigate to a detail screen.
Display detailed information about the job, including the job description, requirements, and company information. Again, here you can show off your creativity.
Error Handling:
Handle potential errors gracefully, such as file reading errors or invalid data.
Display appropriate error messages to the user.

# Design Decisions
SwiftUI for UI: The app uses SwiftUI to build all UI components. SwiftUI provides a declarative way of designing the UI, leading to more maintainable code and better state management.

MVVM Architecture: The MVVM pattern ensures a clear separation between the user interface and business logic. This structure makes the app more testable and easier to maintain.

CSV.swift for CSV Parsing: The CSV parsing is handled using the CSV.swift library, providing a reliable and efficient way to parse job data from a CSV file.

## Limitations & Trade-offs
Limited Test Coverage:

Some unit and UI tests have been written, but due to time constraints, the test coverage is not comprehensive. Additional tests could improve the app's reliability and stability.
Simple UI Design:

While the UI is functional and adheres to SwiftUI standards, there is room for improvement in terms of visual design, especially on the detail view screen. More refined UI/UX designs could enhance the user experience.
No Persistent Storage for Favorites:

The favorite feature doesn't work properly so need to fix it.






## Improvements / Future Enhancements
Expand Test Coverage: Add more unit and UI tests using XCTest to ensure that all critical parts of the app (like job filtering, network calls, and view transitions) are tested.

UI Enhancements: Refine the user interface, particularly on the Job Detail View, by improving layout, adding animations, and making the app more visually appealing.

Favorites Persistence: Implement persistent storage for favorite jobs, allowing users to save jobs across app sessions (using Core Data or UserDefaults).

CSV Upload or API Integration: Enhance the app by allowing dynamic CSV uploads or fetching jobs from a remote API instead of a static CSV file.

#How to Run the Project
Clone the project from the repository.
Install any required dependencies using Swift Package Manager or CocoaPods.
Open JobApp.xcodeproj or JobApp.xcworkspace in Xcode.
Select a simulator, such as iPhone 15 Pro.
Press Cmd + R to build and run the app.



#Technology & Tools
iOS Version: iOS 16+
Xcode Version: 13+
Swift Version: 5+
CSV.swift: Used to parse the CSV file containing job data.
Auto Layout: Dynamic layout using SwiftUI.
MVVM: Used to structure the app for better separation of concerns and scalability.
Unit & UI Testing: XCTest used to write basic tests for view models and UI flows.
CSV parsing libarary.
Swift package manager.
CSV Parsing: CSV.swift


## 📱 Screenshots

<p float="left"> 
<img src="/demo/sim1.png" width="100">
<img src="/demo/sim2.png" width="100">
<img src="/demo/sim3.png" width="100">
</p>
