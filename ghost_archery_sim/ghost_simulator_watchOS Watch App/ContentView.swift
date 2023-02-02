//
//  ContentView.swift
//  ghost_simulator_watchOS Watch App
//
//  Created by Isaac Hernán Martí on 2/2/23.
//

import SwiftUI

struct Simulator: View {
    
    //User Settings
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
    @State var user_info_requiered: Bool = true
    
    //Points settings
    
    @AppStorage("max_points") var max_points = 2
    @AppStorage("min_points") var min_points = 0
    
    var body: some View {
        
        //Check User Info
        
        if user_name == ""{
            Group{
                HStack{
                    Image(systemName: "gear.badge.xmark")
                        .foregroundColor(.red)
                    Text("Please, before use the simulator you need to set all the user settings. (You need to use the iPhone App)")
                }
            }
            .task{
                user_info_requiered = false
            }
        }
        if user_info_requiered == true{
            if user_discipline == disciplines.none{
                Group{
                    HStack{
                        Image(systemName: "gear.badge.xmark")
                            .foregroundColor(.red)
                        Text("Please, before use the simulator you need to set all the user settings. (You need to use the iPhone App)")
                    }
                }
                .task{
                    user_info_requiered = false
                }
            }
        }
        if user_info_requiered == true{
            if user_season == seasons.none{
                Group{
                    HStack{
                        Image(systemName: "gear.badge.xmark")
                            .foregroundColor(.red)
                        Text("Please, before use the simulator you need to set all the user settings. (You need to use the iPhone App)")
                    }                }
                .task{
                    user_info_requiered = false
                }
            }
        }
        
        if user_info_requiered == true{
            Group(){
                HStack{
                    Image(systemName: "figure.archery")
                    Text("User Info")
                }
                Divider()
                VStack{
                    Text("Discipline: " + user_discipline.rawValue)
                    
                    Text("Season: " + user_season.rawValue)
                    HStack{
                        Image(systemName: "lightbulb.fill")
                            .foregroundColor(.yellow)
                        Text("Do you want to modify it?, Open the iPhone App")
                    }
                }
            }
            Spacer()
            //Simulation Parameters
            
            Text("Simulation Parameters")
                .font(.title2)
            
            
            //Season
            if user_season == seasons.outdoor{
                VStack{
                    Stepper(value: $min_points, in: 1...max_points-1) {
                        Text("Min. Points: \(min_points)")
                    }
                    Stepper(value: $max_points, in: min_points+1...720) {
                        Text("Max. Points: \(max_points)")
                    }
                }
            }
            if user_season == seasons.indoor{
                VStack{
                    Stepper(value: $min_points, in: 1...max_points-1) {
                        Text("Min. Points: \(min_points)")
                    }
                    Stepper(value: $max_points, in: min_points+1...600) {
                        Text("Max. Points: \(max_points)")
                    }
                }
            }
            
            Spacer()
            
            //Start Simulation
            
            NavigationLink(destination: simulation()){
                HStack{
                    Image(systemName: "figure.archery")
                        .foregroundColor(.yellow)
                    Text("Start Simulation")
                }
            }
            .buttonStyle(.borderedProminent)
            
            
        }
        Spacer()
    }
}


struct simulation: View {
    //App Storage
    @AppStorage("max_points") var max_points = 2
    @AppStorage("min_points") var min_points = 0
    var body: some View {

        Text("Data")
            .font(.title)
        Text("Max Points: \(max_points)")
        Text("Min Points: \(min_points)")
        
        Text("")
    }
}
