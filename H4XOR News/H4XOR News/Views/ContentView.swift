//
//  ContentView.swift
//  H4XOR News
//
//  Created by Jibryll Brinkley on 2/27/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                    
                }
            }
            .navigationTitle("H4XOR NEWS")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}


//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "World"),
//    Post(id: "3", title: "Goodbye")
//]
