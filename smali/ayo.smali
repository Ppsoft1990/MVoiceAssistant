.class public Layo;
.super Ljava/lang/Object;
.source "TranslateResultDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layo$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/FrameLayout;

.field private g:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

.field private h:Layo$a;

.field private i:I

.field private j:Lcom/iflytek/framework/ui/share/AbsShareResultListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/translate/entity/TranslateResultItem;I)V
    .locals 1
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "mResultItemList"    # Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    .param p3, "position"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lcom/iflytek/viafly/translate/helper/TranslateResultDialogHelper$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/translate/helper/TranslateResultDialogHelper$1;-><init>(Layo;)V

    iput-object v0, p0, Layo;->j:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    .line 80
    iput-object p1, p0, Layo;->b:Landroid/content/Context;

    .line 81
    iput p3, p0, Layo;->i:I

    .line 82
    iput-object p2, p0, Layo;->g:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    .line 83
    invoke-direct {p0}, Layo;->f()V

    .line 84
    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "visiable"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 60
    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p0, Layo;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Layo;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Layo;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Layo;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Layo;->b:Landroid/content/Context;

    const v1, 0x7f030148

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Layo;->a:Landroid/view/View;

    .line 89
    iget-object v0, p0, Layo;->a:Landroid/view/View;

    const v1, 0x7f0b0759

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Layo;->c:Landroid/widget/FrameLayout;

    .line 90
    iget-object v0, p0, Layo;->a:Landroid/view/View;

    const v1, 0x7f0b075a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Layo;->d:Landroid/widget/FrameLayout;

    .line 91
    iget-object v0, p0, Layo;->a:Landroid/view/View;

    const v1, 0x7f0b075b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Layo;->e:Landroid/widget/FrameLayout;

    .line 92
    iget-object v0, p0, Layo;->a:Landroid/view/View;

    const v1, 0x7f0b075c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Layo;->f:Landroid/widget/FrameLayout;

    .line 93
    iget-object v0, p0, Layo;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Layo;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Layo;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Layo;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Layo;->f()V

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Layo;->a(Z)V

    .line 40
    iget-object v0, p0, Layo;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Layo$a;)V
    .locals 0
    .param p1, "onResultMenuClickListener"    # Layo$a;

    .prologue
    .line 70
    iput-object p1, p0, Layo;->h:Layo$a;

    .line 71
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v0, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_session"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Layo;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    const-string/jumbo v2, "FT69501"

    invoke-virtual {v1, v2, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Layo;->f()V

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Layo;->a(Z)V

    .line 46
    iget-object v0, p0, Layo;->a:Landroid/view/View;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v0, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_session"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Layo;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    const-string/jumbo v2, "FT89517"

    invoke-virtual {v1, v2, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public c()Landroid/view/View;
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Layo;->f()V

    .line 51
    iget-object v0, p0, Layo;->f:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Layo;->a:Landroid/view/View;

    return-object v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 148
    iget-object v1, p0, Layo;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/iflytek/base/clipboard/ClipboardManager;->getInstance(Landroid/content/Context;)Lcom/iflytek/base/clipboard/ClipboardManager;

    move-result-object v0

    .line 149
    .local v0, "cm":Lcom/iflytek/base/clipboard/ClipboardManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Layo;->g:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getOriginal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Layo;->g:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/clipboard/ClipboardManager;->copy(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v1, p0, Layo;->b:Landroid/content/Context;

    const-string/jumbo v2, "\u590d\u5236\u6210\u529f!"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 151
    return-void
.end method

.method public e()V
    .locals 5

    .prologue
    .line 154
    iget-object v0, p0, Layo;->b:Landroid/content/Context;

    iget-object v1, p0, Layo;->g:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v1}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getOriginal()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Layo;->g:Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v2}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->getTranslated()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "translateMain"

    iget-object v4, p0, Layo;->j:Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    invoke-static {v0, v1, v2, v3, v4}, Lazu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/framework/ui/share/AbsShareResultListener;)V

    .line 155
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 101
    iget-object v0, p0, Layo;->h:Layo$a;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Layo;->h:Layo$a;

    invoke-interface {v0}, Layo$a;->a()V

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v0, p0, Layo;->h:Layo$a;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Layo;->h:Layo$a;

    iget v1, p0, Layo;->i:I

    invoke-interface {v0, v1}, Layo$a;->a(I)V

    .line 109
    :cond_2
    iget v0, p0, Layo;->i:I

    if-eq v2, v0, :cond_1

    .line 110
    const-string/jumbo v0, "edit"

    invoke-virtual {p0, v0}, Layo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Layo;->h:Layo$a;

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Layo;->h:Layo$a;

    iget v1, p0, Layo;->i:I

    invoke-interface {v0, v1}, Layo$a;->b(I)V

    .line 118
    :cond_3
    iget v0, p0, Layo;->i:I

    if-eq v2, v0, :cond_1

    .line 119
    sget-boolean v0, Laxp;->b:Z

    if-eqz v0, :cond_4

    .line 120
    const-string/jumbo v0, "fullscreen"

    invoke-virtual {p0, v0}, Layo;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_4
    const-string/jumbo v0, "fullscreen"

    invoke-virtual {p0, v0}, Layo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :pswitch_2
    invoke-virtual {p0}, Layo;->d()V

    .line 128
    iget v0, p0, Layo;->i:I

    if-ne v2, v0, :cond_5

    .line 129
    iget-object v0, p0, Layo;->b:Landroid/content/Context;

    invoke-static {v0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "copy"

    invoke-virtual {v0, v1}, Lxq;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_5
    sget-boolean v0, Laxp;->b:Z

    if-eqz v0, :cond_6

    .line 132
    const-string/jumbo v0, "copyresult"

    invoke-virtual {p0, v0}, Layo;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_6
    const-string/jumbo v0, "copyresult"

    invoke-virtual {p0, v0}, Layo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_3
    invoke-virtual {p0}, Layo;->e()V

    .line 140
    const-string/jumbo v0, "share"

    invoke-virtual {p0, v0}, Layo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0759
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
