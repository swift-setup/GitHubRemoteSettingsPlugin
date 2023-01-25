//
//  SwiftUIView.swift
//  
//
//  Created by Qiwei Li on 1/25/23.
//

import SwiftUI
import PluginInterface

struct SettingsView: View {
    let store: StoreUtilsProtocol
    
    @State var token: String = ""
    
    var body: some View {
        Form {
            Section("Credentials") {
                TextField("GitHub Token", text: $token)
            }
            
            HStack {
                Spacer()
                Button("Save") {
                    save()
                }
            }
        }
        .onAppear {
            token = store.get(forKey: "GITHUB_TOKEN", from: nil) ?? ""
        }
    }
    
    func save() {
        store.set(token, forKey: "GITHUB_TOKEN", from: nil)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(store: MockStore())
    }
}
