package com.example.myapplication;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // onCreate() 메서드가 호출될 때 로그 출력
        Log.d("MainActivity", "onCreate() called");

        Button stopButton = findViewById(R.id.stopButton);
        Button restartButton = findViewById(R.id.restartButton);

        stopButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // stopButton 클릭 시 로그 출력
                Log.d("MainActivity", "stopButton clicked");
                // 여기서 원래 수행하려던 동작을 수행하세요.
            }
        });

        restartButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // restartButton 클릭 시 로그 출력
                Log.d("MainActivity", "restartButton clicked");
                // 여기서 원래 수행하려던 동작을 수행하세요.
            }
        });
    }
}
