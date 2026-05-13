package me.paranoid.wifikill;

import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import me.paranoid.wifikill.service.WFKService;

/* loaded from: classes.dex */
final class i extends Handler {
    final /* synthetic */ g a;

    i(g gVar) {
        this.a = gVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) throws RemoteException {
        me.paranoid.a.c.a("msg = " + message);
        switch (message.what) {
            case 1:
                this.a.a = (WFKService) message.obj;
                this.a.b.c();
                break;
            case 4:
                if (this.a.b.m != null) {
                    this.a.b.m.dismiss();
                }
                me.paranoid.a.c.a("service stop obj=" + message.obj);
                if (message.obj != null) {
                    me.paranoid.a.c.a(WiFiKill.n, "Service error", message.obj.toString());
                }
                this.a.b.b();
                break;
            case 5:
                int r0 = ((Integer) message.obj).intValue();
                if (r0 >= 0 && r0 <= 100) {
                    this.a.b.a(r0);
                    break;
                } else {
                    this.a.b.e();
                    break;
                }
                break;
            case 106:
                WiFiKill.b.notifyDataSetChanged();
                WiFiKill.b.c();
                this.a.b.h.a();
                break;
            case 107:
                WiFiKill.b.c();
                if (this.a.b.i == null) {
                    this.a.b.i = (me.paranoid.wifikill.fragment.a) this.a.b.getFragmentManager().findFragmentById(R.id.details);
                }
                if (this.a.b.i != null) {
                    try {
                        this.a.b.i.b();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                this.a.b.h.a();
                break;
            default:
                me.paranoid.a.c.a("ignoring uninteresting message\n");
                break;
        }
    }
}
