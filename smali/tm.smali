.class public Ltm;
.super Ltl;
.source "UserVoiceLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/iflytek/base/skin/customView/XImageView;

.field private d:Lcom/iflytek/viafly/ui/view/CircleImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/content/Context;

.field private final i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/view/View$OnTouchListener;

.field private l:Landroid/os/Handler;

.field private m:Lkr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ltl;-><init>()V

    .line 55
    const-string/jumbo v0, "UserVoiceLoginFragment"

    iput-object v0, p0, Ltm;->b:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "click_migu"

    iput-object v0, p0, Ltm;->i:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "voice"

    iput-object v0, p0, Ltm;->j:Ljava/lang/String;

    .line 148
    new-instance v0, Ltm$1;

    invoke-direct {v0, p0}, Ltm$1;-><init>(Ltm;)V

    iput-object v0, p0, Ltm;->k:Landroid/view/View$OnTouchListener;

    .line 239
    new-instance v0, Ltm$3;

    invoke-direct {v0, p0}, Ltm$3;-><init>(Ltm;)V

    iput-object v0, p0, Ltm;->l:Landroid/os/Handler;

    .line 276
    new-instance v0, Ltm$4;

    invoke-direct {v0, p0}, Ltm$4;-><init>(Ltm;)V

    iput-object v0, p0, Ltm;->m:Lkr;

    return-void
.end method

.method static synthetic a(Ltm;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ltm;

    .prologue
    .line 54
    invoke-virtual {p0}, Ltm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ltm;)V
    .locals 0
    .param p0, "x0"    # Ltm;

    .prologue
    .line 54
    invoke-direct {p0}, Ltm;->k()V

    return-void
.end method

.method static synthetic c(Ltm;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Ltm;

    .prologue
    .line 54
    iget-object v0, p0, Ltm;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Ltm;)V
    .locals 0
    .param p0, "x0"    # Ltm;

    .prologue
    .line 54
    invoke-direct {p0}, Ltm;->l()V

    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Lth;->a()Lth;

    move-result-object v3

    invoke-virtual {v3}, Lth;->k()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "localUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ltm;->d:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {v3, v4, v5}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 137
    .end local v1    # "localUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 129
    .restart local v1    # "localUrl":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lth;->a()Lth;

    move-result-object v3

    invoke-virtual {v3}, Lth;->l()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v3

    iget-object v4, p0, Ltm;->d:Lcom/iflytek/viafly/ui/view/CircleImageView;

    invoke-virtual {v3, v2, v4}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v1    # "localUrl":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "UserVoiceLoginFragment"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 190
    const-string/jumbo v0, "UserVoiceLoginFragment"

    const-string/jumbo v1, "handleMicClick"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Ltm;->h()V

    .line 194
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    iget-object v1, p0, Ltm;->m:Lkr;

    invoke-virtual {v0, v1}, Ltj;->b(Lkr;)V

    .line 195
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "token":Ljava/lang/String;
    invoke-static {}, Lmz;->h()Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    move-result-object v0

    .line 220
    .local v0, "info":Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lmz;->b(Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;->getTokenId()Ljava/lang/String;

    move-result-object v1

    .line 223
    :cond_0
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    new-instance v3, Ltm$2;

    invoke-direct {v3, p0}, Ltm$2;-><init>(Ltm;)V

    invoke-virtual {v2, v3, v1}, Lth;->a(Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;Ljava/lang/String;)V

    .line 237
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f030156

    return v0
.end method

.method protected a(Landroid/view/View;)V
    .locals 6
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0b0797

    const/4 v5, 0x4

    .line 93
    const v2, 0x7f0b0790

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/ui/view/CircleImageView;

    iput-object v2, p0, Ltm;->d:Lcom/iflytek/viafly/ui/view/CircleImageView;

    .line 94
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v2, p0, Ltm;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 96
    iget-object v2, p0, Ltm;->c:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v3, p0, Ltm;->k:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    const v2, 0x7f0b0794

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Ltm;->f:Landroid/widget/TextView;

    .line 98
    const v2, 0x7f0b02e5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Ltm;->e:Landroid/widget/TextView;

    .line 99
    const v2, 0x7f0b0792

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Ltm;->g:Landroid/widget/TextView;

    .line 101
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->i()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "phoneNum":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    iget-object v2, p0, Ltm;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v2

    invoke-virtual {v2}, Ltj;->g()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    .line 109
    iget-object v2, p0, Ltm;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_1
    :goto_0
    invoke-direct {p0}, Ltm;->j()V

    .line 119
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 120
    return-void

    .line 112
    :cond_2
    const-string/jumbo v2, "\u83b7\u53d6\u5bc6\u7801\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v2}, Ltm;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 443
    iput-object p1, p0, Ltm;->j:Ljava/lang/String;

    .line 444
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 421
    const-string/jumbo v0, "click_migu"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Ltm;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v1

    iget-object v0, p0, Ltm;->h:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    sget-object v3, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    iget-object v4, p0, Ltm;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->b(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    .line 425
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const-string/jumbo v0, "UserVoiceLoginFragment"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0, p1}, Ltl;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Ltm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Ltm;->h:Landroid/content/Context;

    .line 78
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2, p3}, Ltm;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Ltl;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Ltm;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Ltm;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 415
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 416
    invoke-super {p0}, Ltl;->onDestroy()V

    .line 417
    return-void
.end method

.method public onEvent(Lti;)V
    .locals 6
    .param p1, "event"    # Lti;

    .prologue
    .line 429
    if-nez p1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-virtual {p1}, Lti;->a()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "eventType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    const-string/jumbo v1, "UserVoiceLoginFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voice login get Login event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string/jumbo v1, "UserLoginEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Ltm;->l:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 405
    const-string/jumbo v0, "UserVoiceLoginFragment"

    const-string/jumbo v1, "onPause "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-super {p0}, Ltl;->onPause()V

    .line 407
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 399
    const-string/jumbo v0, "UserVoiceLoginFragment"

    const-string/jumbo v1, "onStop "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-super {p0}, Ltl;->onStop()V

    .line 401
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 199
    invoke-super {p0, p1, p2}, Ltl;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 200
    const-string/jumbo v3, "\u58f0\u7eb9\u767b\u5f55"

    invoke-virtual {p0, v3}, Ltm;->setTitleText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {p0}, Ltm;->getTitleBar()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 203
    .local v1, "relativeLayout":Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 205
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Ltm;->h:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 206
    .local v2, "textView":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 207
    iget-object v3, p0, Ltm;->h:Landroid/content/Context;

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    invoke-static {v3, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v2, v6, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 208
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    const-string/jumbo v3, "\u5176\u4ed6\u65b9\u5f0f\u767b\u5f55"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {p0}, Ltm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 212
    const-string/jumbo v3, "click_migu"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 215
    return-void
.end method
