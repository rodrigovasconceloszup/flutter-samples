package com.example.test

import android.os.Bundle
import com.google.android.material.floatingactionbutton.FloatingActionButton
import com.google.android.material.snackbar.Snackbar
import androidx.appcompat.app.AppCompatActivity
import android.view.Menu
import android.view.MenuItem
import android.widget.Button
import android.widget.EditText
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.plugin.common.MethodChannel

class MainActivity : AppCompatActivity() {
    private val CHANNEL_PARAM = "com.example.test/param"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val flutterEngine = FlutterEngine(this)
        flutterEngine.dartExecutor.executeDartEntrypoint(
                DartExecutor.DartEntrypoint.createDefault()
        )

        FlutterEngineCache.getInstance().put("engine_id", flutterEngine)

        val button = findViewById<Button>(R.id.button_first)
        button.setOnClickListener {
            val username = findViewById<EditText>(R.id.usernameInput)
            val intent = CustomFlutterActivity.withCachedEngine("engine_id").build(this@MainActivity)
            MethodChannel(
                    FlutterEngineCache.getInstance()["engine_id"]!!.dartExecutor
                            .binaryMessenger, CHANNEL_PARAM
            )
                    .invokeMethod("paramToFlutter", username.text.toString())
            startActivity(intent)
        }
    }
}