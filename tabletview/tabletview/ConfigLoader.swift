//
//  ConfigLoader.swift
//  tabletview
//
//  Created by Teaching on 3/12/26.
//
import Foundation

struct Config: Codable {
    let publishable_key: String
}
func loadAppSettings() -> Config? {
    guard let url = Bundle.main.url(forResource: "Config", withExtension: "plist") else {
        print("Settings.plist file not found.")
        return nil
    }

    do {
        let data = try Data(contentsOf: url)
        let decoder = PropertyListDecoder()
        let settings = try decoder.decode(Config.self, from: data)
        return settings
    } catch {
        print("Error decoding plist: \(error.localizedDescription)")
        return nil
    }
}
