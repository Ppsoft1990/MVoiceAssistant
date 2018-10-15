.class public Layp;
.super Ljava/lang/Object;
.source "TranslateTitleBarHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layp$a;
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/ImageView;

.field public c:Lcom/iflytek/base/skin/customView/XTextView;

.field public d:Lcom/iflytek/base/skin/customView/XTextView;

.field private f:Landroid/content/Context;

.field private g:Landroid/view/View;

.field private h:Lcom/iflytek/base/skin/customView/XImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/PopupWindow;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Layk;

.field private q:Layp$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "TranslateTitleBarHelper"

    sput-object v0, Layp;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Layp;->f:Landroid/content/Context;

    .line 61
    new-instance v0, Layk;

    invoke-direct {v0, p1, p0}, Layk;-><init>(Landroid/content/Context;Layp;)V

    iput-object v0, p0, Layp;->p:Layk;

    .line 62
    invoke-direct {p0}, Layp;->k()V

    .line 64
    return-void
.end method

.method static synthetic a(Layp;)Layp$a;
    .locals 1
    .param p0, "x0"    # Layp;

    .prologue
    .line 32
    iget-object v0, p0, Layp;->q:Layp$a;

    return-object v0
.end method

.method private a(ZLcom/iflytek/viafly/translate/TranslateLanguageType;)Ljava/lang/String;
    .locals 3
    .param p1, "isCntoOther"    # Z
    .param p2, "translateLanguageType"    # Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "lang":Ljava/lang/String;
    sget-object v1, Layp$3;->a:[I

    invoke-virtual {p2}, Lcom/iflytek/viafly/translate/TranslateLanguageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 405
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "cn_en"

    .end local v0    # "lang":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 365
    .restart local v0    # "lang":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "cn_en"

    .line 366
    if-eqz p1, :cond_1

    .line 367
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEn:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v1}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    goto :goto_0

    .line 369
    :cond_1
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->EnToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v1}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    goto :goto_0

    .line 373
    :pswitch_1
    const-string/jumbo v0, "cn_jp"

    .line 374
    if-eqz p1, :cond_2

    .line 375
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->CnToJp:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v1}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    goto :goto_0

    .line 377
    :cond_2
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->JpToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v1}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    goto :goto_0

    .line 381
    :pswitch_2
    const-string/jumbo v0, "cn_kr"

    .line 382
    if-eqz p1, :cond_3

    .line 383
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->CnToKr:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v1}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    goto :goto_0

    .line 385
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->KrToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v1}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    goto :goto_0

    .line 389
    :pswitch_3
    const-string/jumbo v0, "cn_fr"

    .line 390
    if-eqz p1, :cond_4

    .line 391
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->CnToFr:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v1}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    goto :goto_0

    .line 393
    :cond_4
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->FrToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v1}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    goto :goto_0

    .line 397
    :pswitch_4
    const-string/jumbo v0, "cn_es"

    .line 398
    if-eqz p1, :cond_5

    .line 399
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEs:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v1}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    goto :goto_0

    .line 401
    :cond_5
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->EsToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-static {v1}, Laxp;->a(Lcom/iflytek/viafly/translate/TranslateMode;)V

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private b(I)V
    .locals 8
    .param p1, "xOffset"    # I

    .prologue
    const/4 v6, 0x1

    .line 212
    iget-object v1, p0, Layp;->p:Layk;

    invoke-virtual {v1}, Layk;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 213
    .local v0, "view":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Layp;->f:Landroid/content/Context;

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    invoke-static {v2, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Layp;->m:Landroid/widget/PopupWindow;

    .line 214
    iget-object v1, p0, Layp;->m:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v1, p0, Layp;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 218
    iget-object v1, p0, Layp;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 221
    iget-object v1, p0, Layp;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Layp;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v1, p0, Layp;->m:Landroid/widget/PopupWindow;

    iget-object v2, p0, Layp;->g:Landroid/view/View;

    const/16 v3, 0x31

    iget-object v4, p0, Layp;->f:Landroid/content/Context;

    int-to-double v6, p1

    .line 227
    invoke-static {v4, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    iget-object v5, p0, Layp;->f:Landroid/content/Context;

    const-wide/high16 v6, 0x404f000000000000L    # 62.0

    invoke-static {v5, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    .line 226
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Layp;->f:Landroid/content/Context;

    const v1, 0x7f03014d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Layp;->g:Landroid/view/View;

    .line 71
    iget-object v0, p0, Layp;->g:Landroid/view/View;

    const v1, 0x7f0b076f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XImageView;

    iput-object v0, p0, Layp;->h:Lcom/iflytek/base/skin/customView/XImageView;

    .line 72
    iget-object v0, p0, Layp;->g:Landroid/view/View;

    const v1, 0x7f0b0771

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Layp;->i:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Layp;->g:Landroid/view/View;

    const v1, 0x7f0b0770

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Layp;->j:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Layp;->g:Landroid/view/View;

    const v1, 0x7f0b0737

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Layp;->n:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Layp;->g:Landroid/view/View;

    const v1, 0x7f0b0738

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Layp;->c:Lcom/iflytek/base/skin/customView/XTextView;

    .line 76
    iget-object v0, p0, Layp;->g:Landroid/view/View;

    const v1, 0x7f0b073a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/base/skin/customView/XTextView;

    iput-object v0, p0, Layp;->d:Lcom/iflytek/base/skin/customView/XTextView;

    .line 77
    iget-object v0, p0, Layp;->g:Landroid/view/View;

    const v1, 0x7f0b0739

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Layp;->a:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Layp;->g:Landroid/view/View;

    const v1, 0x7f0b0772

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Layp;->o:Landroid/widget/LinearLayout;

    .line 80
    iget-object v0, p0, Layp;->g:Landroid/view/View;

    const v1, 0x7f0b0773

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Layp;->k:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Layp;->g:Landroid/view/View;

    const v1, 0x7f0b0775

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Layp;->l:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Layp;->g:Landroid/view/View;

    const v1, 0x7f0b0774

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Layp;->b:Landroid/widget/ImageView;

    .line 84
    iget-object v0, p0, Layp;->h:Lcom/iflytek/base/skin/customView/XImageView;

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Layp;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Layp;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Layp;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Layp;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Layp;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method private l()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 132
    iget-object v4, p0, Layp;->k:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "sourceLanguage":Ljava/lang/String;
    iget-object v4, p0, Layp;->l:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "targetLanguage":Ljava/lang/String;
    iget-object v4, p0, Layp;->k:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v4, p0, Layp;->l:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    sget-object v3, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 138
    .local v3, "tempType":Lcom/iflytek/viafly/translate/TranslateLanguageType;
    sget-object v4, Laxp;->e:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v4, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 139
    sput-object v3, Laxp;->e:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 141
    invoke-virtual {p0, v6}, Layp;->a(I)V

    .line 144
    sget-object v4, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Cn:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sget-object v5, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    if-eq v4, v5, :cond_0

    .line 145
    iget-object v4, p0, Layp;->l:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 150
    :goto_0
    iget-object v4, p0, Layp;->p:Layk;

    invoke-virtual {v4}, Layk;->e()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "modeLog":Ljava/lang/String;
    iget-object v4, p0, Layp;->p:Layk;

    invoke-virtual {v4, v0}, Layk;->b(Ljava/lang/String;)V

    .line 152
    return-void

    .line 147
    .end local v0    # "modeLog":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Layp;->l:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private m()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 188
    iget-object v1, p0, Layp;->p:Layk;

    invoke-virtual {v1}, Layk;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 189
    .local v0, "view":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Layp;->f:Landroid/content/Context;

    const-wide/high16 v4, 0x4064000000000000L    # 160.0

    invoke-static {v2, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Layp;->m:Landroid/widget/PopupWindow;

    .line 190
    iget-object v1, p0, Layp;->m:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v1, p0, Layp;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 194
    iget-object v1, p0, Layp;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 197
    iget-object v1, p0, Layp;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Layp;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 206
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Layp;->m:Landroid/widget/PopupWindow;

    iget-object v2, p0, Layp;->g:Landroid/view/View;

    const/16 v3, 0x35

    iget-object v4, p0, Layp;->f:Landroid/content/Context;

    const-wide v6, 0x4047800000000000L    # 47.0

    .line 204
    invoke-static {v4, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v4

    iget-object v5, p0, Layp;->f:Landroid/content/Context;

    const-wide/high16 v6, 0x404f000000000000L    # 62.0

    invoke-static {v5, v6, v7}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    .line 202
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private n()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Layp;->c:Lcom/iflytek/base/skin/customView/XTextView;

    const-string/jumbo v1, "\u4e2d\u6587"

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Layp;->d:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Layp;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Layp;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Layp;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Layp;->m:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public a(Lcom/iflytek/viafly/translate/TranslateLanguageType;)Ljava/lang/String;
    .locals 3
    .param p1, "languageType"    # Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Layp$3;->a:[I

    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/TranslateLanguageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 433
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "\u82f1\u6587"

    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 412
    .restart local v0    # "name":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "\u81ea\u52a8\u68c0\u6d4b"

    .line 413
    goto :goto_0

    .line 415
    :pswitch_1
    const-string/jumbo v0, "\u4e2d\u6587"

    .line 416
    goto :goto_0

    .line 418
    :pswitch_2
    const-string/jumbo v0, "\u82f1\u6587"

    .line 419
    goto :goto_0

    .line 421
    :pswitch_3
    const-string/jumbo v0, "\u65e5\u6587"

    .line 422
    goto :goto_0

    .line 424
    :pswitch_4
    const-string/jumbo v0, "\u97e9\u6587"

    .line 425
    goto :goto_0

    .line 427
    :pswitch_5
    const-string/jumbo v0, "\u6cd5\u6587"

    .line 428
    goto :goto_0

    .line 430
    :pswitch_6
    const-string/jumbo v0, "\u897f\u73ed\u7259\u6587"

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 155
    iget-object v0, p0, Layp;->q:Layp$a;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Layp;->q:Layp$a;

    invoke-interface {v0, p1}, Layp$a;->a(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public a(Layp$a;)V
    .locals 0
    .param p1, "onTranslateTitleClickListener"    # Layp$a;

    .prologue
    .line 57
    iput-object p1, p0, Layp;->q:Layp$a;

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "titleName"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x4

    .line 236
    iget-object v0, p0, Layp;->c:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, p1}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Layp;->d:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {v0, v2}, Lcom/iflytek/base/skin/customView/XTextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Layp;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Layp;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Layp;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Layp;->g:Landroid/view/View;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 5
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 267
    const-string/jumbo v2, "edit"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Layp;->g:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 269
    const-string/jumbo v2, "\u7f16\u8f91"

    invoke-virtual {p0, v2}, Layp;->a(Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 270
    :cond_0
    const-string/jumbo v2, "fullscreen"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    iget-object v2, p0, Layp;->g:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 272
    :cond_1
    const-string/jumbo v2, "reporterror"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    iget-object v2, p0, Layp;->g:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    const-string/jumbo v2, "\u62a5\u9519"

    invoke-virtual {p0, v2}, Layp;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_2
    const-string/jumbo v2, "channel"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 276
    iget-object v2, p0, Layp;->g:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v2, p0, Layp;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    iget-object v2, p0, Layp;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    invoke-direct {p0}, Layp;->n()V

    .line 280
    iget-object v2, p0, Layp;->j:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 282
    :cond_3
    const-string/jumbo v2, "texttranslate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 283
    iget-object v2, p0, Layp;->g:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v2, p0, Layp;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object v2, p0, Layp;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    iget-object v2, p0, Layp;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v2, p0, Layp;->j:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    sget-boolean v2, Laxp;->c:Z

    if-nez v2, :cond_4

    .line 290
    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Auto:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v2, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 293
    :cond_4
    sget-object v2, Laxp;->e:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    if-nez v2, :cond_5

    .line 294
    sget-object v2, Lcom/iflytek/viafly/translate/TranslateLanguageType;->En:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sput-object v2, Laxp;->e:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 297
    :cond_5
    sget-object v2, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    invoke-virtual {p0, v2}, Layp;->a(Lcom/iflytek/viafly/translate/TranslateLanguageType;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "sourceName":Ljava/lang/String;
    sget-object v2, Laxp;->e:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    invoke-virtual {p0, v2}, Layp;->a(Lcom/iflytek/viafly/translate/TranslateLanguageType;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "targetName":Ljava/lang/String;
    iget-object v2, p0, Layp;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v2, p0, Layp;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {p0}, Layp;->d()V

    goto/16 :goto_0

    .line 304
    .end local v0    # "sourceName":Ljava/lang/String;
    .end local v1    # "targetName":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Layp;->g:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v2, p0, Layp;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    iget-object v2, p0, Layp;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    invoke-direct {p0}, Layp;->n()V

    goto/16 :goto_0
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 165
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    iget-object v1, p0, Layp;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;
    const-string/jumbo v1, "\u662f\u5426\u6e05\u7a7a\u6240\u6709\u7ffb\u8bd1\u8bb0\u5f55\uff1f"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Layp$2;

    invoke-direct {v3, p0}, Layp$2;-><init>(Layp;)V

    .line 167
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u6e05\u7a7a"

    sget-object v3, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;

    new-instance v4, Layp$1;

    invoke-direct {v4, p0}, Layp$1;-><init>(Layp;)V

    .line 172
    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 180
    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    const/16 v2, 0x11

    .line 181
    invoke-virtual {v1, v2, v5, v5}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    .line 182
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Layp;->q:Layp$a;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Layp;->q:Layp$a;

    invoke-interface {v0, p1}, Layp$a;->a(Ljava/lang/String;)V

    .line 317
    :cond_0
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 327
    iget-object v1, p0, Layp;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 328
    iget-object v1, p0, Layp;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 329
    iget-object v1, p0, Layp;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 330
    iget-object v1, p0, Layp;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020345

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 331
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 332
    iget-object v1, p0, Layp;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget-object v1, p0, Layp;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 334
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v0, p0, Layp;->p:Layk;

    invoke-virtual {v0, p1}, Layk;->a(Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Layp;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Layp;->e()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "sourceLanguage":Ljava/lang/String;
    const-string/jumbo v1, "\u81ea\u52a8\u68c0\u6d4b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 4

    .prologue
    .line 352
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Cn:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    sget-object v2, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 353
    .local v0, "isCntoOther":Z
    :goto_0
    sget-object v1, Layp;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTextTranslateMode: isCntoOther "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-eqz v0, :cond_1

    .line 355
    sget-object v1, Laxp;->e:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    invoke-direct {p0, v0, v1}, Layp;->a(ZLcom/iflytek/viafly/translate/TranslateLanguageType;)Ljava/lang/String;

    move-result-object v1

    .line 357
    :goto_1
    return-object v1

    .line 352
    .end local v0    # "isCntoOther":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 357
    .restart local v0    # "isCntoOther":Z
    :cond_1
    sget-object v1, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    invoke-direct {p0, v0, v1}, Layp;->a(ZLcom/iflytek/viafly/translate/TranslateLanguageType;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public h()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Layp;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method public i()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Layp;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method public j()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Layp;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 97
    :pswitch_1
    iget-object v0, p0, Layp;->q:Layp$a;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Layp;->q:Layp$a;

    invoke-interface {v0}, Layp$a;->a()V

    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v0, p0, Layp;->q:Layp$a;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Layp;->q:Layp$a;

    invoke-interface {v0}, Layp$a;->b()V

    goto :goto_0

    .line 107
    :pswitch_3
    iget-object v0, p0, Layp;->p:Layk;

    invoke-virtual {v0}, Layk;->d()Landroid/widget/LinearLayout;

    .line 108
    invoke-direct {p0}, Layp;->m()V

    goto :goto_0

    .line 111
    :pswitch_4
    sget-object v0, Layp;->e:Ljava/lang/String;

    const-string/jumbo v1, "onClick: translate_source_language"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Layp;->p:Layk;

    invoke-virtual {v0}, Layk;->b()Landroid/widget/LinearLayout;

    .line 113
    const/16 v0, -0x28

    invoke-direct {p0, v0}, Layp;->b(I)V

    goto :goto_0

    .line 116
    :pswitch_5
    iget-object v0, p0, Layp;->p:Layk;

    invoke-virtual {v0}, Layk;->c()Landroid/widget/LinearLayout;

    .line 117
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Layp;->b(I)V

    goto :goto_0

    .line 120
    :pswitch_6
    invoke-direct {p0}, Layp;->l()V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b076f
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
