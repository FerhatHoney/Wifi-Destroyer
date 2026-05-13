.class public Lme/paranoid/wifikill/DetailsActivity;
.super Lmgv/vje/wnm;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private ipAddress:Ljava/lang/String;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Lmgv/vje/wnm;-><init>()V
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    invoke-super {p0, p1}, Lmgv/vje/wnm;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getWindow()Landroid/view/Window;
    move-result-object v0
    const/16 v1, 0x80
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
    move-result-object v0
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I
    const/4 v1, 0x2
    if-ne v0, v1, :cond_landscape

    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->finish()V
    return-void

    :cond_landscape
    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getActionBar()Landroid/app/ActionBar;
    move-result-object v0
    if-eqz v0, :cond_actionbar

    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const/high16 v2, 0x7f020000
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_actionbar
    if-nez p1, :cond_end

    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getIntent()Landroid/content/Intent;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    move-result-object v0
    const-string v1, "ip"
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0

    iput-object v0, p0, Lme/paranoid/wifikill/DetailsActivity;->ipAddress:Ljava/lang/String;

    new-instance v1, Lme/paranoid/wifikill/fragment/a;
    invoke-static {}, Lme/paranoid/wifikill/a;->a()Lme/paranoid/wifikill/a;
    move-result-object v2
    invoke-virtual {v2, v0}, Lme/paranoid/wifikill/a;->b(Ljava/lang/String;)Lme/paranoid/wifikill/service/a;
    move-result-object v0
    invoke-direct {v1, v0}, Lme/paranoid/wifikill/fragment/a;-><init>(Lme/paranoid/wifikill/service/a;)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getIntent()Landroid/content/Intent;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    move-result-object v0
    invoke-virtual {v1, v0}, Lme/paranoid/wifikill/fragment/a;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;
    move-result-object v0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;
    move-result-object v0
    const v2, 0x1020002
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    move-result-object v0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_end
    return-void
.end method

.method protected onResume()V
    .locals 5
    invoke-super {p0}, Lmgv/vje/wnm;->onResume()V

    # --- WHITELIST HAFIZA OKUMA ---
    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const-string v1, "whitelist_switch"
    const-string v2, "id"
    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getPackageName()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0

    if-eqz v0, :cond_skip_wl
    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/DetailsActivity;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/Switch;
    
    if-eqz v1, :cond_skip_wl
    const-string v2, "WiFiKill_Whitelist"
    const/4 v3, 0x0
    invoke-virtual {p0, v2, v3}, Lme/paranoid/wifikill/DetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v2
    iget-object v4, p0, Lme/paranoid/wifikill/DetailsActivity;->ipAddress:Ljava/lang/String;
    if-eqz v4, :cond_proceed_resume
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v2
    const/4 v3, 0x0
    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V
    :cond_proceed_resume
    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :cond_skip_wl

    # --- YAVAŞLATICI HAFIZA OKUMA (YENİ EKLENDİ) ---
    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const-string v1, "throttle_switch"
    const-string v2, "id"
    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getPackageName()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0

    if-eqz v0, :cond_skip_th
    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/DetailsActivity;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/Switch;
    if-eqz v1, :cond_skip_th

    const-string v2, "WiFiKill_Throttle"
    const/4 v3, 0x0
    invoke-virtual {p0, v2, v3}, Lme/paranoid/wifikill/DetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v2
    iget-object v4, p0, Lme/paranoid/wifikill/DetailsActivity;->ipAddress:Ljava/lang/String;
    if-eqz v4, :cond_proceed_th
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v2
    const/4 v3, 0x0
    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V
    :cond_proceed_th
    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :cond_skip_th

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9

    iget-object v1, p0, Lme/paranoid/wifikill/DetailsActivity;->ipAddress:Ljava/lang/String;
    if-nez v1, :cond_proceed
    return-void

    :cond_proceed
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I
    move-result v0

    # Whitelist Buton Kontrolü
    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    const-string v3, "whitelist_switch"
    const-string v4, "id"
    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getPackageName()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v2

    if-ne v0, v2, :cond_throttle_check
    const-string v0, "WiFiKill_Whitelist"
    const/4 v2, 0x0
    invoke-virtual {p0, v0, v2}, Lme/paranoid/wifikill/DetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    if-eqz p2, :cond_remove
    const/4 v2, 0x1
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    goto :cond_apply
    :cond_remove
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :cond_apply
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    return-void

    :cond_throttle_check
    # Yavaşlatma Buton Kontrolü
    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v2
    const-string v3, "throttle_switch"
    const-string v4, "id"
    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getPackageName()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v2

    if-ne v0, v2, :cond_end

    # 1. YAVAŞLATICI DURUMUNU HAFIZAYA KAYDET
    const-string v0, "WiFiKill_Throttle"
    const/4 v2, 0x0
    invoke-virtual {p0, v0, v2}, Lme/paranoid/wifikill/DetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    if-eqz p2, :cond_remove_th
    const/4 v2, 0x1
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    goto :cond_apply_th
    :cond_remove_th
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :cond_apply_th
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    # 2. IPTABLES ÇİFT YÖNLÜ (UPLOAD & DOWNLOAD) YAVAŞLATMA
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    move-result-object v2

    const-string v4, "15"

    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getResources()Landroid/content/res/Resources;
    move-result-object v5
    const-string v6, "speed_limit_input"
    const-string v7, "id"
    invoke-virtual {p0}, Lme/paranoid/wifikill/DetailsActivity;->getPackageName()Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v5

    if-eqz v5, :cond_got_speed
    invoke-virtual {p0, v5}, Lme/paranoid/wifikill/DetailsActivity;->findViewById(I)Landroid/view/View;
    move-result-object v5
    check-cast v5, Landroid/widget/EditText;
    if-eqz v5, :cond_got_speed
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    move-result v6
    if-lez v6, :cond_got_speed
    move-object v4, v5
    :cond_got_speed

    if-eqz p2, :cond_throttle_off

    # BUTON AÇIK (HEM YÜKLEMEYİ HEM İNDİRMEYİ KISAR)
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "su -c 'iptables -I FORWARD -s "
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, " -j DROP; iptables -I FORWARD -s "
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, " -m limit --limit "
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, "/s -j ACCEPT; iptables -I FORWARD -d "
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, " -j DROP; iptables -I FORWARD -d "
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, " -m limit --limit "
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, "/s -j ACCEPT'"
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    goto :cond_end

    :cond_throttle_off
    # BUTON KAPALI (NORMAL HIZA DÖNDÜRÜR)
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "su -c 'iptables -D FORWARD -s "
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, " -j DROP; iptables -D FORWARD -s "
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, " -m limit --limit "
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, "/s -j ACCEPT; iptables -D FORWARD -d "
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, " -j DROP; iptables -D FORWARD -d "
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, " -m limit --limit "
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, "/s -j ACCEPT'"
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_end
    return-void

    :catch_0
    move-exception v0
    goto :cond_end
.end method

.method protected onPause()V
    .locals 0
    invoke-super {p0}, Lmgv/vje/wnm;->onPause()V
    return-void
.end method