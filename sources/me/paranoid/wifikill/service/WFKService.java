package me.paranoid.wifikill.service;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.format.Formatter;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeoutException;
import me.paranoid.jniexec.JNIExec;
import me.paranoid.wifikill.R;
import me.paranoid.wifikill.WiFiKill;

/* loaded from: classes.dex */
public class WFKService extends Service {
    private NotificationManager d;
    private int e = 31337;
    private ArrayList f = new ArrayList();
    private Activity g = null;
    private JNIExec h = null;
    private JNIExec i = null;
    private int j = -1;
    private i k = null;
    public ArrayList a = new ArrayList();
    public boolean b = false;
    final Messenger c = new Messenger(new g(this));

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int r4, Object obj) throws RemoteException {
        for (int size = this.f.size() - 1; size >= 0; size--) {
            try {
                ((Messenger) this.f.get(size)).send(Message.obtain(null, r4, obj));
            } catch (RemoteException e) {
                this.f.remove(size);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) throws RemoteException {
        me.paranoid.a.c.a("error=" + str);
        if (this.k != null) {
            this.k.a = true;
            this.k.interrupt();
            try {
                this.k.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        JNIExec.a("iptables -D FORWARD -j ACCEPT && iptables -t nat -D POSTROUTING -j MASQUERADE");
        this.a.clear();
        a(4, str);
        stopSelf();
    }

    static /* synthetic */ void a(WFKService wFKService, Runnable runnable) {
        if (wFKService.g == null) {
            runnable.run();
        } else {
            wFKService.g.runOnUiThread(runnable);
        }
    }

    static /* synthetic */ void a(WFKService wFKService, a aVar) throws RemoteException {
        me.paranoid.a.c.a("---");
        wFKService.a(aVar);
        wFKService.h.b("1" + aVar.a + "\n");
        aVar.e |= 1;
        wFKService.a(107, aVar);
    }

    static /* synthetic */ void a(WFKService wFKService, boolean z) {
        me.paranoid.a.c.a("---");
        wFKService.h.b(z ? "r\n" : "R\n");
    }

    private void a(a aVar) {
        this.i.b("iptables -D FORWARD -s " + aVar.a + " -p tcp -j REJECT --reject-with tcp-reset\n");
        this.i.b("iptables -D FORWARD -s " + aVar.a + " -p udp -j REJECT --reject-with icmp-port-unreachable\n");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(String str) throws IOException {
        String line = null;
        File file = new File(getApplicationContext().getFilesDir().getPath() + "/devices/" + str);
        if (!file.exists()) {
            return null;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            line = bufferedReader.readLine();
            bufferedReader.close();
            return line;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return line;
        } catch (IOException e2) {
            e2.printStackTrace();
            return line;
        }
    }

    static /* synthetic */ a b(WFKService wFKService, String str) {
        Iterator it = wFKService.a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.a.equals(str)) {
                return aVar;
            }
        }
        return null;
    }

    static /* synthetic */ void b(WFKService wFKService) {
        Notification notification = new Notification(R.drawable.icon, "WiFiKill", System.currentTimeMillis());
        notification.setLatestEventInfo(wFKService, "WiFiKill", "is running", PendingIntent.getActivity(wFKService, 0, new Intent(wFKService, (Class<?>) WiFiKill.class), 0));
        notification.flags |= 2;
        wFKService.startForeground(wFKService.e, notification);
    }

    static /* synthetic */ void b(WFKService wFKService, a aVar) throws RemoteException {
        me.paranoid.a.c.a("---");
        wFKService.h.b("0" + aVar.a + "\n");
        wFKService.a(aVar);
        aVar.e = 0;
        wFKService.a(107, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v17, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r1v23, types: [boolean] */
    static /* synthetic */ void c(WFKService wFKService) throws RemoteException {
        ?? Contains;
        String str = wFKService.getApplicationContext().getFilesDir().getPath() + "/wfk";
        me.paranoid.a.c.a("begin");
        if (wFKService.k == null) {
            if (!new File(str).exists()) {
                wFKService.a("Binary file not present!");
            }
            JNIExec.a("chmod 777 " + str);
            JNIExec.a("iptables -F; iptables -X && iptables -t nat -F; iptables -t nat -Xiptables -P FORWARD ACCEPT && iptables -I FORWARD -j ACCEPT && iptables -t nat -I POSTROUTING -j MASQUERADE &&echo 1 > /proc/sys/net/ipv4/ip_forward");
            wFKService.h = new JNIExec(new e(wFKService));
            wFKService.i = new JNIExec(new f(wFKService));
            JNIExec jNIExec = wFKService.h;
            jNIExec.c(str + " -g " + Formatter.formatIpAddress(((WifiManager) wFKService.getApplicationContext().getSystemService("wifi")).getDhcpInfo().gateway) + " " + me.paranoid.a.c.a(wFKService.getApplicationContext()));
            ?? A = null;
            JNIExec jNIExec2 = jNIExec;
            while (true) {
                try {
                    jNIExec2 = A;
                    A = wFKService.h.a(0);
                } catch (TimeoutException e) {
                    e.printStackTrace();
                    A = jNIExec2;
                }
                if (A != null && A.startsWith("ERROR")) {
                    wFKService.a(A.substring(8));
                    return;
                }
                me.paranoid.a.c.a("read: " + A);
                if (A == null || (Contains = A.contains("PID")) != 0) {
                    break;
                } else {
                    jNIExec2 = Contains;
                }
            }
            if (A == null) {
                wFKService.a("Unable to start service, do you have root?");
                return;
            }
            wFKService.j = Integer.parseInt(A.split("PID ")[1]);
            wFKService.k = new i(wFKService);
            wFKService.k.start();
        }
    }

    static /* synthetic */ void c(WFKService wFKService, a aVar) throws RemoteException {
        me.paranoid.a.c.a("---");
        wFKService.i.b("iptables -I FORWARD -s " + aVar.a + " -p tcp -j REJECT --reject-with tcp-reset\n");
        wFKService.i.b("iptables -I FORWARD -s " + aVar.a + " -p udp -j REJECT --reject-with icmp-port-unreachable\n");
        aVar.e |= 2;
        wFKService.a(107, aVar);
    }

    static /* synthetic */ void d(WFKService wFKService, a aVar) throws RemoteException {
        me.paranoid.a.c.a("---");
        int r0 = 3;
        while (true) {
            int r1 = r0 - 1;
            if (r0 <= 0) {
                aVar.e &= -3;
                wFKService.a(107, aVar);
                return;
            } else {
                wFKService.a(aVar);
                r0 = r1;
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        me.paranoid.a.c.a("---");
        return this.c.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        this.d = (NotificationManager) getSystemService("notification");
    }

    @Override // android.app.Service
    public void onDestroy() {
        me.paranoid.a.c.a("---");
        stopForeground(true);
        this.d.cancel(this.e);
        me.paranoid.a.c.a(this, "WiFiKill service stopped");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int r3, int r4) {
        return 2;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        me.paranoid.a.c.a("---");
        this.g = null;
        return true;
    }
}
