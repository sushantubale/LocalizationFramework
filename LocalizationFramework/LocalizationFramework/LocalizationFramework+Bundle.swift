//
//  LocalizationFramework+Bundle.swift
//  LocalizationFramework
//
//  Created by suubale on 7/25/23.
//

import Foundation

extension Bundle {
    static var localizationFramework: Bundle {
        guard
            let localizationBundle = Bundle(identifier: "com.localizationframework.LocalizationFramework") else { return .main }

        guard
            let bundlePath = localizationBundle.path(forResource: currentLanguage(of: localizationBundle),
                                                     ofType: "lproj"),
            let bundle = Bundle(path: bundlePath) else { return .main }

        return bundle
    }

    static func currentLanguage(of bundle: Bundle) -> String {
        var currentLanguage = String(Locale.current.identifier.prefix(2))
        let supportedLanguages = bundle.localizations

        if !supportedLanguages.contains(currentLanguage) {
            currentLanguage = bundle.preferredLocalizations[0]
        }

        return currentLanguage
    }
}
