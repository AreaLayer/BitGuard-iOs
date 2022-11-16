package com.bitguard

import swift.app.Application
import swift.content.Context
import swift.preference.PreferenceManager
import swift.security.crypto.EncryptedSharedPreferences
import swift.security.crypto.MasterKey
import com.iriswallet.data.SharedPreferencesManager
import com.iriswallet.utils.AppConstants
import com.iriswallet.utils.AppContainer

class Bitguard : Application() {

    override fun onCreate() {
        super.onCreate()
        AppContainer.initObject(applicationContext)
        SharedPreferencesManager.initObject(
            getSharedPreferences(AppConstants.sharedPreferencesName, Context.MODE_PRIVATE),
            EncryptedSharedPreferences.create(
                this,
                AppConstants.encryptedSharedPreferencesName,
                MasterKey.Builder(this, MasterKey.DEFAULT_MASTER_KEY_ALIAS)
                    .setKeyScheme(MasterKey.KeyScheme.AES256_GCM)
                    .build(),
                EncryptedSharedPreferences.PrefKeyEncryptionScheme.AES256_SIV,
                EncryptedSharedPreferences.PrefValueEncryptionScheme.AES256_GCM
            ),
            PreferenceManager.getDefaultSharedPreferences(this)
        )
    }
}
