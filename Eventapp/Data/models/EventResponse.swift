//
//  EventResponse.swift
//  Eventapp
//
//  Created by orangeodc2 on 25/4/2023.
//

import Foundation

struct LoginBodyRequest :Encodable
{
    
    let username:String
    let password:String
    
}



struct PerformerResponse:Decodable
{
    
    let id:Double?
    let type:String?
    let name:String?
    let image:String?
}


struct VenueLocationResponse:Decodable
{
    
    let lat:Double?
    let lon:Double?
    
}

struct VenueResponse:Decodable
{
    
    let id:Double?
    let name:String?
    let url:String?
    let score:Double?
    let address:String?
    let country:String?
    let city:String?
    let display_location:String?
    
    let location:VenueLocationResponse
    
}


struct EventBodyResponse:Decodable
{
    
    let id:Int?
    let type:String?
    let url:String?
    let datetime_utc:String?
    let short_title:String?
    let title:String?
    
    let venue:VenueResponse
    let performers:[PerformerResponse]
    
}


struct EventResponse:Decodable
{
    
    let events:[EventBodyResponse]
    
}
