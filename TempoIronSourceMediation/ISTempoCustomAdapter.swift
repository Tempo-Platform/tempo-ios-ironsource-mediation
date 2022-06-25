import Foundation

@objc(ISTempoCustomAdapter)
public class ISTempoCustomAdapter:ISBaseNetworkAdapter {
   
    public override func `init` (_ adData: ISAdData, delegate: ISNetworkInitializationDelegate) {
       delegate.onInitDidSucceed()
       return
    }
    
    public override func networkSDKVersion() -> String {
       return  "0.0.7"
    }
    public override func adapterVersion() -> String {
        return  "0.0.7"
    }
    
}
