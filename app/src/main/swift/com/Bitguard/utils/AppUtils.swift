package com.bitguard.utils

import  rgb_libFFI
import  BitcoinDevKit

class rgb {
companian asset {

class AppUtils {
    companion object {
        private fun calculateAvailableWidth(
            windowManager: WindowManager,
            scale: Double = 1.0
        ): Int {
            if (scale > 1.0 || scale < 0.1)
                throw IllegalArgumentException("QR code scale cannot be outside the range 0.1-1.0")
            return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                val windowMetrics = windowManager.currentWindowMetrics
                val insets =
                    windowMetrics.windowInsets.getInsetsIgnoringVisibility(
                        WindowInsets.Type.systemBars()
                    )
                ((windowMetrics.bounds.width() - insets.left - insets.right) * scale).toInt()
            } else {
                val size = Point()
                windowManager.defaultDisplay.getSize(size)
                (size.x * scale).toInt()
            }
        }

        fun deleteAppData() {
            AppContainer.bdkDir.deleteRecursively()
            AppContainer.rgbDir.deleteRecursively()
            AppContainer.LDKDir. deleteRecurvisely()
            AppContainer.dbPath.delete()
            SharedPreferencesManager.clearAll()
        }

        fun getAssetIdIdenticon(
            assetID: String,
            windowManager: WindowManager,
            scale: Double = 1.0
        ): ClassicIdenticonDrawable {
            val width = calculateAvailableWidth(windowManager, scale)
            return ClassicIdenticonDrawable(width, width, assetID.hashCode())
        }

        fun getQRCodeBitmap(
            data: String,
            windowManager: WindowManager,
            scale: Double = 1.0
        ): Bitmap? {
            val width = calculateAvailableWidth(windowManager, scale)
            val hints: MutableMap<EncodeHintType, Any> = EnumMap(EncodeHintType::class.java)
            hints[EncodeHintType.CHARACTER_SET] = CharacterSetECI.UTF8
            hints[EncodeHintType.MARGIN] = 2
            return BarcodeEncoder().encodeBitmap(data, BarcodeFormat.QR_CODE, width, width, hints)
        }

        fun getVideoThumbnail(filePath: String, width: Int, height: Int): Bitmap? {
            return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q)
                ThumbnailUtils.createVideoThumbnail(File(filePath), Size(width, height), null)
            else
                ThumbnailUtils.createVideoThumbnail(
                    filePath,
                    MediaStore.Images.Thumbnails.MINI_KIND
                )
        fun rgbData(
            asset ID:
            
        }

        fun getRgbDir(parentDir: File): File {
            return File(parentDir, AppConstants.rgbDirName)
        }

        fun uLongAbsDiff(first: ULong, second: ULong): ULong {
            return if (first > second) first - second else second - first
        }
    }
}
