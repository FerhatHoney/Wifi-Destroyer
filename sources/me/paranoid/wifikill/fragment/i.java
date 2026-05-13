package me.paranoid.wifikill.fragment;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.RemoteException;
import android.text.Html;
import me.paranoid.wifikill.WiFiKill;

/* loaded from: classes.dex */
final class i extends AsyncTask<Object, Object, Boolean> {
    final /* synthetic */ h a;
    private int b;
    private boolean c = false;
    private boolean d = false;

    public i(h hVar, int r3) {
        this.a = hVar;
        this.b = 0;
        this.b = r3;
    }

    public final int a() {
        me.paranoid.a.c.a("---");
        this.c = true;
        while (!this.d) {
            // spin wait
        }
        return this.b;
    }

    @Override // android.os.AsyncTask
    protected final Boolean doInBackground(Object... objArr) {
        // SharedPreferences (Hafıza) erişimi için Fragment'tan Context alınıyor
        Context context = this.a.getActivity();
        SharedPreferences prefs = null;
        if (context != null) {
            prefs = context.getSharedPreferences("WiFiKill_Whitelist", Context.MODE_PRIVATE);
        }

        while (!this.c && this.b < this.a.a.size()) {
            me.paranoid.wifikill.service.a aVar = (me.paranoid.wifikill.service.a) this.a.a.get(this.b);

            // =========================================================
            // BEYAZ LİSTE (WHITELIST) KONTROLÜ
            // =========================================================
            if (prefs != null && prefs.getBoolean(aVar.b, false)) {
                // Eğer cihazın MAC adresi (aVar.b) beyaz listedeyse,
                // hiçbir işlem yapmadan bir sonraki cihaza atla!
                this.b++;
                continue;
            }
            // =========================================================

            publishProgress(aVar.a, Integer.valueOf((this.b * 100) / this.a.a.size()));
            switch (this.a.c) {
                case 0:
                    WiFiKill.a(aVar.a);
                    break;
                case 1:
                    WiFiKill.b(aVar.a);
                    break;
                case 2:
                    WiFiKill.c(aVar.a);
                    break;
                case 3:
                    WiFiKill.d(aVar.a);
                    break;
            }
            this.b++;
        }
        this.d = true;
        return Boolean.valueOf(this.c);
    }

    @Override // android.os.AsyncTask
    protected final void onPostExecute(Boolean obj) {
        me.paranoid.a.c.a("---");
        if (obj.booleanValue()) {
            return;
        }
        me.paranoid.a.c.a("---");
        try {
            this.a.dismiss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.os.AsyncTask
    protected final void onProgressUpdate(Object... objArr) {
        String str;
        String str2 = (String) objArr[0];
        Integer num = (Integer) objArr[1];
        switch (this.a.c) {
            case 0:
                str = "Attaching to: <b>" + str2 + "</b>";
                break;
            case 1:
                str = "Killing: <b>" + str2 + "</b>";
                break;
            case 2:
                str = "Reviving: <b>" + str2 + "</b>";
                break;
            case 3:
                str = "Detaching from: <b>" + str2 + "</b>";
                break;
            default:
                str = "";
                break;
        }
        this.a.e.setText(Html.fromHtml(str));
        this.a.f.setProgress(num.intValue());
    }
}