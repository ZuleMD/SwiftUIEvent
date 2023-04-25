//
//  EventHItemView.swift
//  Eventapp
//
//  Created by orangeodc2 on 25/4/2023.
//

import SwiftUI

struct EventHItemView: View {
    let event: Event
    let width:CGFloat = 250
    let height:CGFloat = 280
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 12).fill(.white).shadow(radius:2,x:2, y: 2)
            .overlay{
            VStack(spacing: 20)
            {
                
                
                Image(event.image).resizable().frame(maxWidth: self.width,maxHeight: 120).overlay(alignment:.top){
                    HStack{
                        RoundedRectangle(cornerRadius: 12).fill(.white.opacity(0.7)).frame(maxWidth: 50, maxHeight: 50).overlay{
                            VStack(spacing: -4)
                            {
                                Text("10").font(.custom(Fonts.airbnbCereal_bold, size: 18)).foregroundColor(.red)
                                Text("June").font(.custom(Fonts.airbnbCereal_book, size: 14)).foregroundColor(.red)
                            }
                        }.padding([.top,.leading],4)
                        Spacer()
                    }
                }.cornerRadius(12)
                
                
                VStack{
                    Text(event.title).font(.custom(Fonts.airbnbCereal_medium, size: 16)).lineLimit(2)
                    HStack(spacing: -5)
                    {
                        
                        /*
                        Circle().frame(width: 24, height: 24).overlay{
                            
                            Image("Image").resizable().scaledToFill().frame(width: 24, height: 24).mask(Circle())
                            
                        }*/
                        Spacer()
                        if(event.performers.count > 3){
                            Text("+\(event.performers.count - 3)   Going").font(.custom(Fonts.airbnbCereal_medium, size: 14)).foregroundColor(Styles.blue).padding(.trailing, 16)
                          
                        }
                        ForEach(event.performers .prefix(3)){
                            performer in
                            ZStack{
                                
                                Color.white.frame(width: 26, height: 26).cornerRadius(12)
                                
                                Image(performer.image).resizable().scaledToFill().frame(width: 24, height: 24).cornerRadius(12)
                                
                                
                            }
                        }
                      
                        
                        
                        
                    }.environment(\.layoutDirection, .rightToLeft)
                    
                    
                    HStack{
                        Image("lclocation").resizable().frame(width:16,height: 16)
                        Text(event.location).font(.custom(Fonts.airbnbCereal_book, size: 12)).foregroundColor(.black.opacity(0.5))
                    Spacer()
                    }
                    
             
                }
                
                
            }.padding(.horizontal,16)
            }.padding(.horizontal,16).frame(maxWidth: self.width, maxHeight: self.height)

    }
    
}

struct EventHItemView_Previews: PreviewProvider {
    static var previews: some View {
        EventHItemView(event:  Event(date: "Sat, May 1 •2:00 PM", image: "eventimg1", title: "A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz", location: "Lot 13 • Oakland, CA", performers: [Performer(image: "person1"),Performer(image: "person2"),Performer(image: "person3"),Performer(image: "person1"),Performer(image: "person2"),Performer(image: "person3")]))
    }
}
