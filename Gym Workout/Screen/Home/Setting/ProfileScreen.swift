//
//  ProfileScreen.swift
//  Gym Workout
//
//  Created by Yashom on 17/10/24.
//

import SwiftUI

struct ProfileScreen: View {
    //for back
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ZStack{
            
            VStack{
                
                HStack{
                    
                    Button(action: {
                        mode.wrappedValue.dismiss()
                    }, label: {
                        Image("back")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(8)
                    })
                    
                    Text("Profile")
                        .font(.customFont(.regular, fontSize: 18))
                        .maxLeft
                    
                }
                .foregroundColor(.primaryText)
                .horizontal20
                .vertical15
                .topWithSafe
                
                ScrollView{
                    
                    VStack(spacing: 15){
                        
                        HStack(spacing: 20){
                            
                            Image("user_placeholder")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .cornerRadius(15)
                            
                            VStack(spacing: 8){
                                
                                Text("Aryan Gupta")
                                    .font(.customFont(.semBold, fontSize: 15))
                                    .maxLeft
                                
                                Text("957389230")
                                    .font(.customFont(.semBold, fontSize: 15))
                                    .maxLeft
                                
                                Text("aryangupta6008@gmail.com")
                                    .font(.customFont(.semBold, fontSize: 12))
                                    .accentColor(.primaryText)
                                    .maxLeft
                                
                                HStack{
                                    
                                    Image("location")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                        .cornerRadius(15)
                                    
                                    Text("Bangalore")
                                        .font(.customFont(.regular, fontSize: 12))
                                        .maxLeft
                                    
                                }
                            }
                            
                        }
                        
                        SettingRow(title: "Completed Task", icon: "completed_tasks", value: "3")
                        SettingRow(title: "Level", icon: "level", value: "Beg"){
                            
                        }
                        SettingRow(title: "Goals", icon: "goal", value: "Fat Loss"){
                            
                        }
                        SettingRow(title: "Challenges", icon: "challenges", value: "4"){
                            
                        }
                        SettingRow(title: "Plans", icon: "calendar", value: "2"){
                            
                        }
                        SettingRow(title: "Fitness Device", icon: "smartwatch", value: "iWatch"){
                            
                        }
                        SettingRow(title: "Refer a friend", icon: "share", value: "50 inr"){
                            
                        }
                        
                        
                    }
                    .horizontal15
                    .vertical15
                    .bottomWithSafe
                }
            }
        }
        .navHide
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
