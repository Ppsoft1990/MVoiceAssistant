.class public Lali;
.super Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;
.source "MoviesSettingFragment.java"


# instance fields
.field private a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

.field private b:Laic;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laic;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic a(Lali;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
    .locals 1
    .param p0, "x0"    # Lali;

    .prologue
    .line 31
    iget-object v0, p0, Lali;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    return-object v0
.end method


# virtual methods
.method protected loadData(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 62
    const-string/jumbo v1, "\u63a8\u8350\u70ed\u6620\u7535\u5f71"

    invoke-virtual {p0, v1}, Lali;->setTipText(Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-direct {v1, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lali;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .line 64
    iget-object v1, p0, Lali;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const-string/jumbo v2, "\u6b63\u5728\u70ed\u6620"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitle(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lali;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v1, v4}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setBottomLineVisible(Z)V

    .line 66
    iget-object v1, p0, Lali;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {p0, v1}, Lali;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 68
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v1

    const-string/jumbo v2, "Movie"

    invoke-virtual {v1, v2}, Lakm;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lali;->c:Ljava/util/List;

    .line 69
    iget-object v1, p0, Lali;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lali;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 70
    iget-object v1, p0, Lali;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laic;

    .line 71
    .local v0, "homeCardItem":Laic;
    const-string/jumbo v2, "recommend"

    invoke-virtual {v0}, Laic;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lali;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 73
    iput-object v0, p0, Lali;->b:Laic;

    goto :goto_0

    .line 76
    .end local v0    # "homeCardItem":Laic;
    :cond_1
    iget-object v1, p0, Lali;->c:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laic;

    invoke-virtual {v1}, Laic;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lali;->d:Ljava/lang/String;

    .line 79
    :cond_2
    iget-object v1, p0, Lali;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    new-instance v2, Lali$1;

    invoke-direct {v2, p0}, Lali$1;-><init>(Lali;)V

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    .line 96
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->onDestroy()V

    .line 97
    const/4 v4, 0x0

    .line 98
    .local v4, "isChange":Z
    iget-object v5, p0, Lali;->b:Laic;

    if-nez v5, :cond_0

    iget-object v5, p0, Lali;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v5}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    const/4 v4, 0x1

    .line 100
    invoke-static {}, Laic;->v()Laic;

    move-result-object v5

    iput-object v5, p0, Lali;->b:Laic;

    .line 101
    iget-object v5, p0, Lali;->c:Ljava/util/List;

    const/4 v6, 0x0

    iget-object v7, p0, Lali;->b:Laic;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 103
    :cond_0
    iget-object v5, p0, Lali;->b:Laic;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lali;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v5}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 104
    const/4 v4, 0x1

    .line 105
    iget-object v5, p0, Lali;->c:Ljava/util/List;

    iget-object v6, p0, Lali;->b:Laic;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    if-eqz v4, :cond_3

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, "contentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v2, "contentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lali;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laic;

    .line 112
    .local v3, "homeCardItem":Laic;
    invoke-virtual {v3}, Laic;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v3}, Laic;->d()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    .end local v3    # "homeCardItem":Laic;
    :cond_2
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v5

    const-string/jumbo v6, "Movie"

    const-string/jumbo v7, "\u7535\u5f71\u5361\u7247"

    invoke-virtual {v5, v6, v7, v1, v2}, Lakm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 116
    new-instance v0, Laia;

    invoke-direct {v0}, Laia;-><init>()V

    .line 117
    .local v0, "changeOrderEvent":Laia;
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    invoke-virtual {v5, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 119
    .end local v0    # "changeOrderEvent":Laia;
    .end local v1    # "contentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "contentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    const-string/jumbo v0, "MoviesSettingFragment"

    const-string/jumbo v1, "onViewCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string/jumbo v0, "\u7535\u5f71"

    invoke-virtual {p0, v0}, Lali;->setTitleText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lali;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100125"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 57
    return-void
.end method
