//
//  WeatherModel.swift
//  sunRiseSwiftUITest
//
//  Created by David Chester on 11/7/22.
//

import Foundation
import WeatherKit
import CoreLocation

struct WeatherModel {

    let weatherService = WeatherService()

    func fetchWeather(lat: Double, long: Double) async {
        let currentLocation = CLLocation(latitude: lat, longitude: long)

            do {
                let localWeather = try await weatherService.weather(for: currentLocation)
                print(localWeather.currentWeather.temperature)
            } catch {
                print(error.localizedDescription)
            }

        


    }
    
}
