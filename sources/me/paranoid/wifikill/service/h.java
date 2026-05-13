package me.paranoid.wifikill.service;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class h extends Thread {
    final /* synthetic */ g a;

    h(g gVar) {
        this.a = gVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws RemoteException {
        try {
            sleep(100L);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        if (this.a.a.h != null) {
            this.a.a.h.a();
        }
        if (this.a.a.i != null) {
            this.a.a.i.a();
        }
        this.a.a.a((String) null);
    }
}
