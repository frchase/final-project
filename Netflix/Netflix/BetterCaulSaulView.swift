//
//  BetterCaulSaulView.swift
//  Netflix
//
//  Created by Chase Allen on 11/9/22.
//

import Combine
import SwiftUI
import AVKit

struct BetterCaulSaulView: View {
    @State var url = Bundle.main.url(forResource: "BetterCall", withExtension: "mov")!
    @State var numSeasons = 0
    var body: some View {
        NavigationView {
            ZStack {
                Color(.black)
                    .ignoresSafeArea(.all)
                VStack {
                    HStack {
                        VideoPlayer(player: AVPlayer(url: url))
                            .scaledToFill()
                            .frame(width: .infinity, height: 200)
                            .background(
                                RoundedRectangle(cornerRadius: 40))
                    }
                    Spacer()
                    ScrollView {
                        Group {
                            HStack {
                                Text("Better Call Saul")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.title3)
                                Spacer()
                            }
                            .padding(.leading, 3)
                            HStack {
                                Image(systemName: "hand.thumbsup.fill")
                                    .foregroundColor(.gray)
                                    .font(.system(size: CGFloat(15)))
                                Text("2020")
                                    .foregroundColor(.white)
                                    .font(.system(size: CGFloat(15)))
                                Text("5 Seasons")
                                    .foregroundColor(.white)
                                    .font(.system(size: CGFloat(15)))
                                Spacer()
                            }
                            .padding(.leading, 4)
                            .padding(.top, -8)
                            HStack (alignment: .top) {
                                Image(systemName: "play.fill")
                                    .foregroundColor(.black)
                                Text("Play")
                            }
                            .frame(width: 400, height: 30)
                            .background(.white)
                            
                            HStack (alignment: .top) {
                                Image(systemName: "arrow.down.to.line")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                Text("Download S1:E1")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                            }
                            .frame(width: 400, height: 30)
                            .background(Color(.darkGray))
                            HStack () {
                                Text("S1:E1 Uno")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .padding(.leading, 5)
                                Spacer()
                            }
                            .padding(.top, 5)
                            HStack () {
                                Text("Struggling lawyer Jimmy McGill tries to leave his speedy past behind him, but old habits die hard when a big oppurtunity presents itself")
                                    .foregroundColor(.white)
                                    .padding(.leading, 5)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(.top, 0)
                            HStack () {
                                Text("Cast: Bob Odenkirk, Jonathan Banks, Rhea Seehorn ... more")
                                    .foregroundColor(.gray)
                                    .padding(.leading, 5)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                        }
                            .padding(.top, 2)
                        Group {
                            HStack {
                                Text("Creators: Vince Gilligan, Peter Gould")
                                    .foregroundColor(.gray)
                                    .padding(.leading, 5)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            HStack {
                                Button {
                                    //on toggle change to check mark
                                } label: {
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                        .font(.title2)
                                        .padding(.leading, 40)
                                        .fontWeight(.bold)
                                }
                                Image(systemName: "hand.thumbsup.fill")
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .padding(.leading, 40)
                                    .fontWeight(.bold)
                                Image(systemName: "paperplane")
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .padding(.leading, 40)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(.top, 8)
                            HStack {
                                Text("My List")
                                    .foregroundColor(.gray)
                                    .padding(.leading, 32)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                Text("Rated")
                                    .foregroundColor(.gray)
                                    .padding(.leading, 25)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                Text("Share")
                                    .foregroundColor(.gray)
                                    .padding(.leading, 30)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            .padding(.top, 2)
                            HStack {
                                Text("Episodes")
                                    .foregroundColor(.white)
                                    .font(.system(size: CGFloat(13)))
                                    .padding(.leading, 20)
                                    .fontWeight(.bold)
                                Text("Collection")
                                    .foregroundColor(.white)
                                    .font(.system(size: CGFloat(13)))
                                    .padding(.leading, 12)
                                Text("More Like This")
                                    .foregroundColor(.white)
                                    .font(.system(size: CGFloat(13)))
                                    .padding(.leading, 12)
                                Text("Trailers & More")
                                    .foregroundColor(.white)
                                    .font(.system(size: CGFloat(13)))
                                    .padding(.leading, 12)
                                Spacer()
                            }
                            .padding(.top, 8)
                            HStack {
                                Picker("Number of people", selection: $numSeasons) {
                                    ForEach(1..<6) {
                                        Text("Season \($0)")
                                            .foregroundColor(.white)
                                    }
                                }.foregroundColor(.white)
                                .padding(.leading, 7)
                                .padding(.top,-4)
                                Spacer()
                            }
                            VStack {
                                if numSeasons == 0 {
                                    HstackViewEpisodes(episodeName: "1. Uno")
                                    HstackViewEpisodes(episodeName: "2. Mijo")
                                    HstackViewEpisodes(episodeName: "3. Nacho")
                                    HstackViewEpisodes(episodeName: "4. Hero")
                                    HstackViewEpisodes(episodeName: "5. Alpine Shepard Boy")
                                    HstackViewEpisodes(episodeName: "6. Five-O")
                                    HstackViewEpisodes(episodeName: "7. Bingo")
                                    HstackViewEpisodes(episodeName: "8. Rico")
                                    HstackViewEpisodes(episodeName: "9. Pimento")
                                    HstackViewEpisodes(episodeName: "10. Marco")
                                } else if numSeasons == 1 {
                                    HstackViewEpisodes(episodeName: "1. Switch")
                                    HstackViewEpisodes(episodeName: "2. Cobbler")
                                    HstackViewEpisodes(episodeName: "3. Amarillo")
                                    HstackViewEpisodes(episodeName: "4. Gloves Off")
                                    HstackViewEpisodes(episodeName: "5. Rebecca")
                                    HstackViewEpisodes(episodeName: "6. Bali Ha'i")
                                    HstackViewEpisodes(episodeName: "7. Inflatable")
                                    HstackViewEpisodes(episodeName: "8. Fifi")
                                    HstackViewEpisodes(episodeName: "9. Nailed")
                                    HstackViewEpisodes(episodeName: "10 Klick")
                                }
                               
                            }
                        }
                    }
                    .padding(.top, 80)
                }
            }
        }
    }
}

struct HstackViewEpisodes: View {
    @State private var count = 0
    @State private var isClicked = false
    var episodeName: String
    var body: some View{
        Group {
            HStack {
                Image("BCSEpisode")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 170, height: 60)
                    .cornerRadius(30)
                    .padding(.leading, -10)
                    .overlay {
                        Image(systemName: "play.circle")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                VStack {
                    HStack{
                        Text(episodeName)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    HStack {
                        Text("53m")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Spacer()
                    }
                }
                .padding(.leading, -28)
                Spacer()
                Button() {
                    
                } label: {
                    Image(systemName: "arrow.down.to.line")
                        .foregroundColor(.white)
                }
                .padding(.leading, -20)
            }
            HStack {
                Text("Struggling lawyer Jimmy McGill ties to leave his seedy past behind him, but old habits die hard when a big oppurtunity presents itself.")
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .padding(.leading, 15)
                    .padding(.trailing, 10)
            }
        }
    }
}

struct BetterCaulSaulView_Previews: PreviewProvider {
    static var previews: some View {
        BetterCaulSaulView()
    }
}
