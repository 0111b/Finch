//
//  AppRunner.swift
//  FinchApp
//
//  Created by Dan Loman on 1/29/19.
//

import FinchUtilities

public class AppRunner {
    private let environment: Environment

    private let meta: App.Meta

    private let output: OutputType

    private let registry: CommandRegistry

    public init(environment: Environment, meta: App.Meta, output: OutputType = Output.instance) {
        self.environment = environment
        self.meta = meta
        self.output = output
        self.registry = .init(meta: meta)

        registry.register {
            CompareCommand(meta: meta, parser: $0).bindingGlobalOptions(to: $1)
        }

        registry.register {
            ConfigCommand(meta: meta, parser: $0).bindingGlobalOptions(to: $1)
        }
    }

    public func run(arguments: [String]) throws {
        let args = Array(arguments.dropFirst())

        let (command, options, result) = try registry.parse(arguments: args)

        let config = Configurator(
            options: options,
            meta: meta,
            environment: environment,
            output: output
        ).configuration

        let app: App = .init(
            configuration: config,
            meta: meta,
            options: options,
            output: output
        )

        if let command = command {
            try registry.runCommand(
                named: command,
                with: result,
                app: app,
                env: environment
            )
        } else if options.shouldPrintVersion {
            app.print("\(app.meta.name) \(app.meta.version) (\(app.meta.buildNumber))")
        } else {
            registry.printUsage()
        }
    }
}