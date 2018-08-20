//
//  Configurator.swift
//  DiffFormatter
//
//  Created by Dan Loman on 8/14/18.
//  Copyright © 2018 DHL. All rights reserved.
//

import Foundation

struct Configurator {
    private static let configFilePathComponent: String = "/.diff_formatter/config.json"

    private(set) var configuration: Configuration

    private let fileManager: FileManager

    init(processInfo: ProcessInfo, fileManager: FileManager = .default) {
        self.fileManager = fileManager

        // Start with default configuration
        self.configuration = .default(currentDirectory: fileManager.currentDirectoryPath)

        guard case let home = fileManager.homeDirectoryForCurrentUser.path, !home.isEmpty else {
            return
        }

        // Load initial config from home directory if available
        if let config = configuration(forPath: home), !config.isBlank {
            configuration.update(with: config)
        }

        if let value = processInfo.environment["DIFF_FORMATTER_CONFIG"], !value.isEmpty {
            // Load config overrides from custom path if env var included
            if let config = configuration(forPath: value), !config.isBlank {
                configuration.update(with: config)
            }
        } else if case let value = fileManager.currentDirectoryPath, !value.isEmpty {
            // Load config overrides from current directory if available
            if let config = configuration(forPath: value), !config.isBlank {
                configuration.update(with: config)
            }
        }
    }

    private func configuration(forPath path: String) -> Configuration? {
        let filePath = path + type(of: self).configFilePathComponent

        guard let data = fileManager.contents(atPath: filePath) else {
            return nil
        }

        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase

        do {
            return try decoder.decode(Configuration.self, from: data)
        } catch {
            print("Error parsing configuration at path: \(filePath). \n\nError details: \n\(error)")
            return nil
        }
    }
}
