###### Class me.paranoid.wifikill.i (me.paranoid.wifikill.i)
.class final Lme/paranoid/wifikill/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/g;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/g;)V
    .registers 2

    iput-object p1, p0, Lme/paranoid/wifikill/i;->a:Lme/paranoid/wifikill/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msg = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_f4

    const-string v0, "ignoring uninteresting message\n"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    :goto_1c
    return-void

    :sswitch_1d
    iget-object v1, p0, Lme/paranoid/wifikill/i;->a:Lme/paranoid/wifikill/g;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lme/paranoid/wifikill/service/WFKService;

    iput-object v0, v1, Lme/paranoid/wifikill/g;->a:Lme/paranoid/wifikill/service/WFKService;

    iget-object v0, p0, Lme/paranoid/wifikill/i;->a:Lme/paranoid/wifikill/g;

    iget-object v0, v0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    invoke-virtual {v0}, Lme/paranoid/wifikill/WiFiKill;->c()V

    goto :goto_1c

    :sswitch_2d
    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->b:Lme/paranoid/wifikill/a;

    invoke-virtual {v0}, Lme/paranoid/wifikill/a;->notifyDataSetChanged()V

    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->b:Lme/paranoid/wifikill/a;

    invoke-virtual {v0}, Lme/paranoid/wifikill/a;->c()V

    iget-object v0, p0, Lme/paranoid/wifikill/i;->a:Lme/paranoid/wifikill/g;

    iget-object v0, v0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->e(Lme/paranoid/wifikill/WiFiKill;)Lme/paranoid/wifikill/fragment/StatusBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/StatusBarFragment;->a()V

    goto :goto_1c

    :sswitch_43
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_59

    const/16 v1, 0x64

    if-gt v0, v1, :cond_59

    iget-object v1, p0, Lme/paranoid/wifikill/i;->a:Lme/paranoid/wifikill/g;

    iget-object v1, v1, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    invoke-static {v1, v0}, Lme/paranoid/wifikill/WiFiKill;->a(Lme/paranoid/wifikill/WiFiKill;I)V

    goto :goto_1c

    :cond_59
    iget-object v0, p0, Lme/paranoid/wifikill/i;->a:Lme/paranoid/wifikill/g;

    iget-object v0, v0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->f(Lme/paranoid/wifikill/WiFiKill;)V

    goto :goto_1c

    :sswitch_61
    iget-object v0, p0, Lme/paranoid/wifikill/i;->a:Lme/paranoid/wifikill/g;

    iget-object v0, v0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->g(Lme/paranoid/wifikill/WiFiKill;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lme/paranoid/wifikill/i;->a:Lme/paranoid/wifikill/g;

    iget-object v0, v0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->g(Lme/paranoid/wifikill/WiFiKill;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service stop obj="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_9d

    invoke-static {}, Lme/paranoid/wifikill/WiFiKill;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Service error"

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lme/paranoid/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    iget-object v0, p0, Lme/paranoid/wifikill/i;->a:Lme/paranoid/wifikill/g;

    iget-object v0, v0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    invoke-virtual {v0}, Lme/paranoid/wifikill/WiFiKill;->b()V

    goto/16 :goto_1c

    :sswitch_a6
    sget-object v0, Lme/paranoid/wifikill/WiFiKill;->b:Lme/paranoid/wifikill/a;

    invoke-virtual {v0}, Lme/paranoid/wifikill/a;->c()V

    iget-object v0, p0, Lme/paranoid/wifikill/i;->a:Lme/paranoid/wifikill/g;

    iget-object v0, v0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->h(Lme/paranoid/wifikill/WiFiKill;)Lme/paranoid/wifikill/fragment/a;

    move-result-object v0

    if-nez v0, :cond_cd

    iget-object v0, p0, Lme/paranoid/wifikill/i;->a:Lme/paranoid/wifikill/g;

    iget-object v1, v0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    iget-object v0, p0, Lme/paranoid/wifikill/i;->a:Lme/paranoid/wifikill/g;

    iget-object v0, v0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    invoke-virtual {v0}, Lme/paranoid/wifikill/WiFiKill;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f090029

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/fragment/a;

    invoke-static {v1, v0}, Lme/paranoid/wifikill/WiFiKill;->a(Lme/paranoid/wifikill/WiFiKill;Lme/paranoid/wifikill/fragment/a;)Lme/paranoid/wifikill/fragment/a;

    :cond_cd
    iget-object v0, p0, Lme/paranoid/wifikill/i;->a:Lme/paranoid/wifikill/g;

    iget-object v0, v0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->h(Lme/paranoid/wifikill/WiFiKill;)Lme/paranoid/wifikill/fragment/a;

    move-result-object v0

    if-eqz v0, :cond_e2

    :try_start_d7
    iget-object v0, p0, Lme/paranoid/wifikill/i;->a:Lme/paranoid/wifikill/g;

    iget-object v0, v0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->h(Lme/paranoid/wifikill/WiFiKill;)Lme/paranoid/wifikill/fragment/a;

    move-result-object v0

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/a;->b()V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_e2} :catch_ef

    :cond_e2
    :goto_e2
    iget-object v0, p0, Lme/paranoid/wifikill/i;->a:Lme/paranoid/wifikill/g;

    iget-object v0, v0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    invoke-static {v0}, Lme/paranoid/wifikill/WiFiKill;->e(Lme/paranoid/wifikill/WiFiKill;)Lme/paranoid/wifikill/fragment/StatusBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/StatusBarFragment;->a()V

    goto/16 :goto_1c

    :catch_ef
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e2

    :sswitch_data_f4
    .sparse-switch
        0x1 -> :sswitch_1d
        0x4 -> :sswitch_61
        0x5 -> :sswitch_43
        0x6a -> :sswitch_2d
        0x6b -> :sswitch_a6
    .end sparse-switch
.end method
