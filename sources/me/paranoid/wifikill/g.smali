###### Class me.paranoid.wifikill.g (me.paranoid.wifikill.g)
.class public final Lme/paranoid/wifikill/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Lme/paranoid/wifikill/service/WFKService;

.field final synthetic b:Lme/paranoid/wifikill/WiFiKill;

.field private c:Landroid/os/Messenger;

.field private d:Z

.field private e:Landroid/content/Context;

.field private final f:Landroid/os/Messenger;

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Lme/paranoid/wifikill/WiFiKill;Landroid/content/Context;)V
    .registers 6

    const/4 v2, 0x0

    iput-object p1, p0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lme/paranoid/wifikill/g;->c:Landroid/os/Messenger;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lme/paranoid/wifikill/i;

    invoke-direct {v1, p0}, Lme/paranoid/wifikill/i;-><init>(Lme/paranoid/wifikill/g;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lme/paranoid/wifikill/g;->f:Landroid/os/Messenger;

    iput-object v2, p0, Lme/paranoid/wifikill/g;->a:Lme/paranoid/wifikill/service/WFKService;

    new-instance v0, Lme/paranoid/wifikill/h;

    invoke-direct {v0, p0}, Lme/paranoid/wifikill/h;-><init>(Lme/paranoid/wifikill/g;)V

    iput-object v0, p0, Lme/paranoid/wifikill/g;->g:Landroid/content/ServiceConnection;

    iput-object p2, p0, Lme/paranoid/wifikill/g;->e:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lme/paranoid/wifikill/g;)Landroid/os/Messenger;
    .registers 2

    iget-object v0, p0, Lme/paranoid/wifikill/g;->f:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic a(Lme/paranoid/wifikill/g;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    iput-object p1, p0, Lme/paranoid/wifikill/g;->c:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic b(Lme/paranoid/wifikill/g;)Landroid/os/Messenger;
    .registers 2

    iget-object v0, p0, Lme/paranoid/wifikill/g;->c:Landroid/os/Messenger;

    return-object v0
.end method


# virtual methods
.method final a()V
    .registers 5

    const-string v0, "----"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lme/paranoid/wifikill/g;->e:Landroid/content/Context;

    const-class v2, Lme/paranoid/wifikill/service/WFKService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    invoke-virtual {v1, v0}, Lme/paranoid/wifikill/WiFiKill;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    iget-object v2, p0, Lme/paranoid/wifikill/g;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljbh/tuxboub/mcjek;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/paranoid/wifikill/g;->d:Z

    return-void
.end method

.method final a(ILjava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lme/paranoid/wifikill/g;->d:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lme/paranoid/wifikill/g;->c:Landroid/os/Messenger;

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lme/paranoid/wifikill/g;->c:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_16

    const/4 v0, 0x1

    goto :goto_9

    :catch_16
    move-exception v1

    goto :goto_9
.end method

.method final b()V
    .registers 3

    iget-boolean v0, p0, Lme/paranoid/wifikill/g;->d:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lme/paranoid/wifikill/g;->c:Landroid/os/Messenger;

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_a
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lme/paranoid/wifikill/g;->f:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lme/paranoid/wifikill/g;->c:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_22

    :cond_17
    :goto_17
    iget-object v0, p0, Lme/paranoid/wifikill/g;->b:Lme/paranoid/wifikill/WiFiKill;

    iget-object v1, p0, Lme/paranoid/wifikill/g;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lme/paranoid/wifikill/WiFiKill;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/paranoid/wifikill/g;->d:Z

    return-void

    :catch_22
    move-exception v0

    goto :goto_17
.end method
