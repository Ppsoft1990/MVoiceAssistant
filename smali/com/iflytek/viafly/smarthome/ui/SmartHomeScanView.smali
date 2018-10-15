.class public Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;
.super Landroid/widget/LinearLayout;
.source "SmartHomeScanView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;


# static fields
.field private static final MSG_SCAN_COMPLETE:I = 0x2

.field private static final MSG_SCAN_ERROR:I = 0x0

.field private static final MSG_SCAN_FOUND:I = 0x1

.field private static final MSG_SCAN_TIMEOUT:I = 0x3

.field private static final SCAN_TIMEOUT_MILLIIS:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "SmartHomeScanView"


# instance fields
.field final XHOME_PKG_NAME:Ljava/lang/String;

.field private mBtnJd:Landroid/widget/Button;

.field private mBtnMidea:Landroid/widget/Button;

.field private mBtnOther:Landroid/widget/Button;

.field private mCloseBtn:Lcom/iflytek/base/skin/customView/XTextView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLogoContainer:Landroid/widget/LinearLayout;

.field private mRadium:I

.field private mRotateAnimation:Landroid/view/animation/Animation;

.field private mScanContainer:Landroid/widget/RelativeLayout;

.field private mScanViewRotation:Landroid/widget/ImageView;

.field private mScanViewbg:Landroid/widget/RelativeLayout;

.field private mTips1:Landroid/widget/TextView;

.field private mTips2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 250
    new-instance v0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView$1;-><init>(Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mHandler:Landroid/os/Handler;

    .line 354
    const-string/jumbo v0, "com.iflytek.cmcc.xhome"

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->XHOME_PKG_NAME:Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->initView(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method private hanleNewVersion()V
    .locals 4

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 359
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.xhome"

    const/4 v3, 0x0

    .line 360
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 361
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 362
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 363
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mLogoContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanContainer:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 366
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mLogoContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v10, 0x16

    const/16 v9, 0x8

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    .line 87
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030125

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 92
    .local v7, "view":Landroid/view/View;
    const v0, 0x7f0b0694

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanViewRotation:Landroid/widget/ImageView;

    .line 93
    const v0, 0x7f0b0693

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanViewbg:Landroid/widget/RelativeLayout;

    .line 94
    const v0, 0x7f0b068f

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mCloseBtn:Lcom/iflytek/base/skin/customView/XTextView;

    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mCloseBtn:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mContext:Landroid/content/Context;

    invoke-static {v1, v10}, Lazk;->a(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {v2, v9}, Lazk;->a(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mContext:Landroid/content/Context;

    invoke-static {v3, v10}, Lazk;->a(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mContext:Landroid/content/Context;

    invoke-static {v4, v9}, Lazk;->a(Landroid/content/Context;I)I

    move-result v4

    .line 95
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iflytek/base/skin/customView/XTextView;->setPadding(IIII)V

    .line 97
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mCloseBtn:Lcom/iflytek/base/skin/customView/XTextView;

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mContext:Landroid/content/Context;

    const/16 v2, 0x21

    invoke-static {v1, v2}, Lazk;->a(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setTextSize(IF)V

    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mCloseBtn:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f0b0690

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mTips1:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mTips1:Landroid/widget/TextView;

    const/16 v1, 0x34

    invoke-static {p1, v1}, Lazk;->a(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 101
    const v0, 0x7f0b0692

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mTips2:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mTips2:Landroid/widget/TextView;

    const/16 v1, 0x24

    invoke-static {p1, v1}, Lazk;->a(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    const v0, 0x7f0b0691

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanContainer:Landroid/widget/RelativeLayout;

    .line 105
    const v0, 0x7f0b0695

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mLogoContainer:Landroid/widget/LinearLayout;

    .line 106
    const v0, 0x7f0b0698

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mBtnMidea:Landroid/widget/Button;

    .line 107
    const v0, 0x7f0b0697

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mBtnJd:Landroid/widget/Button;

    .line 108
    const v0, 0x7f0b0699

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mBtnOther:Landroid/widget/Button;

    .line 110
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mBtnMidea:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mBtnOther:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mBtnJd:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->hanleNewVersion()V

    .line 116
    return-void
.end method

.method private onClickOther()V
    .locals 3

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT90313"

    const/4 v2, 0x0

    .line 336
    invoke-virtual {v0, v1, v2}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 337
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mLogoContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->startScan2()V

    .line 340
    return-void
.end method

.method private onCliclMidea()V
    .locals 6

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v3

    const-string/jumbo v4, "FT90312"

    const/4 v5, 0x0

    .line 320
    invoke-virtual {v3, v4, v5}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 323
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;

    invoke-direct {v1, v0}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;-><init>(Landroid/content/Context;)V

    .line 324
    .local v1, "dialog":Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 325
    invoke-virtual {v1}, Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;->show()V

    .line 332
    .end local v1    # "dialog":Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;
    :goto_0
    return-void

    .line 327
    .restart local v1    # "dialog":Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;
    :cond_0
    const-string/jumbo v3, "SmartHomeScanView"

    const-string/jumbo v4, "onCliclMidea | context is finished"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    .end local v1    # "dialog":Lcom/iflytek/viafly/smarthome/ui/MideaLoginDialog;
    :catch_0
    move-exception v2

    .line 330
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SmartHomeScanView"

    const-string/jumbo v4, "onCliclMidea error"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeTimeoutMessage()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    const-string/jumbo v0, "SmartHomeScanView"

    const-string/jumbo v1, "removeTimeoutMsg"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method private sendTimeoutMessageDelayed()V
    .locals 6

    .prologue
    .line 235
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/16 v3, -0x3e8

    const/4 v4, 0x0

    const-string/jumbo v5, "\u626b\u63cf\u8d85\u65f6"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 236
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 238
    const-string/jumbo v1, "SmartHomeScanView"

    const-string/jumbo v2, "sendTimeoutMsgDelayed | delayed = 15000"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method private startAnimation()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 121
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRotateAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 122
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanViewRotation:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 123
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 124
    return-void
.end method


# virtual methods
.method public addDevicesDot(I)V
    .locals 12
    .param p1, "radium"    # I

    .prologue
    const/4 v11, -0x2

    .line 192
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mContext:Landroid/content/Context;

    const/16 v7, 0x1e

    invoke-static {v6, v7}, Lazk;->a(Landroid/content/Context;I)I

    move-result v6

    sub-int v6, p1, v6

    iput v6, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRadium:I

    .line 193
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRadium:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v4, v6

    .line 194
    .local v4, "randomX":I
    iget v6, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRadium:I

    int-to-double v6, v6

    iget v8, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRadium:I

    iget v9, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRadium:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRadium:I

    sub-int v9, v4, v9

    iget v10, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRadium:I

    sub-int v10, v4, v10

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-int v2, v6

    .line 195
    .local v2, "maxY":I
    iget v6, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRadium:I

    int-to-double v6, v6

    iget v8, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRadium:I

    iget v9, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRadium:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRadium:I

    sub-int v9, v4, v9

    iget v10, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRadium:I

    sub-int v10, v4, v10

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    double-to-int v3, v6

    .line 196
    .local v3, "minY":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    sub-int v8, v2, v3

    add-int/lit8 v8, v8, 0x1

    int-to-double v8, v8

    mul-double/2addr v6, v8

    int-to-double v8, v3

    add-double/2addr v6, v8

    double-to-int v5, v6

    .line 197
    .local v5, "randomY":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 198
    .local v1, "lpLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 199
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 200
    new-instance v0, Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/iflytek/base/skin/customView/XImageView;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, "imageView":Lcom/iflytek/base/skin/customView/XImageView;
    const-string/jumbo v6, "image.radar_equipment"

    sget-object v7, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v6, v7}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 202
    const-string/jumbo v6, "SmartHomeScanView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mRadium = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mRadium:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "randomX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " randomY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v6, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanViewbg:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    return-void
.end method

.method public getScanViewBg()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanViewbg:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mCloseBtn:Lcom/iflytek/base/skin/customView/XTextView;

    if-ne p1, v0, :cond_1

    .line 175
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getScanView()Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->removeTimeoutMessage()V

    .line 177
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->stopScan()V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mBtnMidea:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 180
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->onCliclMidea()V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mBtnOther:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 182
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->onClickOther()V

    goto :goto_0

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mBtnJd:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 184
    const-string/jumbo v0, "SmartHomeScanView"

    const-string/jumbo v1, "login jd"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v0

    const-string/jumbo v1, "FT90311"

    const/4 v2, 0x0

    .line 186
    invoke-virtual {v0, v1, v2}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 187
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->startLoginJd(Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;)V

    goto :goto_0
.end method

.method public onCompleted(Z)V
    .locals 4
    .param p1, "showWifi"    # Z

    .prologue
    .line 227
    const-string/jumbo v0, "SmartHomeScanView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCompleted | showWifi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 229
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 220
    const-string/jumbo v0, "SmartHomeScanView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError | code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 222
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->removeTimeoutMessage()V

    .line 223
    return-void
.end method

.method public onFound(Lcom/iflytek/viafly/smarthome/base/DeviceItem;)V
    .locals 3
    .param p1, "item"    # Lcom/iflytek/viafly/smarthome/base/DeviceItem;

    .prologue
    .line 212
    const-string/jumbo v0, "SmartHomeScanView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFound | DeviceItem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    invoke-static {}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->getInstance()Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/smarthome/SmartHomeScanHelper;->addDevices(Lcom/iflytek/viafly/smarthome/base/DeviceItem;)V

    .line 215
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->removeTimeoutMessage()V

    .line 216
    return-void
.end method

.method public onJdLoginSuccess()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mLogoContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->startScan2()V

    .line 352
    return-void
.end method

.method public onMideaLoginSuccess()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mLogoContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->startScan2()V

    .line 346
    return-void
.end method

.method public startScan()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->startAnimation()V

    .line 129
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->startScan(Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;)V

    .line 131
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->removeTimeoutMessage()V

    .line 132
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->sendTimeoutMessageDelayed()V

    .line 134
    :cond_0
    return-void
.end method

.method public startScan2()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->startAnimation()V

    .line 140
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->startScan(Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;)V

    .line 142
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->removeTimeoutMessage()V

    .line 143
    invoke-direct {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->sendTimeoutMessageDelayed()V

    .line 145
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanViewRotation:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 170
    return-void
.end method

.method public stopScan()V
    .locals 5

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->stopAnimation()V

    .line 149
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->stopScan(Lcom/iflytek/viafly/smarthome/found/SmartScanObserver;)V

    .line 150
    invoke-virtual {p0}, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 151
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/iflytek/viafly/HomeRootView;->removeView(Landroid/view/View;)V

    .line 153
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v1, "dotChildren":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanViewbg:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 166
    :cond_1
    return-void

    .line 157
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanViewbg:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 158
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanViewbg:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanViewRotation:Landroid/widget/ImageView;

    if-eq v0, v3, :cond_3

    .line 160
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 164
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Lcom/iflytek/viafly/smarthome/ui/SmartHomeScanView;->mScanViewbg:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method
