//
//  ContentViewModel.swift
//  sunRiseSwiftUITest
//
//  Created by David Chester on 10/28/22.
//

import Foundation
import CoreLocation


class ContentViewModel: NSObject, ObservableObject, CLLocationManagerDelegate  {

    @Published var sunModels = [SunModel]()

    let weatherModel = WeatherModel()

    let locationManager = CLLocationManager()

    // to set the delegate
    override init() {
        super.init()
        locationManager.delegate = self
    }

    func requestAllowOnceLocationPermission(){
        locationManager.requestLocation()
       // locationManager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])  {
        guard let latestLocation = locations.first else {
            // TODO: show error
            return
        }

        Task {
            await weatherModel.fetchWeather(lat: latestLocation.coordinate.latitude, long: latestLocation.coordinate.longitude)
        }


        print("updated with \(latestLocation.coordinate.latitude)")
      //  locationManager.stopUpdatingLocation()

    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    
}

// WeatherKit extenion
extension ContentViewModel {

}
