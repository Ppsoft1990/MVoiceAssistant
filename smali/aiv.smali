.class public Laiv;
.super Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;
.source "HomeAudioSettingFragment.java"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;-><init>()V

    .line 38
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Laic;
    .locals 2
    .param p1, "contentName"    # Ljava/lang/String;
    .param p2, "contentId"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Laic;

    invoke-direct {v0}, Laic;-><init>()V

    .line 113
    .local v0, "homeCardItem":Laic;
    const-string/jumbo v1, "AudioNews"

    invoke-virtual {v0, v1}, Laic;->a(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v1, "\u6709\u58f0\u8d44\u8baf"

    invoke-virtual {v0, v1}, Laic;->b(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p2}, Laic;->c(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p1}, Laic;->d(Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Laic;->a(I)V

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laic;->b(I)V

    .line 119
    return-object v0
.end method

.method static synthetic a(Laiv;)Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;
    .locals 1
    .param p0, "x0"    # Laiv;

    .prologue
    .line 28
    iget-object v0, p0, Laiv;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    return-object v0
.end method


# virtual methods
.method protected loadData(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const-string/jumbo v1, "\u63a8\u8350\u70ed\u95e8\u7684\u6709\u58f0\u8d44\u8baf"

    invoke-virtual {p0, v1}, Laiv;->setTipText(Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-direct {v1, p1}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Laiv;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    .line 57
    iget-object v1, p0, Laiv;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const-string/jumbo v2, "\u6709\u58f0\u8d44\u8baf"

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setTitle(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Laiv;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setBottomLineVisible(Z)V

    .line 59
    iget-object v1, p0, Laiv;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {p0, v1}, Laiv;->add(Lcom/iflytek/viafly/settings/ui/XBasePreferenceForSetting;)V

    .line 61
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v1

    const-string/jumbo v2, "AudioNews"

    invoke-virtual {v1, v2}, Lakm;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Laiv;->c:Ljava/util/List;

    .line 62
    iget-object v1, p0, Laiv;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Laiv;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 63
    iget-object v1, p0, Laiv;->c:Ljava/util/List;

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

    .line 64
    .local v0, "homeCardItem":Laic;
    const-string/jumbo v2, "recommend"

    invoke-virtual {v0}, Laic;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Laiv;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setChecked(Z)V

    .line 66
    iput-object v0, p0, Laiv;->b:Laic;

    goto :goto_0

    .line 70
    .end local v0    # "homeCardItem":Laic;
    :cond_1
    iget-object v1, p0, Laiv;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    new-instance v2, Laiv$1;

    invoke-direct {v2, p0}, Laiv$1;-><init>(Laiv;)V

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->setCheckBoxClick(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    .line 86
    invoke-super {p0}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->onDestroy()V

    .line 87
    const/4 v4, 0x0

    .line 88
    .local v4, "isChange":Z
    iget-object v5, p0, Laiv;->b:Laic;

    if-nez v5, :cond_0

    iget-object v5, p0, Laiv;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v5}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    const/4 v4, 0x1

    .line 90
    const-string/jumbo v5, "\u6709\u58f0\u8d44\u8baf"

    const-string/jumbo v6, "recommend"

    invoke-direct {p0, v5, v6}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Laic;

    move-result-object v5

    iput-object v5, p0, Laiv;->b:Laic;

    .line 91
    iget-object v5, p0, Laiv;->c:Ljava/util/List;

    const/4 v6, 0x0

    iget-object v7, p0, Laiv;->b:Laic;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    :cond_0
    iget-object v5, p0, Laiv;->b:Laic;

    if-eqz v5, :cond_1

    iget-object v5, p0, Laiv;->a:Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;

    invoke-virtual {v5}, Lcom/iflytek/viafly/settings/ui/XBaseSwtichCheckBoxForClickSetting;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 94
    const/4 v4, 0x1

    .line 95
    iget-object v5, p0, Laiv;->c:Ljava/util/List;

    iget-object v6, p0, Laiv;->b:Laic;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    if-eqz v4, :cond_3

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, "contentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v2, "contentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Laiv;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laic;

    .line 102
    .local v3, "homeCardItem":Laic;
    invoke-virtual {v3}, Laic;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v3}, Laic;->d()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v3    # "homeCardItem":Laic;
    :cond_2
    invoke-static {}, Lakm;->a()Lakm;

    move-result-object v5

    const-string/jumbo v6, "AudioNews"

    const-string/jumbo v7, "\u6709\u58f0\u8d44\u8baf"

    invoke-virtual {v5, v6, v7, v1, v2}, Lakm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 106
    new-instance v0, Laia;

    invoke-direct {v0}, Laia;-><init>()V

    .line 107
    .local v0, "changeOrderEvent":Laia;
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    invoke-virtual {v5, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 109
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
    .line 43
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/settings/ui/XBaseFragmentForSetting;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    const-string/jumbo v0, "\u6709\u58f0\u8d44\u8baf"

    invoke-virtual {p0, v0}, Laiv;->setTitleText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0}, Laiv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100104"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 50
    return-void
.end method
