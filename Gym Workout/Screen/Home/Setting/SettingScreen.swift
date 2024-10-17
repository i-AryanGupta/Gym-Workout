//
//  SettingScreen.swift
//  Gym Workout
//
//  Created by Yashom on 17/10/24.
//

import SwiftUI

struct SettingScreen: View {
    
    @State var showProfile = false
    
    var body: some View {
        ZStack{
            
            VStack{
                
                HStack{
                    Text("Setting")
                        .font(.customFont(.regular, fontSize: 18))
                        .maxLeft
                    
                }
                .foregroundColor(.white)
                .horizontal20
                .vertical15
                .topWithSafe
                .background(Color.secondaryApp)
                
                ScrollView{
                    
                    VStack(spacing: 15){
                        SettingRow(title: "Profile", icon: "user_placeholder", isIconCircle: true){
                            showProfile = true
                        }
                        SettingRow(title: "Language", icon: "language", value: "Eng"){
                            
                        }
                        SettingRow(title: "Health Data", icon: "data"){
                            
                        }
                        SettingRow(title: "Notification", icon: "notification", value: "On"){
                            
                        }
                        SettingRow(title: "Refer a friend", icon: "share", value: "50 inr"){
                            
                        }
                        SettingRow(title: "Feedback", icon: "feedback"){
                            
                        }
                        SettingRow(title: "Rate Us", icon: "rating"){
                            
                        }
                        SettingRow(title: "Log out", icon: "logout"){
                            
                        }
                        
                        
                    }
                    .horizontal15
                    .vertical15
                    .bottomWithSafe
                }
            }
        }
        .bgNavLink(content: ProfileScreen(), isAction: $showProfile)
        .navHide
    }
}

struct SettingScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SettingScreen()
        }
        
    }
}
