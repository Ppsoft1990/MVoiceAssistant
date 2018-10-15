.class public Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;
.super Landroid/app/Activity;
.source "RightAgreeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$StateHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RightAgreeActivity"


# instance fields
.field private mBackAction:Ljava/lang/String;

.field private mBackData:Landroid/net/Uri;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mSimpleWebView:Lcom/iflytek/viafly/basic/SimpleWebView;

.field private mStateHelper:Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$StateHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private delayKillProcess()V
    .locals 4

    .prologue
    .line 190
    const v0, 0x7f0c01d1

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 192
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$1;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$1;-><init>(Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 199
    return-void
.end method

.method private getScaleSize(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 172
    invoke-static {p0}, Lhl;->d(Landroid/content/Context;)I

    move-result v0

    .line 173
    .local v0, "width":I
    mul-int v1, v0, p1

    div-int/lit16 v1, v1, 0x2d0

    return v1
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 82
    const v2, 0x7f0b05ce

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    .local v1, "title":Landroid/widget/TextView;
    const/16 v2, 0x3c

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->getScaleSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 85
    const v2, 0x7f0b05d0

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 86
    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    const v2, 0x7f0b05cf

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 89
    .local v0, "root":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/iflytek/viafly/basic/SimpleWebView;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/basic/SimpleWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->mSimpleWebView:Lcom/iflytek/viafly/basic/SimpleWebView;

    .line 90
    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->mSimpleWebView:Lcom/iflytek/viafly/basic/SimpleWebView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->mSimpleWebView:Lcom/iflytek/viafly/basic/SimpleWebView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/basic/SimpleWebView;->a()V

    .line 93
    iget-object v2, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->mSimpleWebView:Lcom/iflytek/viafly/basic/SimpleWebView;

    const-string/jumbo v3, "file:///android_asset/web/right.html"

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/basic/SimpleWebView;->loadUrl(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private startHome()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->mBackAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->mBackData:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->mBackAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->mBackData:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 127
    :cond_0
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b05d2

    if-ne v0, v1, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->delayKillProcess()V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b05d3

    if-ne v0, v1, :cond_0

    .line 101
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_RIGHT_AGREEMENT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 103
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->c()Lcom/iflytek/viafly/ViaFlyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ViaFlyApp;->b()V

    .line 104
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->startHome()V

    .line 105
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v4, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$StateHelper;

    invoke-direct {v4, p0, p0}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$StateHelper;-><init>(Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->mStateHelper:Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$StateHelper;

    .line 56
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->requestWindowFeature(I)Z

    .line 57
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 58
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3, v5}, Landroid/view/Window;->setFormat(I)V

    .line 60
    const v4, 0x7f0300f7

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->setContentView(I)V

    .line 61
    const v4, 0x7f0b05d2

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 62
    .local v1, "buttonCancel":Landroid/widget/Button;
    iget-object v4, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->mStateHelper:Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$StateHelper;

    const v5, 0x7f020310

    const v6, 0x7f020311

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$StateHelper;->getStateDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    const v4, 0x7f0b05d3

    invoke-virtual {p0, v4}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    .local v0, "buttonAgree":Landroid/widget/Button;
    iget-object v4, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->mStateHelper:Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$StateHelper;

    const v5, 0x7f02030e

    const v6, 0x7f02030f

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$StateHelper;->getStateDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->initView()V

    .line 73
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 74
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 75
    const-string/jumbo v4, "backAction"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->mBackAction:Ljava/lang/String;

    .line 76
    const-string/jumbo v4, "backData"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->mBackData:Landroid/net/Uri;

    .line 79
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 112
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->delayKillProcess()V

    .line 115
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 210
    const-string/jumbo v0, "RightAgreeActivity"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 204
    const-string/jumbo v0, "RightAgreeActivity"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method public setRootTextSize(Landroid/view/ViewGroup;I)V
    .locals 6
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "size"    # I

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 178
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 179
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 180
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 181
    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 183
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 184
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {p0, v2, p2}, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->setRootTextSize(Landroid/view/ViewGroup;I)V

    .line 178
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_2
    return-void
.end method
