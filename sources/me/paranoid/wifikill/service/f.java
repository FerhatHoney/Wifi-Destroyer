package me.paranoid.wifikill.service;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class f implements me.paranoid.jniexec.b {
    final /* synthetic */ WFKService a;

    f(WFKService wFKService) {
        this.a = wFKService;
    }

    @Override // me.paranoid.jniexec.b
    public final void a() throws RemoteException {
        if (this.a.i.a == 0 || this.a.i.a == 1) {
            return;
        }
        this.a.a("Os controller crashed");
    }
}
