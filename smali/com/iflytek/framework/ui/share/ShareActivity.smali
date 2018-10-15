.class public Lcom/iflytek/framework/ui/share/ShareActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseActivity;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mBuildList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/framework/ui/share/LxShareObject$Build;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelBtn:Landroid/widget/TextView;

.field private mShareActivityListener:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

.field private mShareBeyondView:Landroid/widget/LinearLayout;

.field private mShareGridView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    const-string/jumbo v0, "shareList"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mBuildList:Ljava/util/ArrayList;

    .line 117
    invoke-static {}, Lazu;->a()Lazu;

    move-result-object v0

    invoke-virtual {v0}, Lazu;->b()Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mShareActivityListener:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    .line 118
    return-void
.end method

.method private initListener()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mShareBeyondView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mShareGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 95
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mHead:Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 96
    invoke-virtual {p0, v2}, Lcom/iflytek/framework/ui/share/ShareActivity;->setTitleBarVisible(Z)V

    .line 97
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mTitle:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v1, v3}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mRoot:Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/view/ResizeLinearLayout;->setBackgroundColor(I)V

    .line 100
    const v1, 0x7f0b056f

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/ui/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mShareBeyondView:Landroid/widget/LinearLayout;

    .line 101
    const v1, 0x7f0b056e

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/ui/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mCancelBtn:Landroid/widget/TextView;

    .line 102
    const v1, 0x7f0b0669

    invoke-virtual {p0, v1}, Lcom/iflytek/framework/ui/share/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mShareGridView:Landroid/widget/GridView;

    .line 103
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mBuildList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/iflytek/framework/ui/share/ShareAdapter;

    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mBuildList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/iflytek/framework/ui/share/ShareAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 107
    .local v0, "adapter":Lcom/iflytek/framework/ui/share/ShareAdapter;
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mShareGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/share/ShareActivity;->finish()V

    .line 88
    const/4 v0, 0x0

    const v1, 0x7f040004

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/framework/ui/share/ShareActivity;->overridePendingTransition(II)V

    .line 89
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f040004

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 48
    :pswitch_0
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/share/ShareActivity;->finish()V

    .line 50
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/ui/share/ShareActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 53
    :pswitch_1
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/share/ShareActivity;->finish()V

    .line 55
    invoke-virtual {p0, v1, v2}, Lcom/iflytek/framework/ui/share/ShareActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x7f0b056e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/share/ShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 38
    const v0, 0x7f03011e

    invoke-virtual {p0, v0}, Lcom/iflytek/framework/ui/share/ShareActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/share/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/framework/ui/share/ShareActivity;->handleIntent(Landroid/content/Intent;)V

    .line 40
    invoke-direct {p0}, Lcom/iflytek/framework/ui/share/ShareActivity;->initView()V

    .line 41
    invoke-direct {p0}, Lcom/iflytek/framework/ui/share/ShareActivity;->initListener()V

    .line 42
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 64
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mBuildList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mBuildList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 68
    .local v0, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/iflytek/yd/util/Share;->isShareAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mShareActivityListener:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    invoke-static {p0, v0, v1}, Lcom/iflytek/framework/ui/share/ShareUtils;->share(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/share/ShareActivity;->finish()V

    .line 76
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mShareActivityListener:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareActivity;->mShareActivityListener:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    iget-object v2, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v3, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/framework/ui/share/AbsShareResultListener;->onClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setSkin()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
