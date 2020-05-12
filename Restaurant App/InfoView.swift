//
//  InfoView.swift
//  Restaurant App
//
//  Created by Dylan Dunn on 5/11/20.
//  Copyright © 2020 Dylan Dunn. All rights reserved.
//

import SwiftUI
import MapKit

struct InfoView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
            CircleImage()
                .offset(y: -90)
                .padding(.bottom, -130)
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Text("Trofi")
                        .font(.title)
                    Spacer()
                }
                HStack(alignment: .top) {
                    VStack
                    {
                        HStack {
                            Text("Monroe Community College")
                                .font(.subheadline)
                            Spacer()
                        }
                        HStack {
                            Text("1000 E Henreitta Rd")
                                .font(.subheadline)
                            Spacer()
                        }
                        HStack {
                            Text("Rochester, New York")
                                .font(.subheadline)
                            Spacer()
                        }
                        .padding(.bottom, 12)
                        HStack {
                             Text("Mon-Fri")
                                 .font(.caption)
                             Spacer()
                        }
                         HStack {
                             Text("9am - 9pm")
                                 .font(.caption)
                             Spacer()
                         }
                    }
                        .frame(minWidth: 200)
                    Spacer()
                }
                HStack {
                    Text("Call Us: ")
                        .font(.subheadline)
                    Button(action: {
                        UIApplication.shared.open(URL(string: "tel://315-555-1212")!)
                       }) {
                       Text("315-555-1212")
                        .font(.subheadline)
                    }
                }
            }
            .padding()
        }
    }
}

struct CircleImage: View {
    var body: some View {
        Image("logo")
        .resizable()
        .frame(width: 150, height: 150)
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
    }
}

struct MapView : UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 43.101453, longitude: -77.609843)
        let span = MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        let pointAnnotation = MKPointAnnotation()
        pointAnnotation.coordinate = coordinate
        
        pointAnnotation.title = "Trofi"
        pointAnnotation.subtitle = "Monroe Community College"
        uiView.setRegion(region, animated: true)
        uiView.addAnnotation(pointAnnotation)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
