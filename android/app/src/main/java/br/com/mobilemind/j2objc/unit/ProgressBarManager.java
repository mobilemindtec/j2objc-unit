package br.com.mobilemind.j2objc.unit;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.view.View;

public class ProgressBarManager {

    private ProgressDialog progressDialog;
    private final Object progressSyncronize = new Object();
    private View mainView;
    private Context context;
    private Activity activity;
    private int resMessage;
    private String message;
    private String title;

    public ProgressBarManager(Context context, View mainView, int resMessage) {
        super();
        this.mainView = mainView;
        this.context = context;
        this.resMessage = resMessage;
    }

    public ProgressBarManager(Activity activity, View mainView, String message) {
        super();
        this.context = activity;
        this.activity = activity;
        this.mainView = mainView;
        this.message = message;
    }

    public ProgressBarManager(Activity activity, int resMessage) {
        super();
        this.context = activity;
        this.activity = activity;
        this.message = message;
    }

    public ProgressBarManager setMessage(String message) {
        this.message = message;
        return this;
    }

    public ProgressBarManager setTitle(String title) {
        this.title = title;
        return this;
    }

    public void openProgressDialog() {
        synchronized (this.progressSyncronize) {
            if (this.progressDialog == null) {
                this.progressDialog = this.createProgressDialog();
            }
        }

    }

    public boolean isOpeneed() {
        synchronized (this.progressSyncronize) {
            if (this.progressDialog == null) {
                return this.progressDialog.isShowing();
            }
        }
        return false;
    }

    public void closeProgressDialog() {
        this.post(new Runnable() {
            @Override
            public void run() {
                synchronized (progressSyncronize) {
                    if (progressDialog != null) {
                        progressDialog.dismiss();
                        progressDialog = null;
                    }
                }
            }
        });
    }

    public ProgressDialog createProgressDialog() {

        if (title == null || "".equals(title.trim())) {
            title = "Loading...";
        }

        if (message == null && this.resMessage > 0) {
            message = context.getString(this.resMessage);
        }
        return ProgressDialog.show(context, title, message, true, false);
    }

    public void post(Runnable run) {
        if (activity != null) {
            activity.runOnUiThread(run);
        } else {
            this.mainView.post(run);
        }
    }

    public void addMessage(final String message) {
        this.post(new Runnable() {
            @Override
            public void run() {
                if (progressDialog != null) {
                    progressDialog.setMessage(message);
                }
            }
        });
    }
}