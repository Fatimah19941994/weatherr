//
//  ContentView.swift
//  weatherr
//
//  Created by فاطمة on 20/01/1444 AH.
//

import SwiftUI

struct ContentView: View {
   @State private var isNight = false
    
    var body: some View {
        ZStack{
            
       BackgroundView(isNight: $isNight)
            
            
            VStack{
                
          CityViewText(cityName: "Riyadh")
                
                MainImageView(imageName: isNight ? "moon.stars.fill": "cloud.sun.fill", tempreture: 74)
                
                HStack(spacing: 18){
WeatherDayView(dayOfWeek: "Tue",
               imageName: "cloud.sun.fill",
               tempreture: 75)
 WeatherDayView(dayOfWeek: "Wed",
               imageName: "sun.max.fill",
                tempreture: 88)
 WeatherDayView(dayOfWeek: "Thu",
               imageName: "sunset.fill",
               tempreture: 55)
WeatherDayView(dayOfWeek: "Fri",
            imageName: "sunset.fill",
              tempreture: 60)
WeatherDayView(dayOfWeek: "Sat",
              imageName: "snow",
              tempreture: 75)
                }
                Spacer()
               
                Button {
                    isNight.toggle()
                } label: {
                buttonView(title: "Change Day Time", backgroundColor: .yellow, fontColorView: .white)
                }
                .cornerRadius(15)
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var tempreture: Int
    
    var body: some View {
        
        VStack{
        Text(dayOfWeek)
            .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
        Image(systemName: imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
        Text("\(tempreture)°")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
            
            
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
   
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black: .blue, isNight ? .gray : Color("lightblue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityViewText: View {
    
var cityName: String
    
    var body: some View{
        
        Text("Riyadh")
     .font(.system(size: 32,
            weight:.medium))
   .foregroundColor(.white)
     .padding()
    }
    
}

struct MainImageView: View {
    var imageName: String
    var tempreture: Int
    
    var body: some View {
        VStack(spacing: 10){
    Image(systemName:imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            
            Text("\(tempreture)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        
        
        .padding(.bottom,40 )
    }
}


