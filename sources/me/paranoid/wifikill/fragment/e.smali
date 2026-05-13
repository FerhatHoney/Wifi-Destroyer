###### Class me.paranoid.wifikill.fragment.e (me.paranoid.wifikill.fragment.e)
.class final Lme/paranoid/wifikill/fragment/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lme/paranoid/wifikill/fragment/a;


# direct methods
.method constructor <init>(Lme/paranoid/wifikill/fragment/a;)V
    .registers 2

    iput-object p1, p0, Lme/paranoid/wifikill/fragment/e;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 7

    const/4 v3, 0x1

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/e;->a:Lme/paranoid/wifikill/fragment/a;

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/e;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-static {v1}, Lme/paranoid/wifikill/fragment/a;->c(Lme/paranoid/wifikill/fragment/a;)I

    move-result v1

    invoke-static {v0, v1}, Lme/paranoid/wifikill/fragment/a;->a(Lme/paranoid/wifikill/fragment/a;I)I

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/e;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-static {v0, p2}, Lme/paranoid/wifikill/fragment/a;->b(Lme/paranoid/wifikill/fragment/a;I)I

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/e;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-static {v0}, Lme/paranoid/wifikill/fragment/a;->c(Lme/paranoid/wifikill/fragment/a;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/e;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-static {v0}, Lme/paranoid/wifikill/fragment/a;->c(Lme/paranoid/wifikill/fragment/a;)I

    move-result v0

    if-ne v0, v3, :cond_29

    :cond_22
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/e;->a:Lme/paranoid/wifikill/fragment/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/paranoid/wifikill/fragment/a;->a(Lme/paranoid/wifikill/fragment/a;Z)Z

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lme/paranoid/wifikill/fragment/e;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-static {v0}, Lme/paranoid/wifikill/fragment/a;->d(Lme/paranoid/wifikill/fragment/a;)I

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/e;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-static {v0}, Lme/paranoid/wifikill/fragment/a;->e(Lme/paranoid/wifikill/fragment/a;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/e;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-static {v1}, Lme/paranoid/wifikill/fragment/a;->a(Lme/paranoid/wifikill/fragment/a;)Lme/paranoid/wifikill/service/a;

    move-result-object v1

    iget-object v1, v1, Lme/paranoid/wifikill/service/a;->h:Lme/paranoid/wifikill/service/b;

    invoke-virtual {v1}, Lme/paranoid/wifikill/service/b;->getGroupCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v0

    iget-object v1, p0, Lme/paranoid/wifikill/fragment/e;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-static {v1}, Lme/paranoid/wifikill/fragment/a;->e(Lme/paranoid/wifikill/fragment/a;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v0, v0, -0x2

    if-lt v1, v0, :cond_28

    iget-object v0, p0, Lme/paranoid/wifikill/fragment/e;->a:Lme/paranoid/wifikill/fragment/a;

    invoke-static {v0, v3}, Lme/paranoid/wifikill/fragment/a;->a(Lme/paranoid/wifikill/fragment/a;Z)Z

    goto :goto_28
.end method
