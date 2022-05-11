//
//  Copyright (c) Microsoft Corporation. All rights reserved.
//  Licensed under the MIT License.
//

import SwiftUI
import FluentUI

struct CompositeAvatar: View {
    @Binding var displayName: String?
    var isSpeaking: Bool
    var avatarSize: MSFAvatarSize = .xxlarge
    var avatarImage: UIImage?
    var body: some View {
        let isNameEmpty = displayName == nil
        || displayName?.trimmingCharacters(in: .whitespaces).isEmpty == true
        return Avatar(style: isNameEmpty ? .outlined : .default,
                      size: avatarSize,
                      image: avatarImage,
                      primaryText: displayName)
            .ringColor(StyleProvider.color.primaryColor)
            .isRingVisible(isSpeaking)
            .accessibilityHidden(true)
    }
}