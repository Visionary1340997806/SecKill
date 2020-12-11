package com.yjf.myutils.utils;

import android.content.Context;
import android.widget.Toast;

/**
 * Created by yjf
 * on 2020/7/30
 */
public class ToastHelper {
    public static Toast mToast = null;
    /**
     * 弹出Toast
     * @param context 上下文对象
     * @param text    提示的文本
     * @param duration 持续时间（0：短；1：长）
     */
    public static void showToast(Context context, String text, int duration) {
        if (mToast == null) {
            mToast = Toast.makeText(context, text, duration);
        } else {
            mToast.setText(text);
            mToast.setDuration(duration);
        }
        mToast.show();
    }
    /**
     *
     * 弹出Toast
     * @para