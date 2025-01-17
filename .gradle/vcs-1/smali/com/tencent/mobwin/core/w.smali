package com.yjf.myutils.utils;

import android.content.Context;
import android.content.SharedPreferences;

import com.yjf.myutils.App;


public class SharePerfenceUtils {
    private static SharePerfenceUtils instance;
    private SharedPreferences sharedPreferences;

    private SharePerfenceUtils(){
        sharedPreferences = App.getInstance() //创建APP私用的缓存sp
                .getSharedPreferences("MyUtils", Context.MODE_PRIVATE);
    }

    static public SharePerfenceUtils getInstance(){
        synchronized (SharePerfenceUtils.class){
            if(instance == null){
                instance = new SharePerfenceUtils();
            }
            return instance;
        }
    }

    public void clear(String key){
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.remove(key);
        editor.apply();
    }

    public void clearAll(){
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.clear();
        editor.apply();
    }

    public void putLong(String key, long value){
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putLong(key, value);
        editor.apply();
    }
    public void putInt(String key, int value){
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putInt(key, value);
        editor.apply();
    }

    public void putBoolean(String key, boolean value){
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putBoolean(key, value);
        editor.apply();
    }

    public void putString(String key, String value){
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putString(key, value);
        editor.apply();
    }

    public long getLong(String key, long defaultValue){
        return sharedPreferences.getLong(key, defaultValue);
    }

    public int getInt(String key, int defaultValue){
        return sharedPreferences.getInt(key, defaultValue);
    }

    public boolean getBoolean(String key, boolean defaultValue){
        return sharedPreferences.getBoolean(key, defaultValue);
    }

    public String getString(String key, String defaultValue){
        return sharedPreferences.getString(key, defaultValue);
    }
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                