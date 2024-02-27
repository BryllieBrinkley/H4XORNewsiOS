//
//  WebView.swift
//  H4XOR News
//
//  Created by Jibryll Brinkley on 2/27/24.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: NSViewRepresentable {
    
    let urlString: String?
    
    func makeNSView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateNSView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

