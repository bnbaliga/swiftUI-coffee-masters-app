//
//  InfoView.swift
//  CoffeeMasters
//
//  Created by Narasimha Baliga on 8/6/22.
//

import SwiftUI
import WebKit

struct Info: View {
    var body: some View {
        VStack {
                    //AppTitle()
                    WebView()
                }
    }
}

class WebInterfaceDialogs: NSObject, WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print(message.body)
    }
}

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.userContentController.add(WebInterfaceDialogs() , name: "alert")
        return WKWebView(frame: .zero, configuration: config)
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let url = URL(string: "https://firtman.github.io/coffeemasters/webapp")!
        webView.load(URLRequest(url: url))
        
        let name = UserDefaults.standard.string(forKey: "name") ?? ""
        webView.evaluateJavaScript("injectFormData('\(name)')")
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}
