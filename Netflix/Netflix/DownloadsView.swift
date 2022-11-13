//
//  DownloadsView.swift
//  Netflix
//
//  Created by Chase Allen on 11/9/22.
//

import SwiftUI

struct DownloadsView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea(.all)
            VStack {
                HStack {
                    Text("Downloads")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.title2)
                        .padding(.leading, 4)
                    Spacer()
                    Image(systemName: "airplayvideo")
                        .foregroundColor(.white)
                        .font(.title2)
                        .padding(.trailing, 2)
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.white)
                        .font(.title2)
                        .padding(.trailing, 2)
                    Image("netflix-smiley")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(height: 22)
                        .padding(.trailing, 15)
                }
                HStack {
                    Image(systemName: "gearshape")
                        .foregroundColor(.white)
                        .font(.title3)
                        .padding(.trailing, 2)
                    Text("Smart Downloads")
                        .foregroundColor(.white)
                        .font(.caption)
                        .fontWeight(.bold)
                        .padding(.leading, -4)
                    Spacer()
                    Image(systemName: "pencil")
                        .foregroundColor(.white)
                        .font(.title3)
                        .padding(.trailing, 15)
                }
                .padding(.top, 8)
                HStack {
                    Image("netflix-smiley")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(height: 22)
                        .padding(.leading, 2)
                    Text("Chase")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                    Spacer()
                }
                .padding(.top, 8)
                Group {
                    HStack {
                        Image("Breaking")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 170, height: 60)
                            .cornerRadius(30)
                            .padding(.leading, -30)
                           
                        VStack {
                            HStack{
                                Text("Breaking Bad")
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            HStack {
                                Text("TV-MA | 1 Episode | 202.3 MB")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                                Spacer()
                            }
                        }
                        .padding(.leading, -28)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                            .padding(.leading, -20)
                    }
                }
                HStack {
                    Text("Downloads for You")
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .padding(.top, 8)
                    Spacer()
                }
                Group {
                    HStack {
                        Image("Ozark 1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 170, height: 60)
                            .cornerRadius(30)
                            .padding(.leading, -30)
                        VStack {
                            HStack{
                                Text("Ozark")
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            HStack {
                                Text("TV-MA | 1 Episode | 202.3 MB")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                                Spacer()
                            }
                        }
                        .padding(.leading, -28)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                            .padding(.leading, -20)
                    }
                }
                HStack {
                    Text("See What You Can Download")
                        .foregroundColor(.black)
                        .font(.subheadline)
                        .fontWeight(.bold)
                }
                .frame(width: 250, height: 30)
                .background(.white)
                .padding(.top, 15)
                Spacer()
            }
        }
    }
}

struct DownloadsView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadsView()
    }
}
