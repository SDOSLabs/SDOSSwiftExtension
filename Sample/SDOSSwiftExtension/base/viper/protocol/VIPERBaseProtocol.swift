//
//  VIPERBaseProtocol.swift
//
//  Copyright © 2019 SDOS. All rights reserved.
//

import Foundation
import SDOSVIPER


/// Protocolo base para los presenter que implementan VIPER
protocol VIPERBasePresenterActions: VIPERGenericPresenterActions {
    
}

/// Protocolo base para los interactor que implementan VIPER
protocol VIPERBaseInteractorActions: VIPERGenericInteractorActions {
    
}

/// Protocolo base para los datastore que implementan VIPER
protocol VIPERBaseDataStoreActions: VIPERGenericDataStoreActions {
    
}

/// Protocolo base para los wireframe que implementan VIPER
protocol VIPERBaseWirwframeActions: VIPERGenericWirwframeActions {
    
}

/// Protocolo base para los ViewControllers que implementan VIPER
protocol VIPERBaseViewActions: VIPERGenericViewActions {
    
}
