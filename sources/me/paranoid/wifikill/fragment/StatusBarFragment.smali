.class public Lme/paranoid/wifikill/fragment/StatusBarFragment;
.super Landroid/app/Fragment;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;

# instance fields
.field private a:Landroid/widget/TextView;
.field private b:Landroid/widget/TextView;
.field private c:Landroid/widget/Switch;
.field private d:Landroid/widget/Switch;
.field private e:Lme/paranoid/wifikill/a;
.field private throttleSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->a:Landroid/widget/TextView;
    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->b:Landroid/widget/TextView;
    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;
    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;
    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->e:Lme/paranoid/wifikill/a;
    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->throttleSwitch:Landroid/widget/Switch;

    return-void
.end method

.method static synthetic a(Lme/paranoid/wifikill/fragment/StatusBarFragment;)Landroid/widget/Switch;
    .registers 2

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/4 v2, 0x1

    invoke-static {}, Lme/paranoid/wifikill/a;->a()Lme/paranoid/wifikill/a;
    move-result-object v0
    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->e:Lme/paranoid/wifikill/a;

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->e:Lme/paranoid/wifikill/a;
    if-nez v0, :cond_c
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->e:Lme/paranoid/wifikill/a;
    invoke-virtual {v0}, Lme/paranoid/wifikill/a;->d()I
    move-result v0

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->e:Lme/paranoid/wifikill/a;
    invoke-virtual {v1}, Lme/paranoid/wifikill/a;->e()I
    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_25
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setClickable(Z)V

    # Agda cihaz varsa Yavaslatici tusunu aktif et
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->throttleSwitch:Landroid/widget/Switch;
    if-eqz v0, :cond_25
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->throttleSwitch:Landroid/widget/Switch;
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setClickable(Z)V

    :cond_25
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->a:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    iget-object v2, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->e:Lme/paranoid/wifikill/a;
    invoke-virtual {v2}, Lme/paranoid/wifikill/a;->d()I
    move-result v2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->b:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    iget-object v2, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->e:Lme/paranoid/wifikill/a;
    invoke-virtual {v2}, Lme/paranoid/wifikill/a;->e()I
    move-result v2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b
.end method

.method public final b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    # Yavaslatici tusu sifirlama
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->throttleSwitch:Landroid/widget/Switch;
    if-eqz v0, :cond_skip_th
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V
    :cond_skip_th

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->b:Landroid/widget/TextView;
    const-string v1, "0"
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->a:Landroid/widget/TextView;
    const-string v1, "0"
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;
    new-instance v1, Lme/paranoid/wifikill/fragment/j;
    invoke-direct {v1, p0}, Lme/paranoid/wifikill/fragment/j;-><init>(Lme/paranoid/wifikill/fragment/StatusBarFragment;)V
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;
    new-instance v1, Lme/paranoid/wifikill/fragment/k;
    invoke-direct {v1, p0}, Lme/paranoid/wifikill/fragment/k;-><init>(Lme/paranoid/wifikill/fragment/StatusBarFragment;)V
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    # XML'den yavaslatici butonunu guvenle bul
    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/StatusBarFragment;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const-string v1, "throttle_all"
    const-string v2, "id"
    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/StatusBarFragment;->getActivity()Landroid/app/Activity;
    move-result-object v3
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0

    if-eqz v0, :cond_no_throttle
    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/StatusBarFragment;->getView()Landroid/view/View;
    move-result-object v1
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/Switch;
    iput-object v1, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->throttleSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->throttleSwitch:Landroid/widget/Switch;
    if-eqz v1, :cond_no_throttle
    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :cond_no_throttle

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const/4 v2, 0x0

    const v0, 0x7f030004
    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object v1

    const v0, 0x7f09002d
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->b:Landroid/widget/TextView;

    const v0, 0x7f09002c
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;
    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->a:Landroid/widget/TextView;

    const v0, 0x7f09002a
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/Switch;
    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;

    const v0, 0x7f09002b
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/Switch;
    iput-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->d:Landroid/widget/Switch;
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/StatusBarFragment;->c:Landroid/widget/Switch;
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    return-object v1
.end method

# GLOBAL YAVASLATICI KONTROLU (Çift Yönlü İndirme/Yükleme Kesme)
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 8

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I
    move-result v0

    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/StatusBarFragment;->getResources()Landroid/content/res/Resources;
    move-result-object v1
    const-string v2, "throttle_all"
    const-string v3, "id"
    invoke-virtual {p0}, Lme/paranoid/wifikill/fragment/StatusBarFragment;->getActivity()Landroid/app/Activity;
    move-result-object v4
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1

    if-ne v0, v1, :cond_end

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    move-result-object v0

    if-eqz p2, :cond_off

    # BUTON AÇIK - Tüm trafiği 15 paket ile kısıtlar ve fazlasını reddeder
    const-string v1, "su -c \'iptables -I FORWARD -j DROP; iptables -I FORWARD -m limit --limit 15/s -j ACCEPT\'"
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    goto :cond_end

    :cond_off
    # BUTON KAPALI - Kısıtlamaları kaldırır
    const-string v1, "su -c \'iptables -D FORWARD -j DROP; iptables -D FORWARD -m limit --limit 15/s -j ACCEPT\'"
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_end
    return-void

    :catch_0
    move-exception v0
    goto :cond_end
.end method