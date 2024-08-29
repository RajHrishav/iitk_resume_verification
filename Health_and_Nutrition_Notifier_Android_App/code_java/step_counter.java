package com.example.ibnahmad.healthcalculator;

import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;
import android.widget.Toast;

public class step_counter extends AppCompatActivity implements SensorEventListener {

    SensorManager sensorManager;
    TextView tv_steps;
    boolean running=false;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_step_counter);

        tv_steps = findViewById(R.id.tv_steps);
        sensorManager = (SensorManager) getSystemService(Context.SENSOR_SERVICE);

        Intent startStepCounterActivity = getIntent();
        String x=startStepCounterActivity.getStringExtra("_key");
       /* if (sensorEvent!= null){
            float x_acceleration = sensorEvent.values[0];
            float y_acceleration = sensorEvent.values[1];
            float z_acceleration = sensorEvent.values[2];

            double Magnitude = Math.sqrt(x_acceleration*x_acceleration + y_acceleration*y_acceleration + z_acceleration*z_acceleration);
            double MagnitudeDelta = Magnitude – MagnitudePrevious;
            MagnitudePrevious = Magnitude;*/

    }

    @Override
    protected void onResume() {
        super.onResume();
        running=true;
        Sensor countSensor = sensorManager.getDefaultSensor(Sensor.TYPE_STEP_COUNTER);
        if(countSensor !=null) {
            sensorManager.registerListener(this, countSensor, SensorManager.SENSOR_DELAY_UI);

        }   else
            {
                //Toast.makeText(this,"Sensor not found",Toast.LENGTH_SHORT).show();
                tv_steps.setText("null");

            }

    }

    @Override
    protected void onPause() {
        super.onPause();
        running = false;
        //if you are unregister then your hardware will stop detecting steps;
        //sensorManager.unregisterListener(this);
    }

    @Override
    public void onSensorChanged(SensorEvent event) {
        if(running)
        {
            tv_steps.setText(String.valueOf(event.values[0]));
        }

    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {

    }
}


