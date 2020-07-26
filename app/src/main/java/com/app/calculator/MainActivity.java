package com.app.calculator;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.navigation.NavigationView;
import com.google.android.material.snackbar.Snackbar;

public class MainActivity extends BaseActivity implements View.OnClickListener, NavigationView.OnNavigationItemSelectedListener {

    TextView edtNum, disText;
    Button add, subtract, multiply, divide, root, mod, dot, calculate, clear, log, zero, one, two, three, four, five, six, seven, eight, nine;
    String str;
    double num1, num2, i=0, number, secondNumber;
    CompoundButton darkMode;
    SharedPreferences sharedPreferences;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        edtNum = findViewById(R.id.number);
//        disText = findViewById(R.id.text);
        str = "\0";
        num1 = num2 = 0;
        calculate = findViewById(R.id.buttonEquals);

        edtNum.setMovementMethod(new ScrollingMovementMethod());

        zero = findViewById(R.id.button0);
        zero.setOnClickListener(this);
        one = findViewById(R.id.button1);
        one.setOnClickListener(this);
        two = findViewById(R.id.button2);
        two.setOnClickListener(this);
        three = findViewById(R.id.button3);
        three.setOnClickListener(this);
        four = findViewById(R.id.button4);
        four.setOnClickListener(this);
        five = findViewById(R.id.button5);
        five.setOnClickListener(this);
        six = findViewById(R.id.button6);
        six.setOnClickListener(this);
        seven = findViewById(R.id.button7);
        seven.setOnClickListener(this);
        eight = findViewById(R.id.button8);
        eight.setOnClickListener(this);
        nine = findViewById(R.id.button9);
        nine.setOnClickListener(this);
        dot = findViewById(R.id.buttonDot);
        dot.setOnClickListener(this);

        add = findViewById(R.id.plus);
        add.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                String str1 = edtNum.getText().toString();
                if (str.equals("\0"))
                    str = str1 + " + ";
                else
                    str = str + str1 + " + ";
                try{
                    num1 = num1 + Double.parseDouble(str1);
                }catch(NumberFormatException ex){
                    num1 = num1+0;
                }
                edtNum.setText(str);
                //edtNum.setText("");
                edtNum = findViewById(R.id.number);
                disText = findViewById(R.id.text);
                i = 1;
            }
        });

        subtract = findViewById(R.id.subtract);
        subtract.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                String str1 = edtNum.getText().toString();
                if (str.equals("\0"))
                    str = str1 + " - ";
                else
                    str = str + str1 + " - ";
                try{
                    num2 = Integer.parseInt(str1);
                }catch(NumberFormatException ex){
                    num2 = 0;
                }
                if (num1 == 0)
                    num1 = num2;
                else
                    num1 = num1 - num2;
                disText.setText(str);
                edtNum.setText("");
                edtNum = findViewById(R.id.number);
                disText = findViewById(R.id.text);
                i = 2;
            }
        });

        multiply = findViewById(R.id.multiply);
        multiply.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                String str1 = edtNum.getText().toString();
                if (str.equals("\0"))
                    str = str1 + " x ";
                else
                    str = str + str1 + " x ";
                try{
                    num2 = Double.parseDouble(str1);
                }catch(NumberFormatException ex){
                    num2 = 1;
                }
                if (num1 == 0)
                    num1 = num2;
                else
                    num1 = num1 * num2;
//                disText.setText(str);
                edtNum.setText("");
                edtNum = findViewById(R.id.number);
//                disText = findViewById(R.id.text);
                i = 3;
            }
        });

        divide = findViewById(R.id.divide);
        divide.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                String str1 = edtNum.getText().toString();
                if (str.equals("\0"))
                    str = str1 + " ÷ ";
                else
                    str = str + str1 + " ÷ ";
                try{
                    num2 = Double.parseDouble(str1);
                }catch(NumberFormatException ex){
                    secondNumber = 1;
                }
                if (num1 == 0)
                    num1 = num2;
                else
                    num1 = num1 / num2;
//                disText.setText(str);
                edtNum.setText("");
                edtNum = findViewById(R.id.number);
//                disText = findViewById(R.id.text);
                i = 4;
            }
        });

//        mod = findViewById(R.id.mod);
//        mod.setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View v) {
//                String str1 = edtNum.getText().toString();
//                if (str == "\0")
//                    str = str1 + " % ";
//                else
//                    str = str + str1 + " % ";
//                try{
//                    num2 = Double.parseDouble(str1);
//                }catch(NumberFormatException ex){
//                    num2 = 0;
//                }
//                if (num1 == 0)
//                    num1 = num2;
//                else
//                    num1 = num1 % num2;
//                disText.setText(str);
//                edtNum.setText("");
//                edtNum = findViewById(R.id.number);
//                disText = findViewById(R.id.text);
//                i = 5;
//            }
//        });
//
//        root = findViewById(R.id.root);
//        root.setOnClickListener(new View.OnClickListener() {
//            public void onClick(View v) {
//                disText.setText(" √  ");
//                edtNum.setText("");
//                edtNum = findViewById(R.id.number);
//                disText = findViewById(R.id.text);
//                i = 6;
//            }
//        });
//
//        log = findViewById(R.id.log);
//        log.setOnClickListener(new View.OnClickListener() {
//            public void onClick(View v) {
//                edtNum.setText("");
//                disText.setText("log(");
//                edtNum = findViewById(R.id.number);
//                disText = findViewById(R.id.text);
//                i = 7;
//            }
//        });

        clear = findViewById(R.id.clearText);
        clear.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {

                String str = edtNum.getText().toString();
                if(str.length() <= 0) {
                    edtNum.setText("");
                    edtNum = findViewById(R.id.number);
//                    disText.setText("");
//                    disText = findViewById(R.id.text);
                }
                else {
                    str = str.substring(0, str.length() - 1);
                    edtNum.setText(str);
                }
            }
        });

        clear = findViewById(R.id.clearText);
        clear.setOnLongClickListener(new View.OnLongClickListener() {
            public boolean onLongClick(View v) {

                edtNum.setText("");
                edtNum = findViewById(R.id.number);
//                disText.setText("");
//                disText = findViewById(R.id.text);
                num1 = num2 = 0;
                str = "\0";
                return true;

            }
        });

        calculate = findViewById(R.id.buttonEquals);
        calculate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (i == 1) {
                    String str1 = edtNum.getText().toString();
                    str = str + str1;
                    try{
                        num1 = num1+Double.parseDouble(str1);
                    }catch(NumberFormatException ex){
                        num1 = num1 + 0;
                    }
//                    disText.setText(str);
                    if (num1 % 1 == 0)
                        edtNum.setText((int)num1 + "");
                    else {
                        double answer = Math.round(num1 * 100000) / 100000.0;
                        edtNum.setText(answer + "");
                    }
                    num1 = num2 =0;
                    str = "\0";
                }

                else if (i == 2) {

                    String str1 = edtNum.getText().toString();
                    str = str + str1;
                    try{
                        num1 = num1-Integer.parseInt(str1);
                    }catch(NumberFormatException ex){
                        num1 = num1-0;
                    }
//                    disText.setText(str);
                    if (num1 % 1 == 0)
                        edtNum.setText((int)num1 + "");
                    else {
                        double answer = Math.round(num1 * 100000) / 100000.0;
                        edtNum.setText(answer + "");
                    }
                    num1 = num2 =0;
                    str = "\0";

                }

                else if (i == 3) {

                    String str1 = edtNum.getText().toString();
                    str = str + str1;
                    try{
                        num1 = num1*Double.parseDouble(str1);
                    }catch(NumberFormatException ex){
                        num1 = num1*1;
                    }
//                    disText.setText(str);
                    if (num1 % 1 == 0)
                        edtNum.setText((int)num1 + "");
                    else {
                        double answer = Math.round(num1 * 100000) / 100000.0;
                        edtNum.setText(answer + "");
                    }
                    num1 = num2 =0;
                    str = "\0";

                }

                else if (i == 4) {

                    String str1 = edtNum.getText().toString();
                    str = str + str1;
                    try{
                        num1 = num1/Double.parseDouble(str1);
                    }catch(NumberFormatException ex){
                        num1 = num1/1;
                    }
//                    disText.setText(str);
                    if (num1 % 1 == 0)
                        edtNum.setText((int)num1 + "");
                    else {
                        double answer = Math.round(num1 * 100000) / 100000.0;
                        edtNum.setText(answer + "");
                    }
                    num1 = num2 = 0;
                    str = "\0";
                }

                else if (i == 5) {

                    String str1 = edtNum.getText().toString();
                    str = str + str1;
                    try{
                        num1 = num1 % Double.parseDouble(str1);
                    }catch(NumberFormatException ex){
                        num1 = num1 / 1;
                    }
//                    disText.setText(str);
                    if (num1 % 1 == 0)
                        edtNum.setText((int)num1 + "");
                    else {
                        double answer = Math.round(num1 * 100000) / 100000.0;
                        edtNum.setText(answer + "");
                    }
                    num1 = num2 = 0;
                    str = "\0";
                }

                else if (i == 6) {
                    str = edtNum.getText().toString();
//                    disText.setText(" √ " + str);
                    try {
                        num1 = Double.parseDouble(str);
                    } catch (NumberFormatException ex) {
                        num1 = 0;
                    }
                    num2 = Math.sqrt(num1);
                    if (num2 % 1 == 0)
                        edtNum.setText((int)num2 + "");
                    else {
                        double answer = Math.round(num2 * 100000) / 100000.0;
                        edtNum.setText(answer + "");
                    }
                    num1 = num2 = 0;
                    str = "\0";
                }

                else if (i == 7) {
                    str = edtNum.getText().toString();
//                    disText.setText("log(" + str + ")");
                    try{
                        num1 = Integer.parseInt(edtNum.getText().toString());
                    }catch(NumberFormatException ex){
                        num1 = 0;
                    }
                    num2 = Math.log10(num1);
                    edtNum.setText(num2 + "");
                    num1 = num2 = 0;
                    str = "\0";
                }
            }
        });


    }

    @Override
    public void onClick(View v) {
        String str = edtNum.getText().toString();
        switch (v.getId()){
            case R.id.button0:
                str = str + "0";
                break;
            case R.id.button1:
                str = str + "1";
                break;
            case R.id.button2:
                str = str + "2";
                break;
            case R.id.button3:
                str = str + "3";
                break;
            case R.id.button4:
                str = str + "4";
                break;
            case R.id.button5:
                str = str + "5";
                break;
            case R.id.button6:
                str = str + "6";
                break;
            case R.id.button7:
                str = str + "7";
                break;
            case R.id.button8:
                str = str + "8";
                break;
            case R.id.button9:
                str = str + "9";
                break;
        }
        edtNum.setText(str);
    }


    @Override
    public boolean onNavigationItemSelected(@NonNull MenuItem item) {
//        switch (item.getItemId()) {
//            case R.id.nav_item1:
//                darkMode = findViewById(R.id.darkMode);
//                sharedPreferences = getSharedPreferences("theme_pref", Context.MODE_PRIVATE);
//                String currentTheme = sharedPreferences.getString("current_theme", "light");
//
//                final SharedPreferences mPreferences;
//                mPreferences = getSharedPreferences("theme_pref", MODE_PRIVATE);
//                @SuppressLint("CommitPrefEdits") final SharedPreferences.Editor preferencesEditor = mPreferences.edit();
//
//                if(currentTheme.equals("light")){
//                    darkMode.setChecked(false);
//                } else {
//                    darkMode.setChecked(true);
//                }
//
//                darkMode.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
//                    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
//                        if (isChecked){
//                            preferencesEditor.putString("current_theme", "dark").apply();
//                        } else {
//                            preferencesEditor.putString("current_theme", "light").apply();
//                        }
//                        MainActivity.this.recreate();
//                    }
//                });
//        }
//        drawer.closeDrawer(GravityCompat.START);
        int id = item.getItemId();

        if (id == R.id.darkMode) {
           darkMode.setChecked(!darkMode.isChecked());
            Snackbar.make(item.getActionView(), (darkMode.isChecked()) ? "is checked" : "not checked", Snackbar.LENGTH_SHORT).setAction("Action", null).show();
        }

        DrawerLayout drawer = (DrawerLayout) findViewById(R.id.drawer_layout);
        drawer.closeDrawer(GravityCompat.START);
        return true;
        //return false;
    }
}
