//
//  FHKPopupConfig.swift
//  FHKUtils
//
//  Created by Fredy Leon on 2/3/26.
//

import SwiftUI

public enum PopupType {
    case information(buttonText: String)
    case confirmation(okText: String, cancelText: String)
}

public struct PopupConfig {
    let title: String
    let message: String
    let type: PopupType
    let onOK: () -> Void
    let onCancel: (() -> Void)?

    public init(
        title: String,
        message: String,
        type: PopupType,
        onOK: @escaping () -> Void,
        onCancel: (() -> Void)? = nil
    ) {
        self.title = title
        self.message = message
        self.type = type
        self.onOK = onOK
        self.onCancel = onCancel
    }
}
