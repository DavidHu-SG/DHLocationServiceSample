# DHLocationServiceSample

This repository contains a sample project demonstrating the usage of the `DHLocationService` Swift package. The sample app showcases how to integrate and utilize `DHLocationService` to manage and retrieve the iOS user's location within a SwiftUI application.

## Getting Started

To run the sample project, clone this repository and open `DHLocationServiceSample.xcodeproj` in Xcode. Ensure that you have the latest version of Xcode installed and that it is set up correctly for Swift package dependencies.

```zsh
git clone https://github.com/DavidHu-SG/DHLocationServiceSample.git
cd DHLocationServiceSample
open DHLocationServiceSample.xcodeproj
```

## Requirements
- iOS 15.0 or later
- macOS 12.0 or later
- Xcode 12.0 or later
- Swift 5.0 or later

## Features
The DHLocationServiceSample app will demonstrate:

- Requesting location permissions from the user.
- Displaying the current authorization status.
- Fetching and displaying the current location.
- Fetching and displaying the user's current region.

## Installation
The DHLocationService package should be automatically resolved by Xcode when you open the sample project. If for any reason it does not, you can add DHLocationService manually via Xcode's Swift Package Manager integration.

## Usage
The sample app is a straightforward demonstration of the DHLocationService in action. Once the project is running on your simulator or device, you'll be able to see the location status, and after granting permission, the current location and region will be displayed on the screen.

```swift
struct ContentView: View {
    // It's one of the best location in Singapore
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 1.280716, longitude: 103.850442), span: MKCoordinateSpan(latitudeDelta: 0.008, longitudeDelta: 0.008))
    @ObservedObject var locationService = DHLocationService()
    
    var body: some View {
        if locationService.status == .authorizedAlways || locationService.status == .authorizedWhenInUse {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
        } else {
            // Show something else
        }
    }
}
```

## Contributing
This sample app is open-source and we encourage community contributions. If you encounter any issues or have enhancements you would like to see implemented, please feel free to open an issue or submit a pull request.

## Author
David Hu, davidhu.sg66@gmail.com

## License
This sample app is available under the MIT license. For more details, see [LICENSE](https://github.com/DavidHu-SG/DHLocationServiceSample/blob/main/LICENSE).
