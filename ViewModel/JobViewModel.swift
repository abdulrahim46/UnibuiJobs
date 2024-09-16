//
//  JobViewModel.swift
//  UnibuiJobs
//
//  Created by Abdul Choudhary on 9/10/24.
//

import Foundation
import SwiftUI
import CSV

class JobViewModel: ObservableObject {
    @Published var jobs: [Job] = []
    @Published var searchText: String = ""
    //@Published var favoriteJobs: Set<UUID> = []
    
    init() {
        loadJobsFromCSV()
    }
    
    // Function to load jobs from CSV using CSV.swift
    private func loadJobsFromCSV() {
        if let path = Bundle.main.path(forResource: "jobs", ofType: "csv") {
            do {
                // Open the CSV file using CSV.swift
                let stream = InputStream(fileAtPath: path)!
                let csv = try CSVReader(stream: stream, hasHeaderRow: true) // the first row is a header
                
                // Iterate through each row and parse the job data
                while let row = csv.next() {
                    if row.count == 5 { // Assuming there are exactly 5 columns
                        let job = Job(
                            title: row[0].trimmingCharacters(in: .whitespaces),
                            company: row[1].trimmingCharacters(in: .whitespaces),
                            location: row[2].trimmingCharacters(in: .whitespaces),
                            description: row[3].trimmingCharacters(in: .whitespaces),
                            requirements: row[4].trimmingCharacters(in: .whitespaces)
                        )
                        jobs.append(job)
                    }
                }
            } catch {
                print("Error reading CSV file: \(error.localizedDescription)")
            }
        } else {
            print("CSV file not found.")
        }
    }
    
    // Filter jobs based on search text
    var filteredJobs: [Job] {
        if searchText.isEmpty {
            return jobs
        } else {
            return jobs.filter {
                $0.title.lowercased().contains(searchText.lowercased()) ||
                $0.company.lowercased().contains(searchText.lowercased())
            }
        }
    }
    

//    func toggleFavorite(job: Job) {
//        if favoriteJobs.contains(job.id) {
//            favoriteJobs.remove(job.id)
//        } else {
//            favoriteJobs.insert(job.id)
//        }
//    }
//
//    func isFavorite(job: Job) -> Bool {
//        favoriteJobs.contains(job.id)
//    }

}
