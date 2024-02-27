//
//  SwiftUIView.swift
//  H4XOR News
//
//  Created by Jibryll Brinkley on 2/27/24.
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
