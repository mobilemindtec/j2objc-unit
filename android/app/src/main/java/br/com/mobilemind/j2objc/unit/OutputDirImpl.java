package br.com.mobilemind.j2objc.unit;

import android.content.Context;

public class OutputDirImpl implements  OutputDir{

    private Context context;

    public OutputDirImpl(Context context){
        this.context = context;
    }

    @Override
    public String get() {
        return context.getCacheDir().getAbsolutePath();
    }
}
