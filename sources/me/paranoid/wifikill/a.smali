###### Class me.paranoid.wifikill.a (me.paranoid.wifikill.a)
.class public final Lme/paranoid/wifikill/a;
.super Landroid/widget/BaseAdapter;


# static fields
.field private static c:Lme/paranoid/wifikill/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lme/paranoid/wifikill/a;->c:Lme/paranoid/wifikill/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lme/paranoid/wifikill/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lme/paranoid/wifikill/a;->b:Ljava/util/ArrayList;

    sput-object p0, Lme/paranoid/wifikill/a;->c:Lme/paranoid/wifikill/a;

    return-void
.end method

.method public static a()Lme/paranoid/wifikill/a;
    .registers 1

    sget-object v0, Lme/paranoid/wifikill/a;->c:Lme/paranoid/wifikill/a;

    return-object v0
.end method

.method private static b(I)Ljava/lang/String;
    .registers 6

    const/high16 v4, 0x3f800000    # 1.0f

    div-int/lit16 v0, p0, 0x400

    int-to-float v0, v0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float v1, v0, v1

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.##"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    cmpl-float v3, v1, v4

    if-lez v3, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2c
    return-object v0

    :cond_2d
    cmpl-float v1, v0, v4

    if-lez v1, :cond_4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c
.end method


# virtual methods

# ========================================================
# GELİŞMİŞ ARAMA MOTORU (Büyük/Küçük harf duyarsız + Contains)
# ========================================================
.method public final a(Ljava/lang/String;)I
    .registers 9

    const/4 v0, 0x0
    
    if-nez p1, :cond_not_found

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object p1

    iget-object v1, p0, Lme/paranoid/wifikill/a;->b:Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    move-result-object v2
    move v1, v0

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    move-result v0
    if-eqz v0, :cond_not_found

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Lme/paranoid/wifikill/service/a;

    # 1. IP Kontrolü
    iget-object v3, v0, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;
    if-eqz v3, :cond_check_orig_name
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v3
    if-eqz v3, :cond_check_orig_name
    
    :cond_match
    return v1

    :cond_check_orig_name
    # 2. Üretici Kontrolü
    invoke-virtual {v0}, Lme/paranoid/wifikill/service/a;->b()Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :cond_check_custom_name
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v3
    if-eqz v3, :cond_check_custom_name
    goto :cond_match

    :cond_check_custom_name
    # 3. Özel İsim Kontrolü
    iget-object v3, p0, Lme/paranoid/wifikill/a;->a:Landroid/content/Context;
    const-string v4, "CustomNames"
    const/4 v5, 0x0
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v3

    iget-object v4, v0, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;
    const/4 v5, 0x0
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3

    if-eqz v3, :cond_no_match
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v3
    if-eqz v3, :cond_no_match
    goto :cond_match

    :cond_no_match
    add-int/lit8 v1, v1, 0x1
    goto :goto_e

    :cond_not_found
    const/4 v1, -0x1
    return v1
.end method
# ========================================================


.method public final a(I)Lme/paranoid/wifikill/service/a;
    .registers 3

    iget-object v0, p0, Lme/paranoid/wifikill/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/service/a;

    return-object v0
.end method

.method public final b()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lme/paranoid/wifikill/a;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lme/paranoid/wifikill/service/a;
    .registers 5

    iget-object v0, p0, Lme/paranoid/wifikill/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/service/a;

    iget-object v2, v0, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final c()V
    .registers 1

    invoke-virtual {p0}, Lme/paranoid/wifikill/a;->notifyDataSetChanged()V

    return-void
.end method

.method public final d()I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lme/paranoid/wifikill/a;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lme/paranoid/wifikill/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/paranoid/wifikill/service/a;

    iget v0, v0, Lme/paranoid/wifikill/service/a;->e:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_24

    add-int/lit8 v0, v1, 0x1

    :goto_20
    move v1, v0

    goto :goto_d

    :cond_22
    move v0, v1

    goto :goto_5

    :cond_24
    move v0, v1

    goto :goto_20
.end method

.method public final e()I
    .registers 3

    iget-object v0, p0, Lme/paranoid/wifikill/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lme/paranoid/wifikill/a;->d()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lme/paranoid/wifikill/a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lme/paranoid/wifikill/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lme/paranoid/wifikill/a;->a(I)Lme/paranoid/wifikill/service/a;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 5

    iget-object v0, p0, Lme/paranoid/wifikill/a;->b:Ljava/util/ArrayList;

    monitor-enter v0

    int-to-long v1, p1

    monitor-exit v0

    return-wide v1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15

    const v8, 0x7f02000b
    const/16 v7, 0x8
    const/4 v6, 0x1
    const v5, 0x7f090012
    const/4 v4, 0x0

    iget-object v0, p0, Lme/paranoid/wifikill/a;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1}, Lme/paranoid/wifikill/a;->a(I)Lme/paranoid/wifikill/service/a;

    move-result-object v2

    if-nez p2, :cond_21

    const v1, 0x7f030001

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_21
    const v0, 0x7f090014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v2, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V


    # ========================================================
    # CUSTOM NAME VE WHITELIST KONTROL ENJEKSİYONU
    # ========================================================
    const v0, 0x7f090003
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v0
    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lme/paranoid/wifikill/a;->a:Landroid/content/Context;
    const-string v3, "CustomNames"
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v1

    iget-object v3, v2, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;
    const/4 v9, 0x0
    invoke-interface {v1, v3, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1

    if-eqz v1, :cond_use_default_name

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    goto :cond_check_whitelist

    :cond_use_default_name
    invoke-virtual {v2}, Lme/paranoid/wifikill/service/a;->b()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_check_whitelist
    iget-object v1, p0, Lme/paranoid/wifikill/a;->a:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v1

    const-string v3, "safe_indicator"
    const-string v9, "id"
    iget-object v10, p0, Lme/paranoid/wifikill/a;->a:Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v10
    invoke-virtual {v1, v3, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v1

    if-nez v1, :cond_has_indicator_id
    goto :cond_skip_whitelist_ui

    :cond_has_indicator_id
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_has_indicator_view
    goto :cond_skip_whitelist_ui

    :cond_has_indicator_view
    iget-object v3, p0, Lme/paranoid/wifikill/a;->a:Landroid/content/Context;
    const-string v9, "WiFiKill_Whitelist"
    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v3

    iget-object v9, v2, Lme/paranoid/wifikill/service/a;->a:Ljava/lang/String;
    invoke-interface {v3, v9, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result v3

    if-eqz v3, :cond_hide_safe_icon
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V
    goto :cond_skip_whitelist_ui

    :cond_hide_safe_icon
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_skip_whitelist_ui
    # ========================================================

    const v0, 0x7f090015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v2, Lme/paranoid/wifikill/service/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_dd

    invoke-static {}, Lme/paranoid/wifikill/WiFiKill;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_key_show_nbname"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_dd

    iget-object v1, v2, Lme/paranoid/wifikill/service/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_60
    const v0, 0x7f09001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lme/paranoid/wifikill/WiFiKill;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_key_show_vendor"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e4

    iget-object v1, v2, Lme/paranoid/wifikill/service/a;->d:Ljava/lang/String;

    if-nez v1, :cond_e1

    const-string v1, "unknown vendor"

    :goto_7b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_81
    const v0, 0x7f09001c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lme/paranoid/wifikill/WiFiKill;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_key_show_hwaddr"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e8

    iget-object v1, v2, Lme/paranoid/wifikill/service/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9e
    const v0, 0x7f090018

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, v2, Lme/paranoid/wifikill/service/a;->f:I

    invoke-static {v1}, Lme/paranoid/wifikill/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09001a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, v2, Lme/paranoid/wifikill/service/a;->g:I

    invoke-static {v1}, Lme/paranoid/wifikill/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, v2, Lme/paranoid/wifikill/service/a;->e:I

    if-nez v0, :cond_ec

    const-string v0, "#75000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "#00FF0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_dc
    :goto_dc
    return-object p2

    :cond_dd
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_60

    :cond_e1
    iget-object v1, v2, Lme/paranoid/wifikill/service/a;->d:Ljava/lang/String;

    goto :goto_7b

    :cond_e4
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_81

    :cond_e8
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9e

    :cond_ec
    iget v0, v2, Lme/paranoid/wifikill/service/a;->e:I

    if-ne v0, v6, :cond_108

    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "#3333b5e5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_dc

    :cond_108
    iget v0, v2, Lme/paranoid/wifikill/service/a;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_dc

    invoke-virtual {p2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "#33FF0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_dc
.end method