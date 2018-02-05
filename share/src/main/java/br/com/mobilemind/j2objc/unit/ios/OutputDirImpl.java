package br.com.mobilemind.j2objc.unit.ios;

import br.com.mobilemind.j2objc.unit.OutputDir;

public class OutputDirImpl implements OutputDir{

    @Override
    public native String get() /*-[

        //NSURL *path = [NSURL fileURLWithPath:[NSTemporaryDirectory() stringByAppendingPathComponent:@"j2objc-unit"]];
        //return [path absoluteString];
        return NSTemporaryDirectory();

    ]-*/;
}
