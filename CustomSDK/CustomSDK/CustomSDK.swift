//
//  CustomSDK.swift
//  CustomSDK
//
//  Created by Avinash Soni on 06/11/23.
//

import Foundation
import WebKit
import UIKit

public class CustomSDK{
    
    public static let shared = CustomSDK()
    
    private var clientJSONObject: [String: Any]?
        private var prefillJSONObject: [String: Any]?

        private init() {
            // Initialize any setup tasks here
        }
    
    public func start(clientJSONObject: [String: Any], prifllJSONObject: [String: Any]? = nil){
        
        self.clientJSONObject = clientJSONObject
        self.prefillJSONObject = prifllJSONObject
        
        // Create an instance of CustomWebViewController
        let customWebViewController = CustomWebViewController()

        // Pass data to the new view controller
        if let dataToPass = clientJSONObject["keyToPass"] as? String {
            customWebViewController.dataToReceive = dataToPass
        }

        // Present the new view controller
        if let topViewController = UIApplication.shared.windows.first?.rootViewController {
            topViewController.present(customWebViewController, animated: true, completion: nil)
        }
        
        let responseData: [String: Any] = ["key": "value"]

                // Simulate a successful scenario
                onSuccess?(responseData)

                // Simulate a failure scenario
                onFailed?(responseData)

                // Simulate a cancellation scenario
                onCancel?(responseData)
    }
    
    public var onSuccess: (([String: Any]) -> Void)?
    public var onFailed: (([String: Any]) -> Void)?
    public var onCancel: (([String: Any]) -> Void)?
}
