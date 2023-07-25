package com.example.myapplication;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.FormBody;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import androidx.appcompat.app.AppCompatActivity;
import java.io.IOException;


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
                OkHttpClient client = new OkHttpClient();

                RequestBody body = new FormBody.Builder()
                        .add("action", "stop")
                        .build();

                Request request = new Request.Builder()
                        .url("http://172.22.2.184:5000/stop_simulation")
                        .post(body)
                        .build();

                client.newCall(request).enqueue(new Callback() {
                    @Override
                    public void onFailure(Call call, IOException e) {
                        e.printStackTrace();
                    }

                    @Override
                    public void onResponse(Call call, Response response) throws IOException {
                        if(response.isSuccessful()){
                            Log.d("TAG", "response: " + response.body().string());
                        }
                    }
                });
            }
        });

        restartButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // restartButton 클릭 시 로그 출력
                Log.d("MainActivity", "restartButton clicked");
                OkHttpClient client = new OkHttpClient();

                RequestBody body = new FormBody.Builder()
                        .add("action", "restart")
                        .build();

                Request request = new Request.Builder()
                        .url("http://172.22.2.184:5000/restart_simulation")
                        .post(body)
                        .build();

                client.newCall(request).enqueue(new Callback() {
                    @Override
                    public void onFailure(Call call, IOException e) {
                        e.printStackTrace();
                    }

                    @Override
                    public void onResponse(Call call, Response response) throws IOException {
                        if(response.isSuccessful()){
                            Log.d("TAG", "response: " + response.body().string());
                        }
                    }
                });
            }
        });
    }
}
