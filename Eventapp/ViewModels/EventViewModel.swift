//
//  EventViewModel.swift
//  Eventapp
//
//  Created by orangeodc2 on 26/4/2023.
//

import Foundation


class EventViewModel : ObservableObject {
    
    @Published var upcomingEventsIsLoading : Bool = false
    @Published var upcomingEvents : [Event] = []
    let eventService = EventService()

    
    func getAllEvents(){
       /* Task
        {

            self.upcomingEventsIsLoading=true
            
           let result = try await eventService.getAllEvents()
            print(result)
            if let events = (result as?  EventResponse){
                events.events.map{
                    event in
                    return Event(date: event.datetime_utc, image: , title: event.title ,  location: <#T##String#>, performers: <#T##[Performer]#>)
                }
            }
            self.upcomingEventsIsLoading=false
            
        }
        */
        
        
    }
    
    
}
