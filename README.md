# Tempo IronSource Adapter SDK

## To Run Example app

1. Run `cd ios-ironsource-mediation-sample`
2. Run `pod install`. This installs all the pod dependencies and creates a ".xcworkspace" file.
3. Open the above generated "xcworkspace" file in XCode
4. Hit Run

## To Publish a new version of cocoapods
1. Create a new release in github with an updated version number.
2. Update the version number in "tempo-ironsource-mediation.podspec" file to match the above github release. 
3. Run `pod trunk push --allow-warnings --verbose`

## To try the TempoSDK in your project

Add the following line to your Podfile:

```ruby
pod 'TempoIronSourceMediationSDK'
```
