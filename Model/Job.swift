//
//  Job.swift
//  UnibuiJobs
//
//  Created by Abdul Choudhary on 9/10/24.
//

import Foundation

struct Job: Identifiable {
    let id = UUID()  // unique identifier
    let title: String
    let company: String
    let location: String
    let description: String
    let requirements: String
}
