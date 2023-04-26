//
//  HomeView.swift
//  Eventapp
//
//  Created by orangeodc2 on 25/4/2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var eventViewModel : EventViewModel = EventViewModel()
    var body: some View {
        
        VStack{
            
        }.onAppear{
            self.eventViewModel.getAllEvents()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
