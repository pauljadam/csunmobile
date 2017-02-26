package com.example.pauladam.linkbadandroid;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        TextView register =(TextView)findViewById(R.id.register);
        register.setClickable(true);
        register.setMovementMethod(LinkMovementMethod.getInstance());
        String text = "<a href=\"http://www.google.com/\">Click Here</a> to Register | <a href=\"http://www.apple.com\">Click Here</a> If You Forgot User ID or Password";
        register.setText(Html.fromHtml(text));

    }
}
