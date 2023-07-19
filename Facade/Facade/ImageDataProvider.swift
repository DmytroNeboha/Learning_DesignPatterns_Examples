

import UIKit


class ImageDataProvider {
    public func data(frome image: UIImage, type: ImageType) throws -> Data {
        switch type {
        case .jpeg(let compressionQuality):
            return try jpegData(from: image, compressionQuality: compressionQuality)
        case .png:
            return try pngData(frome: image)
        }
    }
    
    private func pngData(frome image: UIImage) throws -> Data {
        guard let imageData = image.pngData() else {
            throw ImageSaverError.couldNotCreatePNGDataFromeImage
        }
        return imageData
    }
    
    private func jpegData(from image: UIImage, compressionQuality: CGFloat) throws -> Data {
        guard let imageData = image.jpegData(compressionQuality: compressionQuality) else {
            throw ImageSaverError.couldNotCreateJPEGDateFromeImage
        }
        return imageData
    }
}
