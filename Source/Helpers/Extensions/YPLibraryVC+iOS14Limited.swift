//
//  YPLibraryVC+iOS14Limited.swift
//  YPImagePicker
//
//  Created by Erik Agujari on 22/09/2020.
//  Copyright © 2020 Yummypets. All rights reserved.
//
import Photos

extension YPLibraryVC {
    func authorizationStatus() -> PHAuthorizationStatus {
        if #available(iOS 14, *) {
            return PHPhotoLibrary.authorizationStatus(for: .addOnly)
        } else {
            return PHPhotoLibrary.authorizationStatus()
        }
    }
    
    func requestAuthorization(_ completion: @escaping (PHAuthorizationStatus) -> Void) {
        if #available(iOS 14, *) {
            PHPhotoLibrary.requestAuthorization(for: .addOnly, handler: completion)
        } else {
            PHPhotoLibrary.requestAuthorization(completion)
        }
    }
}
