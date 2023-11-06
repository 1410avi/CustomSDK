//
//  CustomWebViewController.swift
//  CustomSDK
//
//  Created by Avinash Soni on 06/11/23.
//

import UIKit
import WebKit

class CustomWebViewController: UIViewController, WKScriptMessageHandler {

    var webView: WKWebView?
    var dataFromSDK: [String: Any]?
    var dataToReceive: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        let configuration = WKWebViewConfiguration()
        configuration.userContentController.add(self, name: "customInterface")


        let webView = WKWebView(frame: view.bounds, configuration: configuration)
        webView.navigationDelegate = self
        view.addSubview(webView)
        self.webView = webView
        
        if let dataReceived = dataToReceive {
            print("Received data in CustomWebViewController: \(dataReceived)")
            // You can now use the received data in your web view or for any other purpose
        }

        if let urlString = dataFromSDK?["webPageURL"] as? String, let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    // Implement method to handle messages from JavaScript
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if let body = message.body as? [String: Any] {
            if let action = body["action"] as? String {
                switch action {
                case "sendPGOptions": break
                    // Implement sendPGOptions logic
                case "sendADOptions": break
                    // Implement sendADOptions logic
                case "sendSuccess": break
                    // Implement sendSuccess logic
                default:
                    break
                }
            }
        }
    }
}

extension CustomWebViewController: WKNavigationDelegate {
    // Implement WKNavigationDelegate methods if needed
}
