###### Class me.paranoid.wifikill.fragment.f (me.paranoid.wifikill.fragment.f)
.class final Lme/paranoid/wifikill/fragment/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/fragment/a;


# direct methods
.method private constructor <init>(Lme/paranoid/wifikill/fragment/a;)V
    .registers 2

    iput-object p1, p0, Lme/paranoid/wifikill/fragment/f;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/paranoid/wifikill/fragment/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lme/paranoid/wifikill/fragment/f;-><init>(Lme/paranoid/wifikill/fragment/a;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/f;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-virtual {v0}, Lme/paranoid/wifikill/fragment/a;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
