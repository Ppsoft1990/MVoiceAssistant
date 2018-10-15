.class public Lto;
.super Ltl;
.source "UserVoiceResetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/iflytek/base/skin/customView/XImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/view/View$OnTouchListener;

.field private j:Lkr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ltl;-><init>()V

    .line 38
    const-string/jumbo v0, "UserVoiceResetFragment"

    iput-object v0, p0, Lto;->b:Ljava/lang/String;

    .line 104
    new-instance v0, Lto$1;

    invoke-direct {v0, p0}, Lto$1;-><init>(Lto;)V

    iput-object v0, p0, Lto;->i:Landroid/view/View$OnTouchListener;

    .line 167
    new-instance v0, Lto$2;

    invoke-direct {v0, p0}, Lto$2;-><init>(Lto;)V

    iput-object v0, p0, Lto;->j:Lkr;

    return-void
.end method

.method static synthetic a(Lto;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lto;

    .prologue
    .line 37
    invoke-virtual {p0}, Lto;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lto;Z)V
    .locals 0
    .param p0, "x0"    # Lto;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lto;->d(Z)V

    return-void
.end method

.method static synthetic b(Lto;)V
    .locals 0
    .param p0, "x0"    # Lto;

    .prologue
    .line 37
    invoke-direct {p0}, Lto;->j()V

    return-void
.end method

.method static synthetic c(Lto;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lto;

    .prologue
    .line 37
    iget-object v0, p0, Lto;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lto;)V
    .locals 0
    .param p0, "x0"    # Lto;

    .prologue
    .line 37
    invoke-direct {p0}, Lto;->k()V

    return-void
.end method

.method private d(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 83
    if-eqz p1, :cond_0

    .line 84
    const-string/jumbo v0, "\u8ba4\u8bc1\u58f0\u7eb9"

    invoke-virtual {p0, v0}, Lto;->setTitleText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lto;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lto;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string/jumbo v0, "\u6211\u7684\u58f0\u7eb9"

    invoke-virtual {p0, v0}, Lto;->setTitleText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lto;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lto;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic e(Lto;)V
    .locals 0
    .param p0, "x0"    # Lto;

    .prologue
    .line 37
    invoke-direct {p0}, Lto;->l()V

    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 145
    const-string/jumbo v0, "UserVoiceResetFragment"

    const-string/jumbo v1, "handleMicClick"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lto;->h()V

    .line 149
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    iget-object v1, p0, Lto;->j:Lkr;

    invoke-virtual {v0, v1}, Ltj;->b(Lkr;)V

    .line 150
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 351
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v0

    new-instance v1, Lto$5;

    invoke-direct {v1, p0}, Lto$5;-><init>(Lto;)V

    invoke-virtual {v0, v1}, Ltj;->b(Ltj$a;)V

    .line 385
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 388
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "user.voice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lto;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/account/ui/UserActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0}, Lto;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 391
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f030159

    return v0
.end method

.method protected a(Landroid/view/View;)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    const v1, 0x7f0b0797

    .line 68
    const v0, 0x7f0b07a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lto;->f:Landroid/widget/RelativeLayout;

    .line 69
    const v0, 0x7f0b07a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lto;->g:Landroid/widget/RelativeLayout;

    .line 70
    const v0, 0x7f0b07a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lto;->h:Landroid/widget/LinearLayout;

    .line 71
    iget-object v0, p0, Lto;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lto;->d(Z)V

    .line 74
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Lto;->c:Lcom/iflytek/base/skin/customView/XImageView;

    .line 76
    iget-object v0, p0, Lto;->c:Lcom/iflytek/base/skin/customView/XImageView;

    iget-object v1, p0, Lto;->i:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    const v0, 0x7f0b0794

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lto;->e:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0b02e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lto;->d:Landroid/widget/TextView;

    .line 80
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 348
    :goto_0
    :sswitch_0
    return-void

    .line 327
    :sswitch_1
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {p0}, Lto;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    const-string/jumbo v1, "\u91cd\u65b0\u5f55\u5165\uff0c\u5373\u5c06\u5220\u9664\u4e4b\u524d\u7684\u58f0\u7eb9\uff1f"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lto$4;

    invoke-direct {v3, p0, v0}, Lto$4;-><init>(Lto;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V

    .line 329
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u786e\u5b9a"

    sget-object v3, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v4, Lto$3;

    invoke-direct {v4, p0}, Lto$3;-><init>(Lto;)V

    .line 335
    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 341
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/16 v2, 0x11

    .line 342
    invoke-virtual {v1, v2, v5, v5}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    goto :goto_0

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x7f0b0797 -> :sswitch_0
        0x7f0b07a9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const-string/jumbo v0, "UserVoiceResetFragment"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0, p1}, Ltl;->onCreate(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lto;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Ltl;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/iflytek/base/skin/customView/XRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 315
    invoke-super {p0}, Ltl;->onDestroy()V

    .line 316
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 308
    const-string/jumbo v0, "UserVoiceResetFragment"

    const-string/jumbo v1, "onPause "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-super {p0}, Ltl;->onPause()V

    .line 310
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 302
    const-string/jumbo v0, "UserVoiceResetFragment"

    const-string/jumbo v1, "onStop "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-super {p0}, Ltl;->onStop()V

    .line 304
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x4

    .line 154
    invoke-super {p0, p1, p2}, Ltl;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 155
    const-string/jumbo v1, "\u8ba4\u8bc1\u58f0\u7eb9"

    invoke-virtual {p0, v1}, Lto;->setTitleText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-static {}, Ltj;->a()Ltj;

    move-result-object v1

    invoke-virtual {v1}, Ltj;->g()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 160
    iget-object v1, p0, Lto;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    const-string/jumbo v1, "\u83b7\u53d6\u5bc6\u7801\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {p0, v1}, Lto;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
