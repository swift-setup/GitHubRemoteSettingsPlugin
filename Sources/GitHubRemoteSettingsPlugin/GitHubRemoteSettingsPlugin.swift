import PluginInterface
import SwiftUI

struct GitHubRemoteSettingsPlugin: PluginInterfaceProtocol {
    var manifest: ProjectManifest = ProjectManifest(displayName: "GitHub Remote Settings", bundleIdentifier: "com.sirilee.GitHubRemoteSettings", author: "sirily11", shortDescription: "Will setup the config for GitHub Remote", repository: "https://github.com/swift-setup/GitHubRemoteSettingsPlugin", keywords: ["GitHub", "swift-ui"])
    
    let store: StoreUtilsProtocol
    
    var id = UUID()
    
    var settings: some View {
        SettingsView(store: store)
    }
}


@_cdecl("createPlugin")
public func createPlugin() -> UnsafeMutableRawPointer {
    return Unmanaged.passRetained(GitHubRemoteSettingsPluginBuilder()).toOpaque()
}

public final class GitHubRemoteSettingsPluginBuilder: PluginBuilder {
    public override func build(fileUtils _: FileUtilsProtocol, nsPanelUtils _: NSPanelUtilsProtocol, storeUtils: StoreUtilsProtocol) -> any PluginInterfaceProtocol {
        GitHubRemoteSettingsPlugin(store: storeUtils)
    }
}
