###### Class me.paranoid.wifikill.service.g (me.paranoid.wifikill.service.g)
.class final Lme/paranoid/wifikill/service/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/service/WFKService;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/service/WFKService;)V
    .registers 2

    iput-object p1, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_a0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_8
    return-void

    :sswitch_9
    iget-object v1, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Landroid/app/Activity;)Landroid/app/Activity;

    iget-object v0, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_1d
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2a} :catch_2b

    goto :goto_8

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    :sswitch_30
    iget-object v0, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    :sswitch_3c
    iget-object v0, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->b(Lme/paranoid/wifikill/service/WFKService;)V

    iget-object v0, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->c(Lme/paranoid/wifikill/service/WFKService;)V

    goto :goto_8

    :sswitch_47
    new-instance v0, Lme/paranoid/wifikill/service/h;

    invoke-direct {v0, p0}, Lme/paranoid/wifikill/service/h;-><init>(Lme/paranoid/wifikill/service/g;)V

    invoke-virtual {v0}, Lme/paranoid/wifikill/service/h;->start()V

    goto :goto_8

    :sswitch_50
    iget-object v1, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Z)V

    goto :goto_8

    :sswitch_5e
    iget-object v1, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    iget-object v2, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lme/paranoid/wifikill/service/WFKService;->b(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)Lme/paranoid/wifikill/service/a;

    move-result-object v0

    invoke-static {v1, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Lme/paranoid/wifikill/service/a;)V

    goto :goto_8

    :sswitch_6e
    iget-object v1, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    iget-object v2, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lme/paranoid/wifikill/service/WFKService;->b(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)Lme/paranoid/wifikill/service/a;

    move-result-object v0

    invoke-static {v1, v0}, Lme/paranoid/wifikill/service/WFKService;->b(Lme/paranoid/wifikill/service/WFKService;Lme/paranoid/wifikill/service/a;)V

    goto :goto_8

    :sswitch_7e
    iget-object v1, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    iget-object v2, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lme/paranoid/wifikill/service/WFKService;->b(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)Lme/paranoid/wifikill/service/a;

    move-result-object v0

    invoke-static {v1, v0}, Lme/paranoid/wifikill/service/WFKService;->c(Lme/paranoid/wifikill/service/WFKService;Lme/paranoid/wifikill/service/a;)V

    goto/16 :goto_8

    :sswitch_8f
    iget-object v1, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    iget-object v2, p0, Lme/paranoid/wifikill/service/g;->a:Lme/paranoid/wifikill/service/WFKService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lme/paranoid/wifikill/service/WFKService;->b(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)Lme/paranoid/wifikill/service/a;

    move-result-object v0

    invoke-static {v1, v0}, Lme/paranoid/wifikill/service/WFKService;->d(Lme/paranoid/wifikill/service/WFKService;Lme/paranoid/wifikill/service/a;)V

    goto/16 :goto_8

    :sswitch_data_a0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_30
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_47
        0x5 -> :sswitch_50
        0x6c -> :sswitch_5e
        0x6d -> :sswitch_6e
        0x6e -> :sswitch_7e
        0x6f -> :sswitch_8f
    .end sparse-switch
.end method
