//
//  SettingsView.swift
//  News App Testing
//
//  Created by Sathriyan on 06/06/21.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Text("Settings")
                    .font(Font.system(size: 35))
                    .fontWeight(.bold)
                    .padding(.top, 55)
                    .padding(.leading, 20)
                    .padding(.bottom, 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Form{
                    Section (header : HStack {
                        Text("Customization")
                                    .font(Font.system(size: 17))
                                    .padding(.leading, 5)
                            .padding(.bottom, 8)
                                    .textCase(.none)
                        
                    })
                    {
                        VStack {
                            
                            HStack {
                                Toggle(isOn: $isOnboarding) {
                                  if isOnboarding {
                                    Text("Restarted".uppercased())
                                      .fontWeight(.bold)
                                      .foregroundColor(Color.green)
                                  } else {
                                    Text("Restart".uppercased())
                                      .fontWeight(.bold)
                                      .foregroundColor(Color.secondary)
                                  }
                                }
                                .padding(.top, 10)
                                .padding(.bottom, 5)
                            }
                            
                            Divider()
                            
                            Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                                .padding(.top, 5)
                                .padding(.bottom, 15)
                                .frame(minHeight: 60)
                                .font(Font.system(size: 16))
                                .lineSpacing(3)
                                .multilineTextAlignment(.leading)
                                
                        }
                        
                    }
                        
                        Section (header : Text("About the application")
                                    .font(Font.system(size: 17))
                                    .padding(.leading, 5)
                                    .textCase(.none)
                                    
                        )
                        {
                            HStack {
                                
                                Image(systemName: "gear")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .frame(width: 40, height: 40)
                                    
                                Text("Application")
                                    .foregroundColor(Color.secondary)
                                Spacer()
                                Text("NewsDa")
                                    .fontWeight(.semibold)
                            }
                            
                            HStack {
                                
                                Image(systemName: "checkmark.seal")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .frame(width: 40, height: 40)
                                
                                Text("Compatability")
                                    .foregroundColor(Color.secondary)
                                Spacer()
                                Text("iOS 14.1 +")
                                    .fontWeight(.semibold)
                            }
                            
                            HStack {
                                
                                Image(systemName: "keyboard")
                                    .resizable()
                                    .frame(width: 25, height: 20)
                                    .frame(width: 40, height: 40)
                                
                                Text("Developer")
                                    .foregroundColor(Color.secondary)
                                Spacer()
                                Text("Sathriyan")
                                    .fontWeight(.semibold)
                            }
                            
                            HStack {
                                
                                Image(systemName: "paintbrush")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .frame(width: 40, height: 40)
                                
                                Text("Designer")
                                    .foregroundColor(Color.secondary)
                                Spacer()
                                Text("Sathriyan")
                                    .fontWeight(.semibold)
                            }
                            
                            HStack {
                                
                                Image(systemName: "flag")
                                    .resizable()
                                    .frame(width: 15, height: 20)
                                    .frame(width: 40, height: 40)
                                
                                Text("Version")
                                    .foregroundColor(Color.secondary)
                                Spacer()
                                Text("1.0.0")
                                    .fontWeight(.semibold)
                            }
                            
                            
                        }
                        .padding(.vertical, 5)
                        
                        Section (header : Text("Data")
                                    .font(Font.system(size: 17))
                                    .padding(.leading, 5)
                                    .textCase(.none)
                                    
                        )
                        {
                            HStack{
                                Image(systemName: "externaldrive.fill.badge.icloud")
                                    .resizable()
                                    .frame(width: 25, height: 15)
                                    .frame(width: 40, height: 40)
                                
                                Text("Data provider")
                                    .foregroundColor(Color.secondary)
                                Spacer()
                                Text("NewsApi")
                                    .fontWeight(.semibold)
                            }
                            
                            HStack{
                                Image(systemName: "flag")
                                    .resizable()
                                    .frame(width: 15, height: 20)
                                    .frame(width: 40, height: 40)
                                
                                Text("Version")
                                    .foregroundColor(Color.secondary)
                                Spacer()
                                Text("Free")
                                    .fontWeight(.semibold)
                            }
                            
                            HStack{
                                Image(systemName: "globe")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .frame(width: 40, height: 40)
                                    
                                Text("Website")
                                    .foregroundColor(Color.secondary)
                                Spacer()
                                Text("newsapi.org")
                                    .fontWeight(.semibold)
                            }
                        }
                        .padding(.vertical, 5)
                        
                    }
                .padding(.top, -20)
                    .navigationBarHidden(true)
                .navigationBarTitle(Text("Settings"))
            }
            .background(Color(red: 0.949, green: 0.949, blue: 0.97))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
