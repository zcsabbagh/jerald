//
//  SecondScreen.swift
//  test-gpt
//
//  Created by Zane Sabbagh on 10/9/23.
//

import Foundation
import SwiftUI

// Render second screen
struct SecondScreen: View {
    @State private var selectedImage: String?

    var body: some View {
        VStack {
            HeaderView()

            ScrollView {
                MonthView(monthName: "October", photoNames: [], selectedImage: $selectedImage)
//                MonthView(monthName: "November", photos: [/* List of your UIImages for November */])
//                MonthView(monthName: "December", photos: [/* List of your UIImages for December */])
            }
            .background(Color.black)
        }
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Zane Sabbagh")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                HStack {
                    Image(systemName: "bell.fill")
                    Text("165")
                    Image(systemName: "star.fill")
                    Text("1K")
                    Image(systemName: "crown.fill")
                    Text("Top 1%")
                }
                .foregroundColor(.white)
            }
            Spacer()
            Image(systemName: "ellipsis")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .padding()
    }
}

struct MonthView: View {
    let monthName: String
    let photoNames: [String]
    @Binding var selectedImage: String?

    var body: some View {
        VStack(alignment: .leading) {
            Text(monthName)
                .font(.title)
                .padding(.horizontal)
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 5), spacing: 10) {
                ForEach(photoNames, id: \.self) { photoName in
                    if photoName.isEmpty {
                        // Gray placeholder
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.gray)
                            .frame(width: 70, height: 120)
                    } else {
                        Image(photoName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 70, height: 120)
                            .clipped()
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(photoName == selectedImage ? Color.black : Color.clear, lineWidth: 2)
                            )
                            .onTapGesture {
                                selectedImage = photoName
                            }
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}
