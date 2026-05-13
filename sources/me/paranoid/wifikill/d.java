package me.paranoid.wifikill;

import android.os.RemoteException;
import android.view.View;

/* loaded from: classes.dex */
final class d implements View.OnClickListener {
    final /* synthetic */ WiFiKill a;

    d(WiFiKill wiFiKill) {
        this.a = wiFiKill;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws RemoteException {
        WiFiKill.a.a(5, (Object) false);
        me.paranoid.a.c.a(WiFiKill.n, "scan interrupted - user request");
    }
}
