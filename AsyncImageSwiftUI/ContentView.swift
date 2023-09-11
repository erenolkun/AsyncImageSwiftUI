//
//  ContentView.swift
//  AsyncImageSwiftUI
//
//  Created by FERDA OLKUN on 31.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            VStack{
                AsyncImage(url: URL(string: "https://media.licdn.com/dms/image/D4D03AQF7QrA4QVMB_w/profile-displayphoto-shrink_800_800/0/1689141207893?e=2147483647&v=beta&t=LbZa_p83Uz_hjhpewEGFhVOA1ObqqEdiZlbsf3jXw7Y")!) { image in
                    image.resizable().frame(width: 300, height: 300, alignment: .center)
//Görsel indirilene kadar ne gösterilsin
                } placeholder: {
                    ProgressView()
                }

                List(superHeroArray){
                    superhero in Text(superhero.name)
                        .font(.title3)
                        .foregroundColor(.black)
                }
            }.navigationTitle(Text("Superhero Book"))
        }
    }
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
