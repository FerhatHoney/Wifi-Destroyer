###### Class me.paranoid.wifikill.service.e (me.paranoid.wifikill.service.e)
.class final Lme/paranoid/wifikill/service/e;
.super Ljava/lang/Object;

# interfaces
.implements Lme/paranoid/jniexec/b;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/service/WFKService;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/service/WFKService;)V
    .registers 2

    iput-object p1, p0, Lme/paranoid/wifikill/service/e;->a:Lme/paranoid/wifikill/service/WFKService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lme/paranoid/wifikill/service/e;->a:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->d(Lme/paranoid/wifikill/service/WFKService;)Lme/paranoid/jniexec/JNIExec;

    move-result-object v0

    iget v0, v0, Lme/paranoid/jniexec/JNIExec;->a:I

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lme/paranoid/wifikill/service/e;->a:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->d(Lme/paranoid/wifikill/service/WFKService;)Lme/paranoid/jniexec/JNIExec;

    move-result-object v0

    iget v0, v0, Lme/paranoid/jniexec/JNIExec;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lme/paranoid/wifikill/service/e;->a:Lme/paranoid/wifikill/service/WFKService;

    const-string v1, "Service crashed... died... vaporized... my bad, sorry"

    invoke-static {v0, v1}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method
