package me.paranoid.wifikill;

import android.app.ActionBar;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.FragmentTransaction;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.RemoteException;
import android.preference.PreferenceManager;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SearchView;
import com.google.ads.AdView;
import java.util.Iterator;
import me.paranoid.wifikill.fragment.DevicesFragment;
import me.paranoid.wifikill.fragment.StatusBarFragment;

/* loaded from: classes.dex */
public class WiFiKill extends Activity {
    private static Context n;
    private static SharedPreferences q;
    private static SharedPreferences r;
    private ActionBar e;
    private boolean f = false;
    private ProgressBar g = null;
    private StatusBarFragment h = null;
    private me.paranoid.wifikill.fragment.a i = null;
    private DevicesFragment j = null;
    private Menu k = null;
    private SearchView l = null;
    private ProgressDialog m = null;
    private PowerManager.WakeLock o;
    private AdView p;
    private static final String d = null;
    public static g a = null;
    public static a b = null;
    public static boolean c = true;

    public static SharedPreferences a() {
        return r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int r5) {
        me.paranoid.a.c.a("progress:" + r5 + " / av=" + this.k.findItem(R.id.menu_refresh).getActionView());
        if (this.k.findItem(R.id.menu_refresh).getActionView() == null) {
            LinearLayout linearLayout = new LinearLayout(n);
            linearLayout.setPadding(8, 8, 8, 8);
            linearLayout.addView(new ProgressBar(n));
            linearLayout.setOnClickListener(new d(this));
            this.k.findItem(R.id.menu_refresh).setActionView(linearLayout);
        }
        if (this.g == null) {
            this.g = (ProgressBar) findViewById(R.id.search_progress);
        }
        if (this.g.getAnimation() == null || ((!this.g.getAnimation().hasStarted() || this.g.getAnimation().hasEnded()) && this.g.getVisibility() != 0)) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(500L);
            alphaAnimation.setFillAfter(true);
            alphaAnimation.setAnimationListener(new e(this));
            this.g.startAnimation(alphaAnimation);
        }
        this.g.setProgress(r5);
    }

    public static void a(String str) throws RemoteException {
        me.paranoid.a.c.a("IP = " + str);
        a.a(108, str);
    }

    public static void b(String str) throws RemoteException {
        me.paranoid.a.c.a("IP = " + str);
        a.a(110, str);
    }

    public static void c(String str) throws RemoteException {
        me.paranoid.a.c.a("IP = " + str);
        a.a(111, str);
    }

    public static void d(String str) throws RemoteException {
        me.paranoid.a.c.a("IP = " + str);
        a.a(109, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        me.paranoid.a.c.a("");
        this.k.findItem(R.id.menu_refresh).setActionView((View) null);
        this.g = (ProgressBar) findViewById(R.id.search_progress);
        if (this.g.getAnimation() == null || this.g.getAnimation().hasEnded()) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setDuration(500L);
            alphaAnimation.setFillAfter(true);
            alphaAnimation.setAnimationListener(new f(this));
            this.g.startAnimation(alphaAnimation);
        }
    }

    private void f() {
        me.paranoid.a.c.a("");
        g gVar = new g(this, this);
        a = gVar;
        gVar.a();
    }

    private boolean g() {
        Iterator<ActivityManager.RunningServiceInfo> it = ((ActivityManager) getSystemService("activity")).getRunningServices(Integer.MAX_VALUE).iterator();
        while (it.hasNext()) {
            if (it.next().service.getClassName().equals("me.paranoid.wifikill.service.WFKService")) {
                return true;
            }
        }
        return false;
    }

    public final void a(boolean z) {
        if (b == null || a == null) {
            return;
        }
        me.paranoid.wifikill.fragment.h.a(b, z ? 0 : 3).show(getFragmentManager(), d);
    }

    final void b() throws RemoteException {
        this.k.findItem(R.id.menu_power).setIcon(android.R.drawable.ic_media_play);
        this.k.findItem(R.id.menu_power).setTitle("START");
        e();
        this.j.a((a) null);
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.fragment_slide_left_enter, R.anim.fragment_slide_right_exit, R.anim.fragment_slide_left_enter, R.anim.fragment_slide_right_exit);
        fragmentTransactionBeginTransaction.hide(this.j);
        try {
            getFragmentManager().popBackStack();
            fragmentTransactionBeginTransaction.commit();
        } catch (Exception e) {
            me.paranoid.a.c.a("error: " + e.getMessage());
        }
        this.h.b();
        if (a != null) {
            a.b();
            a = null;
        }
        this.f = false;
    }

    public final void b(boolean z) {
        if (b == null || a == null) {
            return;
        }
        me.paranoid.wifikill.fragment.h.a(b, z ? 1 : 2).show(getFragmentManager(), d);
    }

    final void c() throws RemoteException {
        me.paranoid.a.c.a("start");
        a.a(3, (Object) null);
        b = new a(getApplicationContext(), a.a.a);
        FragmentTransaction fragmentTransactionBeginTransaction = getFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.fragment_slide_left_enter, R.anim.fragment_slide_right_exit, R.anim.fragment_slide_left_enter, R.anim.fragment_slide_right_exit);
        try {
            fragmentTransactionBeginTransaction.show(this.j);
            fragmentTransactionBeginTransaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
        b.c();
        this.j.a(b);
        this.h.a();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        n = this;
        String lowerCase = getPackageManager().getApplicationLabel(getApplicationInfo()).toString().toLowerCase();
        me.paranoid.a.c.a("!!! " + lowerCase);
        if (lowerCase.contains("free")) {
            c = false;
        }
        super.onCreate(bundle);
        q = getSharedPreferences("WiFiKill", 0);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        r = defaultSharedPreferences;
        if (defaultSharedPreferences.getBoolean("pref_key_fullscreen", false)) {
            getWindow().setFlags(1024, 1024);
        }
        setContentView(R.layout.main);
        this.o = ((PowerManager) getSystemService("power")).newWakeLock(6, "WiFiKill");
        this.e = getActionBar();
        this.e.setBackgroundDrawable(getResources().getDrawable(R.drawable.action_bar));
        this.j = (DevicesFragment) getFragmentManager().findFragmentById(R.id.device_list);
        this.h = (StatusBarFragment) getFragmentManager().findFragmentById(R.id.status_bar);
        this.i = (me.paranoid.wifikill.fragment.a) getFragmentManager().findFragmentById(R.id.details);
        getFragmentManager().beginTransaction().hide(this.j);
        if (c) {
            View viewFindViewById = findViewById(R.id.status_bar);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(12);
            viewFindViewById.setLayoutParams(layoutParams);
        } else {
            this.p = (AdView) findViewById(R.id.adView);
            this.p.setVisibility(0);
            this.p.a(new com.google.ads.d());
            me.paranoid.a.c.a(n, "Demo", "This is a demo version of the app, it has less options and other limitations.\n\nConsider using WiFiKill Downloader from http://paranoid.me , to get FULL version\n", "Try demo", "Get WiFiKill Downloader", new b(this));
        }
        if (q.getBoolean("first_run", true)) {
            me.paranoid.a.c.a(n, "Disclaimer", "This program is released \"as-is\" - without any warranty, responsibility or liability. I do not take any responsibility for anything you do using this application. Using (or even keeping) this app might be illegal in your country. Use at your own risk!");
            SharedPreferences.Editor editorEdit = q.edit();
            editorEdit.putBoolean("first_run", false);
            editorEdit.commit();
        }
        this.f = g();
        me.paranoid.a.c.a("service_running = " + this.f);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        me.paranoid.a.c.a("");
        getMenuInflater().inflate(R.menu.main, menu);
        this.k = menu;
        if (!this.f) {
            if (me.paranoid.a.b.a(n, "wfk", "wfk")) {
                return true;
            }
            me.paranoid.a.c.a(n, "Warning", "Unable to copy binary file, please reboot your phone and try again.");
            return true;
        }
        me.paranoid.a.c.a("");
        this.k.findItem(R.id.menu_power).setIcon(android.R.drawable.ic_media_pause);
        this.k.findItem(R.id.menu_power).setTitle("STOP");
        f();
        return true;
    }

    @Override // android.app.Activity
    protected void onDestroy() throws RemoteException {
        me.paranoid.a.c.a("");
        super.onDestroy();
        if (a != null) {
            a.b();
        }
        a = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) throws RemoteException {
        me.paranoid.a.c.a("");
        switch (menuItem.getItemId()) {
            case R.id.menu_power /* 2131296305 */:
                me.paranoid.a.c.a("");
                if (this.f) {
                    me.paranoid.a.c.a("start");
                    this.m = new ProgressDialog(this);
                    this.m.setTitle("Stopping service");
                    this.m.setMessage("Please wait...");
                    this.m.setCancelable(false);
                    me.paranoid.a.c.a("showing");
                    this.m.show();
                    me.paranoid.a.c.a("sending message");
                    a.a(4, (Object) null);
                    me.paranoid.a.c.a("end");
                } else {
                    if (me.paranoid.a.c.a(n) == null) {
                        me.paranoid.a.c.a(n, "Error", "Not connected to any WiFi network!");
                        return false;
                    }
                    menuItem.setIcon(android.R.drawable.ic_media_pause);
                    menuItem.setTitle("STOP");
                    f();
                }
                this.f = this.f ? false : true;
                return false;
            case R.id.menu_refresh /* 2131296306 */:
                if (this.f) {
                    me.paranoid.a.c.a(n, "initiating device scan");
                    a.a(5, (Object) true);
                    me.paranoid.a.c.a("");
                    a(0);
                }
                return false;
            case R.id.menu_search /* 2131296307 */:
                this.l = (SearchView) this.k.findItem(R.id.menu_search).getActionView();
                this.l.setOnQueryTextListener(new c(this));
                return false;
            case R.id.menu_preferences /* 2131296308 */:
                startActivity(new Intent(this, (Class<?>) Preferences.class));
                return false;
            case R.id.menu_help /* 2131296309 */:
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://forum.paranoid.me/")));
                return false;
            case R.id.menu_about /* 2131296310 */:
                me.paranoid.a.c.a(n, "About", "This program just a proof of concept, please check my other cool apps on my website: http://forum.paranoid.me/");
                return false;
            default:
                return false;
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.o.release();
    }

    @Override // android.app.Activity
    protected void onResume() {
        me.paranoid.a.c.a("onResume() ---");
        super.onResume();
        this.o.acquire();
        this.j.a();
    }
}
