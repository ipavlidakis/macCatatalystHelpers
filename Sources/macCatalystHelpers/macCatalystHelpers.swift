#if canImport(AppKit)

import AppKit

public struct WindowConfigurator {

    static func disableMaximizeButton() {
        NSApplication.shared.windows.forEach {
            $0.collectionBehavior = [.fullScreenAuxiliary, .fullScreenNone]
            $0.standardWindowButton(.fullScreenButton)?.isEnabled = false
        }
    }
}

#endif
