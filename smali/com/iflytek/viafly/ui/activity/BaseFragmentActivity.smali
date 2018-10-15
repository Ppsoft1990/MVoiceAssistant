.class public Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseFragmentActivity"


# instance fields
.field public mContentView:Landroid/widget/RelativeLayout;

.field private mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->destroy()V

    .line 90
    :cond_0
    return-void
.end method

.method public getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 34
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->requestWindowFeature(I)Z

    .line 36
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    new-instance v2, Lcom/iflytek/yd/ui/FragmentMediator;

    invoke-direct {v2}, Lcom/iflytek/yd/ui/FragmentMediator;-><init>()V

    iput-object v2, p0, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->mFragmentMediator:Lcom/iflytek/yd/ui/FragmentMediator;

    .line 43
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "color.window_bg"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    new-instance v2, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity$1;

    invoke-direct {v2, p0, p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity$1;-><init>(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->mContentView:Landroid/widget/RelativeLayout;

    .line 69
    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->mContentView:Landroid/widget/RelativeLayout;

    const v3, 0x6f0b0189

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 70
    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->mContentView:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 74
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 76
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 77
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 78
    .local v1, "statusBarColor":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 80
    .end local v1    # "statusBarColor":I
    :cond_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BaseFragmentActivity"

    const-string/jumbo v3, "onCreate()"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 117
    const-string/jumbo v0, "BaseFragmentActivity"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 111
    const-string/jumbo v0, "BaseFragmentActivity"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public onSoftInputMethodChange(Z)V
    .locals 0
    .param p1, "isShowing"    # Z

    .prologue
    .line 126
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 99
    invoke-static {p0}, Lwt;->a(Landroid/content/Context;)Lwt;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwt;->a(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 105
    invoke-static {p0}, Lwt;->a(Landroid/content/Context;)Lwt;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwt;->b(Ljava/lang/String;)V

    .line 106
    return-void
.end method
