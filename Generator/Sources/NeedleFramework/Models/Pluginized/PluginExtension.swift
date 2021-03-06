//
//  Copyright (c) 2018. Uber Technologies
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation

/// A data model representing a plugin extension protocol of a NeedleFoundation
/// `PluginizedComponent`.
// This is separate from the `PluginizedComponent` data model, since its
// plugin extension protocol may be declared in a separate file.
struct PluginExtension: Equatable {
    /// The name of the plugin extension protocol.
    let name: String
    /// The list of properties.
    let properties: [Property]
}


/// A data model representing a plugin extension protocol of a NeedleFoundation
/// `PluginExtension`.
struct ProcessedPluginExtension: Equatable {
    /// The unprocessed plugin extension we started with.
    let unprocessed: PluginExtension
    /// The list of processed properties.
    let properties: [ProcessedProperty]
}
