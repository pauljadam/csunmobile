package com.example.pauladam.formbadandroid;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        final TextView errorText = (TextView) findViewById(R.id.textViewError);

        Button registerButton = (Button) findViewById(R.id.buttonRegister);
        registerButton.setOnClickListener(new View.OnClickListener() {

            public void onClick(View v) {
                errorText.setVisibility(View.VISIBLE);

            }
        });
        Button resetButton = (Button) findViewById(R.id.buttonReset);
        resetButton.setOnClickListener(new View.OnClickListener() {

            public void onClick(View v) {
                errorText.setVisibility(View.INVISIBLE);

            }
        });



        }
}
