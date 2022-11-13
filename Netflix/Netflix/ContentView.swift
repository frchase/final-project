//
//  ContentView.swift
//  Netflix
//
//  Created by Chase Allen on 10/31/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isClicked = false
    @State var count: Int = 0
    @State private var selection: String = "home"
    var body: some View {
        NavigationView {
            ZStack {
                Color(.black)
                    .ignoresSafeArea(.all)
                ZStack(alignment: .top) {
                    ImageView(imageName: "TheMole")
                        .ignoresSafeArea(.all)
                    VStack() {
                        HStack() {
                            ImageView(imageName: "netflix-logo")
                                .frame(width: 40, height: 100)
                            Spacer()
                            Image(systemName: "airplayvideo")
                                .foregroundColor(.white)
                                .font(.title2)
                                .padding(.trailing, 5)
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                                .font(.title2)
                                .padding(.trailing, 10)
                            ImageView(imageName: "netflix-smiley")
                                .frame(height: 30)
                                .padding(.trailing, 10)
                        }
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .background(.black)
                        .opacity(0.60)
                        HStack {
                            TextViewStandard(textName: "TV Shows", colorMod: .white, fontWeight: .bold)
                                .padding(.trailing,20)
                     
                            TextViewStandard(textName: "Movies", colorMod: .white, fontWeight: .bold)
                                .padding(.trailing, 20)
                            TextViewStandard(textName: "Categories", colorMod: .white, fontWeight: .bold)
                                .fontWeight(.bold)
                        }
                        .padding(.top, 10)
                        Spacer()
                        HStack {
                            TextViewCustom(textName: "T", fontMod: 40)
                                .fontWeight(.bold)
                                .padding(.trailing, 8)
                            TextViewCustom(textName: "H", fontMod: 40)
                                .fontWeight(.bold)
                                .padding(.trailing, 8)
                            TextViewCustom(textName: "E", fontMod: 40)
                                .fontWeight(.bold)
                        }
                        .padding(.top, -30)
        
                        HStack {
                            TextViewCustom(textName: "M", fontMod: 68)
                                .fontWeight(.bold)
                            TextViewCustom(textName: "O", fontMod: 68)
                                .fontWeight(.bold)
                            TextViewCustom(textName: "L", fontMod: 68)
                                .fontWeight(.bold)
                            TextViewCustom(textName: "E", fontMod: 68)
                                .fontWeight(.bold)
                        }
                        .padding(.bottom, -35)
                        .padding(.top, -40)
                        HStack {
                            TextViewCustom(textName: "Slick", fontMod: 16)
                            TextViewCustom(textName: "Exciting", fontMod: 16)
                            TextViewCustom(textName: "Reality TV", fontMod: 16)
                            TextViewCustom(textName: "Competition", fontMod: 16)
                        }
                        .padding(.top, 20)
                        HStack {
                            VStack {
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .font(.headline)
                                Text("My List")
                                    .foregroundColor(.white)
                            }
                            HStack (alignment: .top) {
                                Image(systemName: "play.fill")
                                    .foregroundColor(.black)
                                Text("Play")
                            }
                            .frame(width: 100, height: 30)
                            .background(.white)
                            .padding(.leading, 40)
                            VStack {
                                Image(systemName: "i.circle")
                                    .foregroundColor(.white)
                                    .font(.headline)
                                Text("Info")
                                    .foregroundColor(.white)
                            }
                            .padding(.leading, 40)
                            
                        }
                        Spacer()
                    }
                }
                VStack {
                    HStack {
                        Text("Popular on Netflix")
                            .foregroundColor(.white)
                            .font(.title3)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    .padding(.bottom, 5)
                    .padding(.top, -20)
                    ScrollView(.horizontal) {
                        HStack {
                            NavigationLink(destination: BetterCaulSaulView(), label: {ImageView(imageName: "BetterCallSaul")
                                    .frame(width: 160, height: 160)
                                    .foregroundColor(.white) })
                            .padding(.leading, -25)
                            .padding(.trailing, -20)
                            Button {
                                
                            } label: {
                                ImageView(imageName: "BreakingBadImage")
                                    .frame(width: 160, height: 160)
                                    .padding(.leading, -20)
                                    .padding(.trailing, -20)
                            }
                            .padding(.leading, -5)
                            Button {
                                
                            } label: {
                                ImageView(imageName: "BojackHorseman")
                                    .frame(width: 160, height: 160)
                                    .padding(.leading, -20)
                                    .padding(.trailing, -20)
                            }
                            .padding(.leading, -5)
                            Button {
                                
                            } label: {
                                ImageView(imageName: "LoveIsBlind")
                                    .frame(width: 160, height: 160)
                                    .padding(.leading, -20)
                                    .padding(.trailing, -20)
                            }
                            .padding(.leading, -5)
                            Button {
                                
                            } label: {
                                ImageView(imageName: "Naruto")
                                    .frame(width: 160, height: 160)
                                    .padding(.leading, -20)
                                    .padding(.trailing, -20)
                            }
                            .padding(.leading, -5)
                            Button {
                                
                            } label: {
                                ImageView(imageName: "PineappleExpress")
                                    .frame(width: 160, height: 160)
                                    .padding(.leading, -20)
                                    .padding(.trailing, -20)
                            }
                            .padding(.leading, -5)
                            Button {
                                
                            } label: {
                                ImageView(imageName: "Ozark")
                                    .frame(width: 160, height: 160)
                                    .padding(.leading, -20)
                                    .padding(.trailing, -20)
                            }
                            .padding(.leading, -5)
                            Button {
                                
                            } label: {
                                ImageView(imageName: "PeakyBlinders")
                                    .frame(width: 160, height: 160)
                                    .padding(.leading, -20)
                                    .padding(.trailing, -20)
                            }
                            .padding(.leading, -5)
                            Spacer()
                        }
                    }
                    Group {
                        HStack {
                            VStack {
                                Button {
                                    
                                } label: {
                                    Image(systemName: "house.fill")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .padding(.leading, 30)
                                    
                                }
                                Text("Home")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                    .padding(.leading, 30)
                                    .padding(.top, 1)
                            }
                            VStack {
                                Button {
                                    
                                } label: {
                                    Image(systemName: "play.rectangle.on.rectangle")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                    
                                }
                                .padding(.leading, 40)
                                Text("New & Hot")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                    .padding(.leading, 38)
                                    .padding(.top, 1)
                            }
                            VStack {
                                Button {
                                    
                                } label: {
                                    Image(systemName: "face.smiling")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                    
                                }
                                .padding(.leading, 28)
                                Text("Fast Laughs")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                    .padding(.leading, 30)
                                    .padding(.top, 1)
                            }
                            VStack {
                                NavigationLink(destination: DownloadsView(), label: { Image(systemName: "arrow.down.circle.fill")
                                        .font(.title2)
                                        .foregroundColor(.white) })
                                .padding(.leading, 30)
                                Text("Downloads")
                                    .foregroundColor(.white)
                                    .font(.caption)
                                    .padding(.leading, 34)
                                    .padding(.top, 1)
                            }
                            Spacer()
                        }
                        .padding(.top, 10)
                    }
                }
                .padding(.top, 540)
            }
        }
    }
}

struct TextViewCustom: View {
    var textName: String
    var fontMod: Int
    
    var body: some View {
        Text(textName)
            .font(.system(size: CGFloat(fontMod)))
            .foregroundColor(.white)
    }
}

struct TextViewStandard: View {
    var textName: String
    var colorMod: Color
    var fontWeight: Font.Weight
    var body: some View {
        Text(textName)
            .foregroundColor(colorMod)
            .fontWeight(fontWeight)
    }
}

struct ImageView: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
