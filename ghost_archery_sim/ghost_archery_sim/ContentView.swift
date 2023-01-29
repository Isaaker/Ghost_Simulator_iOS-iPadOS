//
//  ContentView.swift
//  ghost_archery_sim
//
//  Created by Isaac Hernán Martí on 28/1/23.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        VStack {
            NavigationView(){
                List{
                    NavigationLink(destination: Home()){
                        HStack{
                            Image(systemName: "house.fill")
                                .foregroundColor(.yellow)
                            Text("Home")
                        }
                    }
                    NavigationLink(destination: Simulator()){
                        HStack{
                            Image(systemName: "figure.archery")
                                .foregroundColor(.blue)
                            Text("Simulator")
                        }
                    }
                    NavigationLink(destination: Settings()){
                        HStack{
                            Image(systemName: "gear")
                                .foregroundColor(.gray)
                            Text("Settings")
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct Home: View {
    var body: some View {
        VStack {
            Image(systemName: "gear.badge.checkmark")
            Text("The App is Working")
                .font(.title)
        }
    }
}

struct Simulator: View {
    var body: some View {
        VStack {
            Image(systemName: "figure.archery")
            Text("Simulator")
                .font(.title)
        }
    }
}

//Settings

struct Settings: View {
    var body: some View {
        HStack {
            Image(systemName: "gear")
            Text("Settings")
                .font(.title)
        }
        List{
            NavigationLink(destination: user_info()){
                HStack{
                    Image(systemName: "figure.archery")
                        .foregroundColor(.green)
                    Text("User Info")
                }
            }
            NavigationLink(destination: app_info()){
                HStack{
                    Image(systemName: "info.circle.fill")
                        .foregroundColor(.blue)
                    Text("About")
                }
            }
            NavigationLink(destination: appstorage()){
                HStack{
                    Image(systemName: "archivebox.circle.fill")
                        .foregroundColor(.yellow)
                    Text("App Storage")
                }
            }
        }
    }
}

//Settings Sub Menu
struct app_info: View {
    var body: some View {
        HStack{
            Image(systemName: "info.circle.fill")
                .foregroundColor(.blue)
            Text("About the App")
                .font(.title)
        }
        List{
            HStack{
                Text("App Version:")
                Text("1")
            }
            HStack{
                Text("Code Source:")
            }
        }
    }
}

struct user_info: View {
    @AppStorage("user_name") var user_name: String = ""
    @AppStorage("user_discipline") var user_discipline: String = "None"
    @AppStorage("user_season") var user_season: String = "None"
    @AppStorage("user_notes") var user_notes: String = "Here you can take your notes, point your scopes and more..."
    var body: some View {
        HStack{
            Image(systemName: "person.crop.circle")
                .foregroundColor(.orange)
            Text("User Info")
                .font(.title)
        }
        Spacer()
        List(){
            TextField("User Name", text: $user_name)
            Picker(selection: $user_discipline, label: Text("Discipline")) {
                Text("None").tag(1)
                Text("Compound").tag(2)
                Text("Olympic").tag(3)
                Text("Long Bow").tag(4)
                Text("Traditional Recurve").tag(5)
                Text("Bare-Bow").tag(6)
            }
            Picker(selection: $user_season, label: Text("Season")) {
                Text("None").tag(1)
                Text("Indoor").tag(2)
                Text("Outdoor").tag(3)
            }
            TextEditor(text: $user_notes)
        }
        Spacer()
    }
}

struct appstorage: View {
    @State var isPresented: Bool = false
    var body: some View {
        HStack{
            Image(systemName: "archivebox.circle.fill")
                .foregroundColor(.yellow)
            Text("App Storage")
                .font(.title)
        }
        GroupBox(){
            HStack{
                Image(systemName: "externaldrive.fill.badge.questionmark")
                    .foregroundColor(.yellow)
                Text("App Memory Size")
            }
            HStack{
                Image(systemName: "exclamationmark.triangle.fill")
                    .foregroundColor(.yellow)
                Text("Not Avaible at the moment")
            }
            HStack{
                Image(systemName: "trash.circle.fill")
                    .foregroundColor(.red)
                Text("Remove App Storage Memory")
            }
            Button("Remove", role: .destructive){
                isPresented = true
            }
            }
        .alert(isPresented: $isPresented, content: {
            Alert(title: Text("App Storage"),
                  message: Text("If you delete the App Storage Info, the Simulation History also was deleted"),
                  primaryButton: Alert.Button.default(Text("Cancel"), action: {
                isPresented = false
            }), secondaryButton:
                    Alert.Button.destructive(Text("Continue"), action: {if let bundleID = Bundle.main.bundleIdentifier {
                        UserDefaults.standard.removePersistentDomain(forName: bundleID)}
              })
        )})
    }
}


//Previews
struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}

