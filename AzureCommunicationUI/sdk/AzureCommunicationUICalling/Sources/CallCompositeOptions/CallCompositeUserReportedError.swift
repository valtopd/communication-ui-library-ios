//
//  Copyright (c) Microsoft Corporation. All rights reserved.
//  Licensed under the MIT License.
//

import UIKit

/// Represents an event where a user reports an issue within the call composite.
public struct CallCompositeUserReportedIssue {

    public let screenshot: URL?
    /// The user's message describing the issue.
    public let userMessage: String
    /// An array of call identifiers associated with the user's session.
    public let debugInfo: DebugInfo

    /// Initializes a new `CallCompositeUserReportedIssueEvent`.
    /// - Parameters:
    ///   - userMessage: A message describing the issue from the user's perspective.
    ///   - logFiles: URLs pointing to logs relevant to the issue.
    ///   - callIds: Identifiers of the calls involved in the issue.
    public init(userMessage: String,
                debugInfo: DebugInfo,
                screenshot: URL?) {
        self.userMessage = userMessage
        self.screenshot = screenshot
        self.debugInfo = debugInfo
    }
}

extension CallCompositeUserReportedIssue: Equatable {
    public static func == (lhs: CallCompositeUserReportedIssue, rhs: CallCompositeUserReportedIssue) -> Bool {
        return lhs.userMessage == rhs.userMessage && lhs.screenshot == rhs.screenshot
    }
}
