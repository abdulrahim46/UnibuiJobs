//
//  JobListView.swift
//  UnibuiJobs
//
//  Created by Abdul Choudhary on 9/10/24.
//

import SwiftUI

struct JobListView: View {
    @ObservedObject var viewModel = JobViewModel()

    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $viewModel.searchText)
                List(viewModel.filteredJobs) { job in
                    NavigationLink(destination: JobDetailView(job: job)) {
                        JobRowView(viewModel: viewModel, job: job)
                    }
                }
            }
            .navigationTitle("Jobs")
        }
    }
}

struct JobRowView: View {
    @ObservedObject var viewModel: JobViewModel
    let job: Job
    
    var body: some View {
            HStack {
                VStack(alignment: .leading) {
                    Text(job.title)
                        .font(.headline)
                    Text(job.company)
                        .font(.subheadline)
                    Text(job.location)
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
//                Spacer()
//                Button(action: {
//                    viewModel.toggleFavorite(job: job)
//                }) {
//                    Image(systemName: viewModel.isFavorite(job: job) ? "star.fill" : "star")
//                        .foregroundColor(.yellow)
//                }
            }
        }
}
