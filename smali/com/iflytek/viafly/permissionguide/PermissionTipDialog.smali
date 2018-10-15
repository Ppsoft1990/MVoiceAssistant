.class public Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;
.super Lcom/iflytek/viafly/ui/activity/BaseDialog;
.source "PermissionTipDialog.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;-><init>()V

    .line 154
    new-instance v0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog$1;-><init>(Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;)V

    iput-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v6, -0x2

    .line 87
    new-instance v2, Lcom/iflytek/base/skin/customView/XLinearLayout;

    invoke-direct {v2, p0}, Lcom/iflytek/base/skin/customView/XLinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    .local v2, "subContentView":Lcom/iflytek/base/skin/customView/XLinearLayout;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 89
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setOrientation(I)V

    .line 91
    invoke-direct {p0}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->c()[Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "tips":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 93
    array-length v3, v5

    .line 94
    .local v3, "tipLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 95
    new-instance v4, Lcom/iflytek/base/skin/customView/XTextView;

    invoke-direct {v4, p0}, Lcom/iflytek/base/skin/customView/XTextView;-><init>(Landroid/content/Context;)V

    .line 96
    .local v4, "tipView":Lcom/iflytek/base/skin/customView/XTextView;
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-wide/high16 v8, 0x4039000000000000L    # 25.0

    invoke-static {v6, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v6

    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    invoke-static {v7, v8, v9}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v7

    invoke-virtual {v4, v6, v10, v7, v10}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    .line 98
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 99
    aget-object v6, v5, v0

    invoke-virtual {v4, v6}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const-string/jumbo v6, "style_dlg_text_tip"

    sget-object v7, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v4, v6, v7}, Lcom/iflytek/base/skin/customView/XTextView;->setCustomStyle(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 101
    invoke-virtual {v2, v4}, Lcom/iflytek/base/skin/customView/XLinearLayout;->addView(Landroid/view/View;)V

    .line 102
    invoke-virtual {v4}, Lcom/iflytek/base/skin/customView/XTextView;->getSpaceHelper()Lcom/iflytek/base/skin/customView/SpaceViewHelper;

    move-result-object v6

    const-string/jumbo v7, "20"

    sget-object v8, Lcom/iflytek/base/skin/space/SpaceType;->TOP:Lcom/iflytek/base/skin/space/SpaceType;

    invoke-virtual {v6, v7, v8}, Lcom/iflytek/base/skin/customView/SpaceViewHelper;->setSkinMargin(Ljava/lang/String;Lcom/iflytek/base/skin/space/SpaceType;)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    .end local v3    # "tipLength":I
    .end local v4    # "tipView":Lcom/iflytek/base/skin/customView/XTextView;
    :cond_0
    return-object v2
.end method

.method static synthetic b(Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "TIPS_INTENT_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 116
    :cond_0
    sget-object v1, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->a:Ljava/lang/String;

    const-string/jumbo v2, "onCreate null == intent || null == intent.getSerializableExtra(TIPS_INTENT_EXTRA"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->finish()V

    .line 124
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 119
    :cond_2
    const-string/jumbo v1, "TIPS_INTENT_EXTRA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->b:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->b:Ljava/lang/String;

    const-string/jumbo v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 170
    :try_start_0
    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 171
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 172
    .local v0, "currentRunningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 173
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 179
    .end local v0    # "currentRunningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v2    # "mActivityManager":Landroid/app/ActivityManager;
    :goto_0
    return-object v3

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->a:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->finish()V

    .line 137
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "targetPkg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->c:Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->d:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onDestroy()V

    .line 151
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 141
    sget-object v0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->a:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-super {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    return-void
.end method

.method protected registerListener()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    return-void
.end method

.method protected setView()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 58
    iget-object v3, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->setContentView(Landroid/view/View;)V

    .line 59
    iget-object v3, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getTitleBar()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    iget-object v3, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getSplitLine()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    invoke-direct {p0}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->b()Landroid/view/View;

    move-result-object v2

    .line 62
    .local v2, "subContentView":Landroid/view/View;
    iget-object v3, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v3

    const-wide v4, 0x4059c00000000000L    # 103.0

    invoke-static {p0, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 63
    iget-object v3, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 64
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 65
    const/4 v3, -0x2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    :cond_0
    iget-object v3, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    iget-object v3, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getFootBarLevel2()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    iget-object v3, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    iget-object v3, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f0c0147

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 71
    iget-object v3, p0, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->setSingleConfirmStatus()V

    .line 74
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 76
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 77
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 78
    .local v1, "statusBarColor":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/permissionguide/PermissionTipDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 80
    .end local v1    # "statusBarColor":I
    :cond_1
    return-void
.end method
