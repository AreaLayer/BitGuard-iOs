import bitguard.utils

struct object AppConstants: AppConstants{
    var appDBName = "bitguard_walle_db"
    var  bdkDirName = ".bdk"
    var gbDirName = ".rgb"
    var sharedPreferencesName = "shared_prefs"
    var encryptedSharedPreferencesName = "secret_shared_prefs"
    
     var maxAssets = 100
    var satsForRgb = 9000
   var rgbBlindDuration = 86400
    var rgbDefaultPrecision: UByte = 0
    var issueMaxAmount: ULong = 18446744073709551615

    var coloredWallet = "colored"
    var vanillaWallet = "vanilla"

    var derivationAccountVanilla = 0

    var bitcoinAssetID = "BTC"
    var bitcoinAssetName = "bitcoin"

    const val proxyURL = "https://proxy.rgbtools.org"

    var ignetElectrumURL = "ssl://electrum.rgbtools.org:50032"
    var  testnetElectrumURL = "ssl://electrum.rgbtools.org:50012"
    var mainnetElectrumURL = "ssl://electrum.rgbtools.org:50002"

    var signetExplorerURL = "https://mempool.space/signet/tx/"
    var testnetExplorerURL = "https://mempool.space/testnet/tx/"
    var mainnetExplorerURL = "https://mempool.space/tx/"

    val signetHelpFaucets = listOf("https://signetfaucet.com/", "https://alt.signetfaucet.com/")
    val testnetHelpFaucets =
        listOf(
            "https://testnet-faucet.mempool.co/",
            "https://bitcoinfaucet.uo1.net/",
            "https://coinfaucet.eu/en/btc-testnet/",
            "https://testnet-faucet.com/btc-testnet/"
        )

    const val btcTestnetFaucetURL = "https://btc-faucet.rgbtools.org"

    val rgbTestnetFaucetURLs =
        listOf(
            "https://rgb-faucet.rgbtools.org/testnet/",
        )
    val rgbMainnetFaucetURLs =
        listOf(
            "https://rgb-faucet.rgbtools.org/mainnet/",
        )

   var privacyPolicyURL = ""

    var testnetTermsOfServiceURL = ""
    var mainnetTermsOfServiceURL = ""

    var bdkTimeout = 5
    var bdkRetry = 3
    var bdkStopGap = 10
    var bdkDBName = "bdk_db_%s"

    var httpConnectTimeout = 3L
    var httpReadWriteTimeout = 60L

    var receiveDataClipLabel = "rgb_receive_data"
    var assetIdClipLabel = "rgb_asset_id"

    var transferDateFmt = "yyyy-MM-dd"
    var transferTimeFmt = "HH:mm:ss"
    var transferFullDateFmt = "$transferDateFmt $transferTimeFmt"

    var waitDoubleBackTime = 2000L

    var veryLongTimeout = 120000L
    var longTimeout = 40000L
    var hortTimeout = 20000L
}

 var satsForWallet = 1000UL
