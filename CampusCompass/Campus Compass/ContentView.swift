
//
//  ContentView.swift
//  Campus Compass
//
//  Created by mohammed.sanusi on 9/14/26.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAbout: Bool = false
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 18) {
                Image(systemName: "location.circle.fill")
                    .font(.system(size:64))
                    .foregroundStyle(.tint)
                
                Text("Campus Compass")
                    .font(.largeTitle)
                    .bold()
                
                Text("Find your way around campus")
                    .foregroundStyle(.secondary)
                
                //Navigation cards go here
                //Go to the library
                
                NavigationLink{
                    CampusPlaceView(
                        name: "Library",
                        symbol: "books.vertical.fill",
                        description: "Study, research, find resources, or get help from a librarian",
                        hours: "Monday-Friday: 8:00 AM - 8:00 PM")
                }label: {
                    HStack{
                        Image(systemName: "books.vertical.fill")
                            .font(.title2)
                        
                        Text("Library")
                            .font(.headline)
                        Spacer()//Moves it to the left, every thing after goes to the right
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)//To always stretch across our screen
                    .background(Color.accentColor.opacity(0.12))
                    .clipShape(RoundedRectangle(cornerRadius: 12))//Rounds out the edges
                    
                }
                
                //Go to Tutoring Center
                NavigationLink{
                    CampusPlaceView(
                        name: "Tutoring Center",
                        symbol: "person.2.fill",
                        description: "Meet with tutors, get help with coursework, and build stronger study skills.",
                        hours: "Monday-Thursday: 9:00 AM - 7:00 PM")
                }label: {
                    HStack{
                        Image(systemName: "person.2.fill")
                            .font(.title2)
                        
                        Text("Tutoring Center")
                            .font(.headline)
                        Spacer()//Moves it to the left, every thing after goes to the right
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)//To always stretch across our screen
                    .background(Color.accentColor.opacity(0.12))
                    .clipShape(RoundedRectangle(cornerRadius: 12))//Rounds out the edges
                    
                }
                
                //Go to Student Center
                NavigationLink{
                    CampusPlaceView(
                        name: "Student Center",
                        symbol: "building.2.fill",
                        description: "Relax, meet classmates. attend activities, and find student services.",
                        hours: "Monday-Friday: 8:00 AM - 6:00 PM")
                }label: {
                    HStack{
                        Image(systemName: "building.2.fill")
                            .font(.title2)
                        
                        Text("Student Center")
                            .font(.headline)
                        Spacer()//Moves it to the left, every thing after goes to the right
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.secondary)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)//To always stretch across our screen
                    .background(Color.accentColor.opacity(0.12))
                    .clipShape(RoundedRectangle(cornerRadius: 12))//Rounds out the edges
                    
                }
                
                Spacer()
                
                Button{
                    showingAbout = true
                } label: {
                    Label("About This App", systemImage: "info.circle")
                }
                .buttonStyle(.bordered)
            }
            .padding()
            .navigationTitle("Campus Compass")
            .sheet(isPresented: $showingAbout){
                AboutView()
            }
        }
    }
}

#Preview {
    ContentView()
}
