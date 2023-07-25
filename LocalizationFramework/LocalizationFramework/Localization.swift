//
//  Localization.swift
//  LocalizationFramework
//
//  Created by suubale on 7/25/23.
//

import Foundation

extension String {
    func localized(withComment comment: String = "") -> String {
        return Bundle.main.localizedString(forKey: self,
                                           value: "**\(self)**",
                                           table: nil)
    }
}

public enum Localization {
    public static let title = "title".localized()
    public static let description = "description".localized()
}
