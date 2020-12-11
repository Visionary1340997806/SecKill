               if (deviceNum.equals("deviceNum") || ip.equals("ip")) return;
                        showHandWriteSignDialog();
                    } else if (globalData.getMeetingInfoBean().getIsHandwrittenSwitch() == 2) {
                        Intent intent = new Intent(SplashActivity.this, FaceSignActivity.class);
                        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                        startActivity(intent);
                    } else if (globalData.getMeetingInfoBean().getIsHandwrittenSwitch() == 3) {

                    } else {
                        showSignDialog();
                    }
                } else {
                    GlobalData.getInstance().getStatusBean().setSign(true);
                    gotoMainActivity();
                }
            } else {
                ToastHelper.showToast(this, "请正确设置ip和端口号等信息", 0);
            }

        });
    }


    private void showHandWriteSignDialog() {
        GlobalData globalData = GlobalData.getInstance();
        MeetingInfoBean bean = globalData.getMeetingInfoBean();
        if (bean == null) return;
        MeetingInfoBean.User user = bean.getUser();
        if (user == null) return;
        dialog = new HandWriteSignDialog(this, (view, signaturePad) -> signaturePad.clear(),
                (view, signaturePad) -> {
                    if (signaturePad.isEmpty()) {
                        return;
                    } else {
                        String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.CHINA).format(new Date());
                        String name;
                        if (GlobalData.getInstance().getMeetingInfoBean() != null && GlobalData.getInstance().getMeetingInfoBean().getUser() != null) {
                            name = GlobalData.getInstance().getMeetingInfoBean().getUser().getUsername();
                        } else {
                            name = "无名";
                        }
                        signPath = NetCommonDefine.FILE_PATH + File.separator + name + "_" + timeStamp;
                        WaitDialog.CreateWaitDialog(this, R.string.str_loading, true, true);
                        if (AppUtils.saveBitmap(signPath, signaturePad.getSignatureBitmap(), Bitmap.CompressFormat.PNG, 100)) {
                            String deviceNum = SharePerfenceUtils.getInstance().getString("deviceNum", "deviceNum");
                            if (deviceNum.equals("deviceNum")) return;
                            String filename = signPath + ".png";
                            File file = new File(filename);
                            Map<String, String> map = new HashMap<>();
                            map.put("deviceNum", deviceNum);
                            if (AppUtils.getFileName(filename) != null) {
                                map.put("fileName", AppUtils.getFileName(filename));
                                AppBus.uploadSignWithImg(file, AppUtils.getMimeType(file), map);
                            } else {
                                WaitDialog.CancelWaitDialog();
                                ToastHelper.showToast(this, "签到图片上传失败", 0);
                            }
                        } else {
                            WaitDialog.CancelWaitDialog();
                            ToastHelper.showToast(this, "签到图片上传失败", 0);
                        }
                    }
                })
                .setName(bean.getName())
                .setMan(user.getUsername())
                .setRoom(bean.getRoom_id())
                .setCompany(user.getCompany())
                .setWork(user.getRank())
                .setSignNum("")
                .setNum("")
                .shown();
        if (dialog.getWindow() != null) {
            WindowManager.LayoutParams dialogParams = dialog.getWindow().getAttributes();
            dialogParams.gravity = Gravity.CENTER;
            dialogParams.width = (int) (this.getResources().getDisplayMetrics().widthPixels * 0.70);
            dialogParams.height = (int) (dialogParams.width / 1.8);
            dialogParams.dimAmount = 0.3f;
            dialog.getWindow().setAttributes(dialogParams);
            dialog.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
        }
    }

    private void showSignDialog() {
        GlobalData globalData = GlobalData.getInstance();
        MeetingInfoBean bean = globalData.getMeetingInfoBean();
        if (bean == null) return;
        MeetingInfoBean.User user = bean.getUser();
        if (user == null) return;
        dialog1 = new SignDialog(this, view -> {
            WaitDialog.CreateWaitDialog(this, R.string.str_loading, true, true);
            AppBus.uploadSign();
        })
                .setName(bean.getName())
                .setMan(user.getUsername())
                .setRoom(bean.getRoom_id())
                .setCompany(user.getCompany())
                .setWork(user.getRank())
                .setSignNum("")
                .setNum("")
                .shown();
        if (dialog1.getWindow() != null) {
            WindowManager.LayoutParams dialogParams = dialog1.getWindow().getAttributes();
            dialogParams.gravity = Gravity.CENTER;
            dialogParams.width = (int) (this.getResources().getDisplayMetrics().widthPixels * 0.50);
            dialogParams.height = (int) (dialogParams.width / 1.8);
            dialogParams.dimAmount = 0.3f;
            dialog1.getWindow().setAttributes(dialogParams);
            dialog1.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
        }
    }

    private void gotoMainActivity() {
        Intent intent = new Intent(SplashActivity.this, MainActivity.class);
        startActivity(intent);
        finish();
        overridePendingTransition(R.anim.pre_in_anim, R.anim.pre_out_anim);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == permissionCode) {
            for (int i = 0; i < grantResults.length; i++) {
                if (permissions[i].equals(Manifest.permission.WRITE_EXTERNAL_STORAGE)) {
                    if (grantResults[i] != PackageManager.PERMISSION_GRANTED) {
                        Toast.makeText(this, R.string.toast_write_permission_denied, Toast.LENGTH_SHORT).show();
                        finish();
                        return;
                    } else {
                        AppUtils.createNormalFolder(this);
                    }
                } else if (permissions[i].equals(Manifest.permission.CAMERA)) {
                