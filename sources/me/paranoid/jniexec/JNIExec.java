package me.paranoid.jniexec;

import android.util.Log;
import java.io.BufferedReader;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Date;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class JNIExec {
    public int a;
    public int b;
    private int[] c;
    private FileInputStream d;
    private FileOutputStream e;
    private BufferedReader f;
    private b g;
    private Runnable h;
    private boolean i;

    static {
        System.loadLibrary("JNIExec");
    }

    public JNIExec() {
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = false;
        this.a = 512;
        this.b = -1;
        if (b()) {
            return;
        }
        this.c = null;
    }

    public JNIExec(b bVar) {
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = false;
        this.a = 512;
        this.b = -1;
        if (!b()) {
            this.c = null;
            return;
        }
        this.g = bVar;
        if (bVar != null) {
            this.h = new a(this);
        }
    }

    public static int a(String str) {
        Log.d("JNIExec", new Exception().getStackTrace()[0].getMethodName() + ": (" + str + ") start");
        int[] r2 = exec(str.toCharArray());
        if (r2 == null) {
            return -2;
        }
        try {
            a(r2).write((str + "; exit $?\n").getBytes());
            int r0 = waitFor(r2[2], 0);
            b(r2);
            return r0;
        } catch (IOException e) {
            e.printStackTrace();
            b(r2);
            return -2;
        }
    }

    private static FileOutputStream a(int[] r2) {
        return new FileOutputStream(setFD(r2[0]));
    }

    static /* synthetic */ void a(JNIExec jNIExec) throws InterruptedException {
        Log.d("JNIExec", "polling: " + jNIExec.b);
        while (true) {
            try {
                int r0 = waitFor(jNIExec.b, 1);
                jNIExec.a = r0;
                if (r0 != 512) {
                    break;
                } else {
                    Thread.sleep(200L);
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        Log.d("JNIExec", "STATUS = " + jNIExec.a);
        if (jNIExec.g == null || jNIExec.i) {
            return;
        }
        b bVar = jNIExec.g;
        int r1 = jNIExec.b;
        bVar.a();
    }

    private static void b(int[] r2) {
        if (r2 == null) {
            return;
        }
        waitFor(r2[2], 1);
        close_fd(r2[0]);
        close_fd(r2[1]);
    }

    private boolean b() {
        this.c = exec("su".toCharArray());
        if (this.c == null) {
            return false;
        }
        this.d = new FileInputStream(setFD(this.c[1]));
        this.e = a(this.c);
        this.b = this.c[2];
        this.f = new BufferedReader(new InputStreamReader(this.d));
        return true;
    }

    public static native void close_fd(int r0);

    public static native int[] exec(char[] cArr);

    public static native FileDescriptor setFD(int r0);

    public static native int waitFor(int r0, int r1);

    public final String a(int r8) {
        long time = new Date().getTime();
        if (this.f == null) {
            return null;
        }
        while (r8 > 0) {
            try {
                if (this.f.ready()) {
                    break;
                }
                if (new Date().getTime() - time > r8) {
                    throw new TimeoutException();
                }
                try {
                    Thread.sleep(50L);
                } catch (InterruptedException e) {
                }
            } catch (IOException e2) {
                e2.printStackTrace();
                return null;
            }
        }
        return this.f.readLine();
    }

    public final void a() {
        this.i = true;
    }

    public final boolean b(String str) {
        if (this.c == null) {
            return false;
        }
        try {
            this.e.write(str.getBytes());
            this.e.flush();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public final boolean c(String str) {
        Log.d("JNIExec", "jexec: [" + str + "]");
        if (this.c == null) {
            Log.d("JNIExec", "jexec: not initialized");
            return false;
        }
        try {
            this.e.write(new String(str + "; exit $?\n").getBytes());
            if (this.h != null) {
                new Thread(this.h).start();
            }
            return waitFor(this.b, 1) == 512;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }
}
