//
//  Consts.swift
//  Eventapp
//
//  Created by orangeodc2 on 25/4/2023.
//

import Foundation



class Consts
{
    
    
    static let clientID = "MzI5ODA2NjN8MTY4MTExNzQwOS4xMDE2NTMz"
    
    static let URL = "https://api.seatgeek.com/2/"
    
    static let getAllEvents = "\(URL)events?client_id=\(clientID)&per_page=30&page=1&sort=datetime_utc.asc"
    
    
    
}
