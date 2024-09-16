//
//  JobDetailView.swift
//  UnibuiJobs
//
//  Created by Abdul Choudhary on 9/10/24.
//

import SwiftUI
import SwiftUI

struct JobDetailView: View {
    let job: Job

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(job.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Company: \(job.company)")
                    .font(.headline)

                Text("Location: \(job.location)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                Divider()

                Text("Description")
                    .font(.title2)
                    .fontWeight(.semibold)

                Text(job.description)
                    .font(.body)
                    .padding(.bottom, 10)

                Text("Requirements")
                    .font(.title2)
                    .fontWeight(.semibold)

                Text(job.requirements)
                    .font(.body)
                    .padding(.bottom, 10)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle(job.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}
