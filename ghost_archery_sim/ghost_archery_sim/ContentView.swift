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
    //Discipline
    enum disciplines: String, CaseIterable, Identifiable {
        case compound, olympic, long_bow, traditional_recurve, bare_bow, none
        var id: Self { self }
    }
    @AppStorage("user_discipline") var user_discipline: disciplines = .none
    //Season
    enum seasons: String, CaseIterable, Identifiable {
        case indoor, outdoor, none
        var id: Self { self }
    }
    @AppStorage("user_season") var user_season: seasons = .none
    @AppStorage("user_notes") var user_notes: String = "Here you can take your notes, point your scopes and more..."
    var body: some View {
        HStack{
            Image(systemName: "person.crop.circle")
                .foregroundColor(.orange)
            Text("User Info")
                .font(.title)
        }
        Divider()
        List{
            TextField("User Name", text: $user_name)
            Picker(selection: $user_discipline, label: Text("Discipline")) {
                Text("None").tag(disciplines.none)
                Text("Compound").tag(disciplines.compound)
                Text("Olympic").tag(disciplines.olympic)
                Text("Long Bow").tag(disciplines.long_bow)
                Text("Traditional Recurve").tag(disciplines.traditional_recurve)
                Text("Bare-Bow").tag(disciplines.bare_bow)
            }
            Picker(selection: $user_season, label: Text("Season")) {
                Text("None").tag(seasons.none)
                Text("Indoor").tag(seasons.indoor)
                Text("Outdoor").tag(seasons.outdoor)
            }
        }
        GroupBox(content: {
            HStack{
                Image(systemName: "note.text")
                Text("Notes")
        }
        }){
            TextEditor(text: $user_notes)
        }
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

