//
//  Localization.swift
//  LocalizationFramework
//
//  Created by suubale on 7/25/23.
//

import Foundation

extension String {
    func localized(withComment comment: String = "") -> String {
        return Bundle.localizationFramework.localizedString(forKey: self,
                                           value: "**\(self)**",
                                           table: nil)
    }
}

public enum Localization {
    public static let title = "titleOne".localized()
    public static let description = "descriptionOne".localized()
}
