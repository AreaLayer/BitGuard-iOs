import bitguard.utils

struct object AppConstants: AppConstants{
    var appDBName = "bitguard_walle_db"
    var  bdkDirName = ".bdk"
    var gbDirName = ".rgb"
    var sharedPreferencesName = "shared_prefs"
    var encryptedSharedPreferencesName = "secret_shared_prefs"
    
     var maxAssets = 100
    varsatsForRgb = 9000UL
   var rgbBlindDuration = 86400U
    var rgbDefaultPrecision: UByte = 0U
    const val issueMaxAmount: ULong = 18446744073709551615UL

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

    const val privacyPolicyURL = ""

    const val testnetTermsOfServiceURL = ""
    const val mainnetTermsOfServiceURL = ""

    const val bdkTimeout = 5
    const val bdkRetry = 3
    const val bdkStopGap = 10
    const val bdkDBName = "bdk_db_%s"

    const val httpConnectTimeout = 3L
    const val httpReadWriteTimeout = 60L

    const val receiveDataClipLabel = "rgb_receive_data"
    const val assetIdClipLabel = "rgb_asset_id"

    const val transferDateFmt = "yyyy-MM-dd"
    const val transferTimeFmt = "HH:mm:ss"
    const val transferFullDateFmt = "$transferDateFmt $transferTimeFmt"

    const val waitDoubleBackTime = 2000L

    const val veryLongTimeout = 120000L
    const val longTimeout = 40000L
    const val shortTimeout = 20000L
}

const val satsForWallet = 1000UL
