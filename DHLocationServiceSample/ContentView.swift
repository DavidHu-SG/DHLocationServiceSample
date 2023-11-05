//
//  ContentView.swift
//  DHLocationServiceSample
//
//  Created by David Hu on 5/11/23.
//

import SwiftUI
import DHLocationService
import MapKit

struct ContentView: View {
    // It's one of the best location in Singapore
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 1.280716, longitude: 103.850442), span: MKCoordinateSpan(latitudeDelta: 0.008, longitudeDelta: 0.008))
    @ObservedObject var locationService = DHLocationService()
    
    var body: some View {
        if locationService.status == .authorizedAlways || locationService.status == .authorizedWhenInUse {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
        } else {
            Button("Need access to get your location") {
                jumpToAppSetting()
            }
        }
    }
    
    func jumpToAppSetting() {
        if let url = URL(string: UIApplication.openSettingsURLString) {
            UIApplication.shared.open(url, options: [:]) { success in
                if success {
                    print("Settings opened successfully")
                } else {
                    print("Settings failed to open")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
