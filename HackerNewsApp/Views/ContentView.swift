//
//  ContentView.swift
//  HackerNewsApp
//
//  Created by Christos Eteoglou on 2023-11-14.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(networkManager.posts, id: \.id) { post in
                    NavigationLink {
                        DetailView(url: post.url)
                    } label: {
                        HStack {
                            Text("\(post.points)")
                                .foregroundStyle(.orange)
                            
                            Text(post.title)
                        }
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}
