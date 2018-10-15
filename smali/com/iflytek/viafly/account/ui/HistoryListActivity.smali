.class public Lcom/iflytek/viafly/account/ui/HistoryListActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "HistoryListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->finish()V

    .line 72
    const/4 v0, 0x0

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/account/ui/HistoryListActivity;->overridePendingTransition(II)V

    .line 73
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 68
    :goto_0
    :pswitch_0
    return-void

    .line 48
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/listenbook/ui/BookHistoryListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/account/ui/HistoryListActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_operation"

    const-string/jumbo v3, "enterList"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90104"

    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 56
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/iflytek/viafly/music/MusicHistoryListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/account/ui/HistoryListActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_operation"

    const-string/jumbo v3, "enterList"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90103"

    invoke-virtual {v2, v3, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 63
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/account/ui/HistoryListActivity;->finish()V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x7f0b0237
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/HistoryListActivity;->setContentView(I)V

    .line 31
    const v0, 0x7f0b023a

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/HistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v0, 0x7f0b023c

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/HistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v0, 0x7f0b0237

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/account/ui/HistoryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/iflytek/viafly/account/ui/HistoryListActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 35
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_100118"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
