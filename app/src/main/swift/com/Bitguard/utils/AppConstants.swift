package com.bitguard.utils

// Constants shared across the whole app
object AppConstants {
    const val appDBName = "iris_wallet_db"
    const val bdkDirName = ".bdk"
    const val rgbDirName = ".rgb"
    const val sharedPreferencesName = "shared_prefs"
    const val encryptedSharedPreferencesName = "secret_shared_prefs"

    const val maxAssets = 50
    const val satsForRgb = 9000UL
    const val rgbBlindDuration = 86400U
    const val rgbDefaultPrecision: UByte = 0U
    const val issueMaxAmount: ULong = 18446744073709551615UL

    const val coloredWallet = "colored"
    const val vanillaWallet = "vanilla"

    const val derivationAccountVanilla = 0

    const val bitcoinAssetID = "BTC"
    const val bitcoinAssetName = "bitcoin"

    const val proxyURL = "https://proxy.rgbtools.org"

    const val signetElectrumURL = "ssl://electrum.rgbtools.org:50032"
    const val testnetElectrumURL = "ssl://electrum.rgbtools.org:50012"
    const val mainnetElectrumURL = "ssl://electrum.rgbtools.org:50002"

    const val signetExplorerURL = "https://mempool.space/signet/tx/"
    const val testnetExplorerURL = "https://mempool.space/testnet/tx/"
    const val mainnetExplorerURL = "https://mempool.space/tx/"

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

    const val privacyPolicyURL = "https://iriswallet.com/privacy_policy.html"

    const val testnetTermsOfServiceURL = "https://iriswallet.com/testnet/terms_of_service.html"
    const val mainnetTermsOfServiceURL = "https://iriswallet.com/mainnet/terms_of_service.html"

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
