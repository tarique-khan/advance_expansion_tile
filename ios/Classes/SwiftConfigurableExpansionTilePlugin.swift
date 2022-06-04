import Flutter
import UIKit

public class SwiftConfigurableExpansionTilePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "configurable_expansion_tile", binaryMessenger: registrar.messenger())
    let instance = SwiftConfigurableExpansionTilePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
