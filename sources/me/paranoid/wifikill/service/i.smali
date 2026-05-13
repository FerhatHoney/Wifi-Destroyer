###### Class me.paranoid.wifikill.service.i (me.paranoid.wifikill.service.i)
.class final Lme/paranoid/wifikill/service/i;
.super Ljava/lang/Thread;


# instance fields
.field public a:Z

.field final synthetic b:Lme/paranoid/wifikill/service/WFKService;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/service/WFKService;)V
    .registers 3

    iput-object p1, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/paranoid/wifikill/service/i;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const/4 v1, -0x1

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lme/paranoid/wifikill/service/i;->a:Z

    if-nez v0, :cond_1a

    :try_start_5
    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->d(Lme/paranoid/wifikill/service/WFKService;)Lme/paranoid/jniexec/JNIExec;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lme/paranoid/jniexec/JNIExec;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lme/paranoid/wifikill/service/i;->a:Z

    if-eqz v2, :cond_84

    const-string v0, "User request for stop!"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_1a} :catch_93

    :cond_1a
    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "wfk_pid = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v2}, Lme/paranoid/wifikill/service/WFKService;->f(Lme/paranoid/wifikill/service/WFKService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->f(Lme/paranoid/wifikill/service/WFKService;)I

    move-result v0

    if-eq v0, v1, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "kill -INT "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v2}, Lme/paranoid/wifikill/service/WFKService;->f(Lme/paranoid/wifikill/service/WFKService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/jniexec/JNIExec;->a(Ljava/lang/String;)I

    :cond_52
    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->d(Lme/paranoid/wifikill/service/WFKService;)Lme/paranoid/jniexec/JNIExec;

    move-result-object v0

    iget v0, v0, Lme/paranoid/jniexec/JNIExec;->a:I

    const/16 v2, 0x200

    if-ne v0, v2, :cond_63

    const-wide/16 v2, 0x2710

    :try_start_60
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_63
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_63} :catch_1ea

    :cond_63
    :goto_63
    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v0}, Lme/paranoid/wifikill/service/WFKService;->f(Lme/paranoid/wifikill/service/WFKService;)I

    move-result v0

    if-eq v0, v1, :cond_83

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kill -9 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-static {v1}, Lme/paranoid/wifikill/service/WFKService;->f(Lme/paranoid/wifikill/service/WFKService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/jniexec/JNIExec;->a(Ljava/lang/String;)I

    :cond_83
    :goto_83
    return-void

    :cond_84
    if-nez v0, :cond_99

    :try_start_86
    const-string v0, "Crap unable to read stuffs"

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const-string v2, "Service stopped unexpectedly"

    invoke-static {v0, v2}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_86 .. :try_end_92} :catch_93

    goto :goto_83

    :catch_93
    move-exception v0

    iget-boolean v0, p0, Lme/paranoid/wifikill/service/i;->a:Z

    if-eqz v0, :cond_1

    goto :goto_1a

    :cond_99
    :try_start_99
    const-string v2, "ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ad

    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)V

    goto :goto_83

    :cond_ad
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "read ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    const-string v2, "***"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "SEARCH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_e1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_99 .. :try_end_e1} :catch_93

    move-result v3

    if-eqz v3, :cond_fa

    const/4 v0, 0x2

    :try_start_e5
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ea} :catch_f7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e5 .. :try_end_ea} :catch_93

    move-result v0

    :goto_eb
    :try_start_eb
    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/4 v3, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;ILjava/lang/Object;)V

    goto/16 :goto_1

    :catch_f7
    move-exception v0

    move v0, v1

    goto :goto_eb

    :cond_fa
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "DEVICE_NEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_139

    new-instance v0, Lme/paranoid/wifikill/service/a;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/4 v4, 0x3

    aget-object v4, v2, v4

    iget-object v5, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/4 v6, 0x3

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Lme/paranoid/wifikill/service/WFKService;->c(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    invoke-virtual {v6}, Lme/paranoid/wifikill/service/WFKService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v2, v2, v7

    invoke-static {v6, v2}, Lme/paranoid/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v4, v5, v2}, Lme/paranoid/wifikill/service/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    new-instance v3, Lme/paranoid/wifikill/service/j;

    invoke-direct {v3, p0, v0}, Lme/paranoid/wifikill/service/j;-><init>(Lme/paranoid/wifikill/service/i;Lme/paranoid/wifikill/service/a;)V

    invoke-static {v2, v3}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/Runnable;)V

    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/16 v3, 0x6a

    invoke-static {v2, v3, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_139
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "DEVICE_UPDATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17c

    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v0, v3}, Lme/paranoid/wifikill/service/WFKService;->b(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)Lme/paranoid/wifikill/service/a;

    move-result-object v0

    if-nez v0, :cond_166

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No such device: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_166
    iget-object v3, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    new-instance v4, Lme/paranoid/wifikill/service/k;

    invoke-direct {v4, p0, v0, v2}, Lme/paranoid/wifikill/service/k;-><init>(Lme/paranoid/wifikill/service/i;Lme/paranoid/wifikill/service/a;[Ljava/lang/String;)V

    invoke-static {v3, v4}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/Runnable;)V

    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/16 v3, 0x6b

    invoke-static {v2, v3, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lme/paranoid/wifikill/service/a;->a()V

    goto/16 :goto_1

    :cond_17c
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "DEVICE_HOST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bf

    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v0, v3}, Lme/paranoid/wifikill/service/WFKService;->b(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/String;)Lme/paranoid/wifikill/service/a;

    move-result-object v0

    if-nez v0, :cond_1a9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No such device: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1a9
    iget-object v3, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    new-instance v4, Lme/paranoid/wifikill/service/l;

    invoke-direct {v4, p0, v0, v2}, Lme/paranoid/wifikill/service/l;-><init>(Lme/paranoid/wifikill/service/i;Lme/paranoid/wifikill/service/a;[Ljava/lang/String;)V

    invoke-static {v3, v4}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/Runnable;)V

    iget-object v2, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    const/16 v3, 0x6b

    invoke-static {v2, v3, v0}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lme/paranoid/wifikill/service/a;->a()V

    goto/16 :goto_1

    :cond_1bf
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "DEVICE_NBNAME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d6

    iget-object v0, p0, Lme/paranoid/wifikill/service/i;->b:Lme/paranoid/wifikill/service/WFKService;

    new-instance v3, Lme/paranoid/wifikill/service/m;

    invoke-direct {v3, p0, v2}, Lme/paranoid/wifikill/service/m;-><init>(Lme/paranoid/wifikill/service/i;[Ljava/lang/String;)V

    invoke-static {v0, v3}, Lme/paranoid/wifikill/service/WFKService;->a(Lme/paranoid/wifikill/service/WFKService;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_1d6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown command: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/paranoid/a/c;->a(Ljava/lang/String;)V
    :try_end_1e8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_eb .. :try_end_1e8} :catch_93

    goto/16 :goto_1

    :catch_1ea
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_63
.end method
