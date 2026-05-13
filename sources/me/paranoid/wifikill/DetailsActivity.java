package me.paranoid.wifikill;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.Switch;

/* loaded from: classes.dex */
public class DetailsActivity extends Activity {

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        
        // MODERN WAKELOCK: Ekranın açık kalmasını sağlayan yeni ve güvenli yöntem
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);

        if (getResources().getConfiguration().orientation == 2) {
            finish();
            return;
        }
        
        if (getActionBar() != null) {
            getActionBar().setBackgroundDrawable(getResources().getDrawable(R.drawable.action_bar));
        }

        // Seçili cihazın IP adresi üzerinden objesini çekiyoruz
        String ip = getIntent().getExtras().getString("ip");
        final me.paranoid.wifikill.service.a device = a.a().b(ip);

        if (bundle == null) {
            me.paranoid.wifikill.fragment.a aVar = new me.paranoid.wifikill.fragment.a(device);
            aVar.setArguments(getIntent().getExtras());
            getFragmentManager().beginTransaction().add(android.R.id.content, aVar).commit();
        }

        // Fragment UI'ı (details.xml) ekrana yerleşir yerleşmez Switch'i bul ve işle
        getWindow().getDecorView().post(new Runnable() {
            @Override
            public void run() {
                Switch whitelistSwitch = (Switch) findViewById(R.id.whitelist_switch);
                if (whitelistSwitch != null && device != null) {
                    final SharedPreferences prefs = getSharedPreferences("WiFiKill_Whitelist", MODE_PRIVATE);
                    final String macAddress = device.b; // Cihazın MAC Adresi

                    // Önceden kayıtlıysa switch'i açık göster
                    whitelistSwitch.setChecked(prefs.getBoolean(macAddress, false));

                    // Kullanıcı tıkladığında hafızaya kaydet veya sil
                    whitelistSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                        @Override
                        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                            SharedPreferences.Editor editor = prefs.edit();
                            if (isChecked) {
                                editor.putBoolean(macAddress, true);
                            } else {
                                editor.remove(macAddress);
                            }
                            editor.apply(); // Değişiklikleri hızlıca onayla
                        }
                    });
                }
            }
        });
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        // Flag_KEEP_SCREEN_ON kullandığımız için burada serbest bırakılacak kilit kalmadı, tertemiz.
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        // Reklam kodları tamamen kaldırıldığı için burası boş kalabilir, 
        // ileride UI yenilemeleri için kullanılabilir.
    }
}