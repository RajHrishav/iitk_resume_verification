package com.example.ibnahmad.healthcalculator;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import android.net.Uri;
public class MainActivity extends AppCompatActivity implements View.OnClickListener{

    private TextView mBMITextView, mHeartRateTextView,mbtn_stepCounter,mWater_alarm,mbtnDiet_tips,mDoctor;
    private EditText et1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mBMITextView = findViewById(R.id.bmi_text_view);
        mBMITextView.setOnClickListener(this);

        mHeartRateTextView = findViewById(R.id.heart_rate_text_view);
        mHeartRateTextView.setOnClickListener(this);

        mbtn_stepCounter = findViewById(R.id.btn_stepCounter);
        mbtn_stepCounter.setOnClickListener(this);

        mWater_alarm = findViewById(R.id.btn_nextApp);
        mWater_alarm.setOnClickListener(this);

        mbtnDiet_tips=findViewById(R.id.btn_dietTips);
        mbtnDiet_tips.setOnClickListener(this);

        mDoctor=findViewById(R.id.btn_doctor);
        mDoctor.setOnClickListener(this);

        et1=findViewById(R.id.et_loc);


    }

    @Override
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.bmi_text_view:
                Intent startBMIActivity = new Intent(MainActivity.this, BMIActivity.class);
                startActivity(startBMIActivity);
                break;
            case R.id.heart_rate_text_view:
                Intent startHeartRateActivity = new Intent(MainActivity.this, HeartRatesActivity.class);
                startActivity(startHeartRateActivity);
                break;

            case R.id.btn_stepCounter:
                Intent startStepCounterActivity = getPackageManager().getLaunchIntentForPackage("edu.uw.daisyi.steptracker");
	            startActivity(startStepCounterActivity);
                break;
            case R.id.btn_nextApp:
                Intent i =getPackageManager().getLaunchIntentForPackage("com.example.anubhabmajumdar.hydrationapp");
                if(i!=null)
                    startActivity(i);
                else
                    Toast.makeText(MainActivity.this,"null",Toast.LENGTH_LONG).show();
                break;
            case R.id.btn_dietTips:
                Intent intnt_dietTips =new Intent(this,HealthTipActivity.class);
                startActivity(intnt_dietTips);
                break;

            case R.id.btn_doctor:
                Intent intent=new Intent(Intent.ACTION_VIEW);
                intent.setData(Uri.parse("https://www.google.com/search?q=doctors "+"in "+et1.getText().toString().trim()+" &aqs=chrome..69i57j0l7.10191j0j7&sourceid=chrome&ie=UTF-8"));
                startActivity(intent);

                break;

        }
    }
}
