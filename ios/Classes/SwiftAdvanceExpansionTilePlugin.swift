import Flutter
import UIKit

public class SwiftAdvanceExpansionTilePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "advance_expansion_tile", binaryMessenger: registrar.messenger())
    let instance = SwiftAdvanceExpansionTilePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
