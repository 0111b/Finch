//
//  Mocks.swift
//  DiffFormatterTests
//
//  Created by Dan Loman on 12/28/18.
//  Copyright © 2018 DHL. All rights reserved.
//

import Foundation

extension Configuration {
    // TODO: - Shouldn't rely on configurator for mock
    static let mock: Configuration = Configurator(processInfo: .mock, argScheme: .mock, fileManager: .mock).configuration
}

extension ArgumentScheme {
    static let mock: ArgumentScheme = ArgumentScheme(oldVersion: nil, newVersion: nil, args: [])
}

extension App {
    static let mock: App = .init(buildNumber: "12345", name: "DiffFormatter", version: "1.0.1")
}

extension Utilities {
    static let inputMock = """
> &&&fce9cb800905de678a99577a64c8230e63f1cc37&&& - @@@[autocomplete-v3] add analytics (#1030)@@@###elvis1935+still-alive@theking.com###
> &&&2236c36e40c4409927fdcd2b6ebd29b18aa03e36&&& - @@@[express-placement] build error fix (#1025)@@@###jony.ive@apple.com###
> &&&9a33ff13804bcce98a4c81279cc1254e499e4932&&& - @@@[push-notificatons] Request for permission after user places an order with 90 day re-prompt (#1024)@@@###jony.ive@apple.com###
> &&&092510f3eb3f85592b6973858c2b9591dd78d692&&& - @@@[express-placement] additional clean-up for analytics and bugs (#1021)@@@###jony.ive@apple.com###
> &&&6e12ce047d1513a148456ede004ed4d89cedcec5&&& - @@@[codable] better supported for AnyEncodables (#1022)@@@###elvis1935+still-alive@theking.com###
> &&&97021013d7873f399a911f87568f02f359f2c6bd&&& - @@@[analytics] Current production express placements are missing subscription_id in express_start.purchase tracking events (#1020)@@@###jony.ive@apple.com###
> &&&e10fb1f08c6e139099eb74109e6372cd45958440&&& - @@@[bug] Don't show express placement every cold start (#1019)@@@###jony.ive@apple.com###
> &&&70fbd7117720f22ddd118f60add4b55238663703&&& - @@@Syncing express params across checkout modules (#1016)@@@###long_live_the_citadel@rick.com###
> &&&853bfd88f304d16a9caf817c39dda4f057160b04&&& - @@@[bug fix] fix LossyCodableArray (#1017)@@@###long_live_the_citadel@rick.com###
> &&&036a288658f1b4a11ed1d649394d1e049eb7c4e6&&& - @@@[tests] fix order snapshots (#1018)@@@###long_live_the_citadel@rick.com###
> &&&23ac4d92a5a735dc31c64197eddedd856cc85fcc&&& - @@@Order status V2.5 (#988)@@@###elvis1935+still-alive@theking.com###
> &&&18d8350f4dddbea42ba3acf752ad4325b8f13d9d&&& - @@@[search] consolidate searchBar cornerRadius to 4, increase autocomplete-v3 term height (#1011)@@@###elvis1935+still-alive@theking.com###
> &&&ab9406d731c18e6500c82e865034e87fdf7986e1&&& - @@@[bug fix] minor bug fixes for cubs/pbi (#1010)@@@###elvis1935+still-alive@theking.com###
> &&&f2a7e851e982e1d61a54dbea2f199e9d5d2404e8&&& - @@@Update all express placements to one screen (#975)@@@###jony.ive@apple.com###
> &&&b8a61e1fe83feabac08d3beda5237612e2d60d54&&& - @@@[carthage] move google places to internal carthage (#1008)@@@###elvis1935+still-alive@theking.com###
> &&&29cd90a5eb4bbad531e098f673eefe43d45d44a5&&& - @@@[platform] background actions (#955)@@@###elvis1935+still-alive@theking.com###
> &&&d157b78a5f440654ee243c676642466ff72912a6&&& - @@@[rollbar] update to v1.0.0 final (#1007)@@@###elvis1935+still-alive@theking.com###
> &&&a7586919f6b096d884958e3386e535ecc986cd57&&& - @@@Autocomplete V3 (#1004)@@@###elvis1935+still-alive@theking.com###
> &&&1c659ebb3dfde5b078894741a75eb0e3387656f2&&& - @@@[version] 6.13.0@@@###elvis1935+still-alive@theking.com###
"""

    static let mockOutput: String = """

# 6.13.0

### Release Manager

 - @Jony.Ive

### Features
 - |tests| fix order snapshots — [PR #1018](https://github.com/citadel-of-ricks/C-137/pull/1018) — @Rick.Sanchez
 - |search| consolidate searchBar cornerRadius to 4, increase autocomplete-v3 term height — [PR #1011](https://github.com/citadel-of-ricks/C-137/pull/1011) — @Elvis.Presley
 - |rollbar| update to v1.0.0 final — [PR #1007](https://github.com/citadel-of-ricks/C-137/pull/1007) — @Elvis.Presley
 - |push-notificatons| Request for permission after user places an order with 90 day re-prompt — [PR #1024](https://github.com/citadel-of-ricks/C-137/pull/1024) — @Jony.Ive
 - |express-placement| build error fix — [PR #1025](https://github.com/citadel-of-ricks/C-137/pull/1025) — @Jony.Ive
 - |express-placement| additional clean-up for analytics and bugs — [PR #1021](https://github.com/citadel-of-ricks/C-137/pull/1021) — @Jony.Ive
 - |codable| better supported for AnyEncodables — [PR #1022](https://github.com/citadel-of-ricks/C-137/pull/1022) — @Elvis.Presley
 - |carthage| move google places to internal carthage — [PR #1008](https://github.com/citadel-of-ricks/C-137/pull/1008) — @Elvis.Presley
 - |autocomplete-v3| add analytics — [PR #1030](https://github.com/citadel-of-ricks/C-137/pull/1030) — @Elvis.Presley
 - |analytics| Current production express placements are missing subscription_id in express_start.purchase tracking events — [PR #1020](https://github.com/citadel-of-ricks/C-137/pull/1020) — @Jony.Ive
 - Update all express placements to one screen — [PR #975](https://github.com/citadel-of-ricks/C-137/pull/975) — @Jony.Ive
 - Syncing express params across checkout modules — [PR #1016](https://github.com/citadel-of-ricks/C-137/pull/1016) — @Rick.Sanchez
 - Order status V2.5 — [PR #988](https://github.com/citadel-of-ricks/C-137/pull/988) — @Elvis.Presley
 - Autocomplete V3 — [PR #1004](https://github.com/citadel-of-ricks/C-137/pull/1004) — @Elvis.Presley

### Bug Fixes
 - |bug| Don't show express placement every cold start — [PR #1019](https://github.com/citadel-of-ricks/C-137/pull/1019) — @Jony.Ive
 - |bug fix| minor bug fixes for cubs/pbi — [PR #1010](https://github.com/citadel-of-ricks/C-137/pull/1010) — @Elvis.Presley
 - |bug fix| fix LossyCodableArray — [PR #1017](https://github.com/citadel-of-ricks/C-137/pull/1017) — @Rick.Sanchez

### Platform Improvements
 - background actions — [PR #955](https://github.com/citadel-of-ricks/C-137/pull/955)

### Timeline
- Begin development:
- Feature cut-off / Start of bake / dogfooding:
- Submission:
- Release (expected):
- Release (actual):

"""

    static let mockCustomDelimiterOutput: String = """

# 6.13.0

### Release Manager

 - @Jony.Ive

### Features
 - **❲**tests**❳** fix order snapshots — [PR #1018](https://github.com/citadel-of-ricks/C-137/pull/1018) — @Rick.Sanchez
 - **❲**search**❳** consolidate searchBar cornerRadius to 4, increase autocomplete-v3 term height — [PR #1011](https://github.com/citadel-of-ricks/C-137/pull/1011) — @Elvis.Presley
 - **❲**rollbar**❳** update to v1.0.0 final — [PR #1007](https://github.com/citadel-of-ricks/C-137/pull/1007) — @Elvis.Presley
 - **❲**push-notificatons**❳** Request for permission after user places an order with 90 day re-prompt — [PR #1024](https://github.com/citadel-of-ricks/C-137/pull/1024) — @Jony.Ive
 - **❲**express-placement**❳** build error fix — [PR #1025](https://github.com/citadel-of-ricks/C-137/pull/1025) — @Jony.Ive
 - **❲**express-placement**❳** additional clean-up for analytics and bugs — [PR #1021](https://github.com/citadel-of-ricks/C-137/pull/1021) — @Jony.Ive
 - **❲**codable**❳** better supported for AnyEncodables — [PR #1022](https://github.com/citadel-of-ricks/C-137/pull/1022) — @Elvis.Presley
 - **❲**carthage**❳** move google places to internal carthage — [PR #1008](https://github.com/citadel-of-ricks/C-137/pull/1008) — @Elvis.Presley
 - **❲**autocomplete-v3**❳** add analytics — [PR #1030](https://github.com/citadel-of-ricks/C-137/pull/1030) — @Elvis.Presley
 - **❲**analytics**❳** Current production express placements are missing subscription_id in express_start.purchase tracking events — [PR #1020](https://github.com/citadel-of-ricks/C-137/pull/1020) — @Jony.Ive
 - Update all express placements to one screen — [PR #975](https://github.com/citadel-of-ricks/C-137/pull/975) — @Jony.Ive
 - Syncing express params across checkout modules — [PR #1016](https://github.com/citadel-of-ricks/C-137/pull/1016) — @Rick.Sanchez
 - Order status V2.5 — [PR #988](https://github.com/citadel-of-ricks/C-137/pull/988) — @Elvis.Presley
 - Autocomplete V3 — [PR #1004](https://github.com/citadel-of-ricks/C-137/pull/1004) — @Elvis.Presley

### Bug Fixes
 - **❲**bug**❳** Don't show express placement every cold start — [PR #1019](https://github.com/citadel-of-ricks/C-137/pull/1019) — @Jony.Ive
 - **❲**bug fix**❳** minor bug fixes for cubs/pbi — [PR #1010](https://github.com/citadel-of-ricks/C-137/pull/1010) — @Elvis.Presley
 - **❲**bug fix**❳** fix LossyCodableArray — [PR #1017](https://github.com/citadel-of-ricks/C-137/pull/1017) — @Rick.Sanchez

### Platform Improvements
 - **❲**platform**❳** background actions — [PR #955](https://github.com/citadel-of-ricks/C-137/pull/955) — @Elvis.Presley

### Timeline
- Begin development:
- Feature cut-off / Start of bake / dogfooding:
- Submission:
- Release (expected):
- Release (actual):

"""
}