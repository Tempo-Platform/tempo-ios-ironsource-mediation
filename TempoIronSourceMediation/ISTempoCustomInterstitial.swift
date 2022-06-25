import Foundation

import TempoSDK

@objc(ISTempoCustomInterstitial)
public class ISTempoCustomInterstitial  : ISBaseInterstitial, TempoInterstitialListener {
    var interstitial:TempoInterstitial? = nil
    var isAdReady: Bool = false
    var delegate:ISInterstitialAdDelegate? = nil
    
    public override func loadAd(with adData: ISAdData, delegate: ISInterstitialAdDelegate) {
        self.delegate = delegate
        self.interstitial = TempoInterstitial(parentViewController: nil, delegate: self)
        DispatchQueue.main.async {
            self.interstitial!.loadAd()
          }
    }
    
    public override func isAdAvailable(with adData: ISAdData) -> Bool {
        return isAdReady
    }
    
    public override func showAd(with viewController: UIViewController, adData: ISAdData, delegate: ISInterstitialAdDelegate) {

        self.delegate = delegate
        if (!isAdReady) {
           delegate.adDidFailToShowWithErrorCode(ISAdapterErrors.internal.rawValue, errorMessage: "ad is not ready to show for the current instanceData")
           return
        }
        self.interstitial!.updateViewController(parentViewController: viewController)
        self.interstitial!.showAd()
    }
    
    public func onAdFetchSucceeded() {
        self.delegate?.adDidLoad()
        isAdReady = true
    }
    
    public func onAdFetchFailed() {
        self.delegate?.adDidFailToLoadWith(ISAdapterErrorType.noFill, errorCode: 0, errorMessage: "Ad fetch failed for some reason")
    }
    
    public func onAdClosed() {
        self.delegate?.adDidClose()
        self.delegate?.adDidShowSucceed()
        isAdReady = false
    }
    
    public func onAdDisplayed() {
        self.delegate?.adDidOpen()
    }
}
