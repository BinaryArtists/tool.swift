//
//  UserDetailPresenter.swift
//  Example
//
//  Created by Joel on 05/04/2017.
//  Copyright (c) 2017 HELM S.C.P. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//

protocol UserDetailPresenterInput {
    func presentUser(response: UserDetailScene.GetUser.Response)
}

protocol UserDetailPresenterOutput: class {
    func displayUser(viewModel: UserDetailScene.GetUser.ViewModel)
}

class UserDetailPresenter: UserDetailPresenterInput {
    
    weak var output: UserDetailPresenterOutput?
    
    // MARK: Presentation logic
    
    func presentUser(response: UserDetailScene.GetUser.Response) {
        let user = response.user
        
        let viewModel = mapUserToViewModel(user: user)
        
        output?.displayUser(viewModel: viewModel)
    }

    func mapUserToViewModel(user: User) -> UserDetailScene.GetUser.ViewModel {
        
        let userNameData = user.name
        let userName = userNameData.title.capitalized + ". " + userNameData.firstName.capitalized + " " + userNameData.lastName.capitalized
        
        let nameAtribute = UserDetailScene.GetUser.ViewModel.Atribute(title: "Name: ", value: userName)
        let emailAtribute = UserDetailScene.GetUser.ViewModel.Atribute(title: "Email: ", value: user.email)
        let mobileAtribute = UserDetailScene.GetUser.ViewModel.Atribute(title: "Mobile: ", value: user.mobile)
        
        let atributes = [nameAtribute, emailAtribute, mobileAtribute]
        
        return UserDetailScene.GetUser.ViewModel(imagePath: user.imagePath, atributes: atributes)
    }
    
}