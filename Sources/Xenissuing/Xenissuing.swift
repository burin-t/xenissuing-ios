import Foundation

#if swift(<5.3)
#error("This Swift version is not supported.")
#endif

// MARK: - Xenissuing

@available(macOS 10.15, *)
public final class Xenissuing: XenCrypt {
    /**
     Initializes XenIssuing module.

     - Parameters:
         - xenditPublicKeyData: Public Key.
         - xenditPublicKeyTag: Public Key Tag. If provided, it will try to check first keychain to get the key data.

     - Returns: Main module.
     */
    override public init(xenditPublicKeyData: Data, xenditPublicKeyTag: String? = nil) throws {
        do {
            try super.init(xenditPublicKeyData: xenditPublicKeyData, xenditPublicKeyTag: xenditPublicKeyTag)
        } catch {
            throw error
        }
    }
}
