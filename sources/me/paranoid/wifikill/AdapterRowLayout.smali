###### Class me.paranoid.wifikill.AdapterRowLayout (me.paranoid.wifikill.AdapterRowLayout)
.class public Lme/paranoid/wifikill/AdapterRowLayout;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Z

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/paranoid/wifikill/AdapterRowLayout;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lme/paranoid/wifikill/AdapterRowLayout;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/paranoid/wifikill/AdapterRowLayout;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lme/paranoid/wifikill/AdapterRowLayout;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/paranoid/wifikill/AdapterRowLayout;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lme/paranoid/wifikill/AdapterRowLayout;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    iget-boolean v0, p0, Lme/paranoid/wifikill/AdapterRowLayout;->a:Z

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lme/paranoid/wifikill/AdapterRowLayout;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    iget-object v0, p0, Lme/paranoid/wifikill/AdapterRowLayout;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lme/paranoid/wifikill/AdapterRowLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lme/paranoid/wifikill/AdapterRowLayout;->b:Landroid/graphics/drawable/Drawable;

    :cond_a
    iput-boolean p1, p0, Lme/paranoid/wifikill/AdapterRowLayout;->a:Z

    if-eqz p1, :cond_18

    const-string v0, "#3033b5e5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/AdapterRowLayout;->setBackgroundColor(I)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lme/paranoid/wifikill/AdapterRowLayout;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lme/paranoid/wifikill/AdapterRowLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17
.end method

.method public toggle()V
    .registers 2

    iget-boolean v0, p0, Lme/paranoid/wifikill/AdapterRowLayout;->a:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lme/paranoid/wifikill/AdapterRowLayout;->a:Z

    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method
