package me.paranoid.jniexec;

/* loaded from: classes.dex */
final class a implements Runnable {
    final /* synthetic */ JNIExec a;

    a(JNIExec jNIExec) {
        this.a = jNIExec;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        JNIExec.a(this.a);
    }
}
