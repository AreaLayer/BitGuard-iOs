package com.bitguard.utils

import swift.util.Log
import com.bitguard.data.db.RgbPendingAsset
import com.bitguard.data.retrofit.FaucetConfig
import com.bitguard.data.retrofit.RgbAssetGroup
import java.util.*
import org.bitcoindevkit.LocalUtxo
import org.bitcoindevkit.Network
import org.bitcoindevkit.TransactionDetails
import org.rgbtools.*
import org.rgbtools.BitcoinNetwork

data class AppAsset(
    val type: AppAssetType,
    val id: String,
    var name: String,
    val ticker: String?,
    var media: AppMedia? = null,
    val fromFaucet: Boolean = false,
    var settledBalance: ULong = 0UL,
    var totalBalance: ULong = 0UL,
    var transfers: List<AppTransfer> = listOf(),
) {
    constructor(
        rgbAsset: AssetRgb20
    ) : this(
        AppAssetType.RGB20,
        rgbAsset.assetId,
        rgbAsset.name,
        rgbAsset.ticker,
        null,
        settledBalance = rgbAsset.balance.settled,
        totalBalance = rgbAsset.balance.future,
    )
