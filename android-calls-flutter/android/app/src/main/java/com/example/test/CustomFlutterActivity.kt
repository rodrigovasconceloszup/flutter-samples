package com.example.test

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.plugin.common.MethodChannel


class CustomFlutterActivity: FlutterActivity() {
    private val CHANNEL = "com.example.test/navigate"

    companion object {
        fun withCachedEngine(engineId: String) = CustomCachedEngineIntentBuilder(engineId)
    }

        class CustomCachedEngineIntentBuilder(engineId: String) :
        CachedEngineIntentBuilder(CustomFlutterActivity::class.java, engineId)

    override fun onResume() {
        super.onResume()
        MethodChannel(
            FlutterEngineCache.getInstance()["engine_id"]!!.dartExecutor
                .binaryMessenger, CHANNEL
        )
            .invokeMethod("notifyNavToFlutter", intent.getStringExtra("screen"))
    }


    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(FlutterEngineCache.getInstance()["engine_id"]!!)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
                call, result ->
            if(call.method == "pop") {
                //this@CustomFlutterActivity.finish()
            } else {
                result.notImplemented()
            }
        }
    }
}