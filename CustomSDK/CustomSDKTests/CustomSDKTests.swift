//
//  CustomSDKTests.swift
//  CustomSDKTests
//
//  Created by Avinash Soni on 06/11/23.
//

import XCTest
@testable import CustomSDK

final class CustomSDKTests: XCTestCase {

    func testSDKInteraction() {
            // Step 2: Test interaction with client app

            // Simulate receiving client JSON object
            let clientJSONObject: [String: Any] = ["key1": "value1", "key2": "value2"]

            // Start the SDK
            CustomSDK.shared.start(clientJSONObject: clientJSONObject)

            // Simulate success
        let successData = ["successKey": "successValue"]
            CustomSDK.shared.onSuccess?(successData)

            // Simulate failure
        let failureData = ["failureKey": "failureValue"]
            CustomSDK.shared.onFailed?(failureData)

            // Simulate error
        let cancellationData = ["cancelKey": "cancelValue"]
            CustomSDK.shared.onCancel?(cancellationData)
        }

}
