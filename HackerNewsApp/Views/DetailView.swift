//
//  DetailView.swift
//  HackerNewsApp
//
//  Created by Christos Eteoglou on 2023-11-14.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}

