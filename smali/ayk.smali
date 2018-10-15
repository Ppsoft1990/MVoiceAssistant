.class public Layk;
.super Ljava/lang/Object;
.source "TranslateModeViewHeler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layk$b;,
        Layk$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/BaseAdapter;

.field private f:Landroid/widget/BaseAdapter;

.field private g:Landroid/widget/BaseAdapter;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Layp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "TranslateModeViewHeler"

    sput-object v0, Layk;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Layp;)V
    .locals 1
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "translateTitleBarHelper"    # Layp;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Layk;->k:Layp;

    .line 41
    iput-object p1, p0, Layk;->c:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layk;->h:Ljava/util/ArrayList;

    .line 43
    invoke-direct {p0}, Layk;->h()V

    .line 44
    invoke-direct {p0}, Layk;->g()V

    .line 45
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "lang":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 85
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "cn_en"

    .end local v0    # "lang":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 69
    .restart local v0    # "lang":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "cn_en"

    .line 70
    goto :goto_0

    .line 72
    :pswitch_1
    const-string/jumbo v0, "cn_jp"

    .line 73
    goto :goto_0

    .line 75
    :pswitch_2
    const-string/jumbo v0, "cn_kr"

    .line 76
    goto :goto_0

    .line 78
    :pswitch_3
    const-string/jumbo v0, "cn_fr"

    .line 79
    goto :goto_0

    .line 81
    :pswitch_4
    const-string/jumbo v0, "cn_es"

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Layk;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Layk;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Layk;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Layk;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Layk;

    .prologue
    .line 30
    iget-object v0, p0, Layk;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Layk;)Layp;
    .locals 1
    .param p0, "x0"    # Layk;

    .prologue
    .line 30
    iget-object v0, p0, Layk;->k:Layp;

    return-object v0
.end method

.method private b(I)Lcom/iflytek/viafly/translate/TranslateLanguageType;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "sourceLanguage":Lcom/iflytek/viafly/translate/TranslateLanguageType;
    packed-switch p1, :pswitch_data_0

    .line 114
    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Auto:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .end local v0    # "sourceLanguage":Lcom/iflytek/viafly/translate/TranslateLanguageType;
    :cond_0
    return-object v0

    .line 92
    .restart local v0    # "sourceLanguage":Lcom/iflytek/viafly/translate/TranslateLanguageType;
    :pswitch_0
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Auto:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 93
    goto :goto_0

    .line 95
    :pswitch_1
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Cn:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 96
    goto :goto_0

    .line 98
    :pswitch_2
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->En:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 99
    goto :goto_0

    .line 101
    :pswitch_3
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Jp:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 102
    goto :goto_0

    .line 104
    :pswitch_4
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Kr:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 105
    goto :goto_0

    .line 107
    :pswitch_5
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Fr:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 108
    goto :goto_0

    .line 110
    :pswitch_6
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Es:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic b(Layk;I)Lcom/iflytek/viafly/translate/TranslateLanguageType;
    .locals 1
    .param p0, "x0"    # Layk;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Layk;->b(I)Lcom/iflytek/viafly/translate/TranslateLanguageType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Layk;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Layk;

    .prologue
    .line 30
    iget-object v0, p0, Layk;->c:Landroid/content/Context;

    return-object v0
.end method

.method private c(I)Lcom/iflytek/viafly/translate/TranslateLanguageType;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "targetLanguage":Lcom/iflytek/viafly/translate/TranslateLanguageType;
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Cn:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .end local v0    # "targetLanguage":Lcom/iflytek/viafly/translate/TranslateLanguageType;
    :cond_0
    return-object v0

    .line 121
    .restart local v0    # "targetLanguage":Lcom/iflytek/viafly/translate/TranslateLanguageType;
    :pswitch_0
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Cn:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 122
    goto :goto_0

    .line 124
    :pswitch_1
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->En:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 125
    goto :goto_0

    .line 127
    :pswitch_2
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Jp:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 128
    goto :goto_0

    .line 130
    :pswitch_3
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Kr:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 131
    goto :goto_0

    .line 133
    :pswitch_4
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Fr:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    .line 134
    goto :goto_0

    .line 136
    :pswitch_5
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Es:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic c(Layk;I)Lcom/iflytek/viafly/translate/TranslateLanguageType;
    .locals 1
    .param p0, "x0"    # Layk;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Layk;->c(I)Lcom/iflytek/viafly/translate/TranslateLanguageType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Layk;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Layk;

    .prologue
    .line 30
    iget-object v0, p0, Layk;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Layk;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Layk;

    .prologue
    .line 30
    iget-object v0, p0, Layk;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Layk;->a:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Layk;->c:Landroid/content/Context;

    const v1, 0x7f03014e

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Layk;->b:Landroid/widget/LinearLayout;

    .line 49
    iget-object v0, p0, Layk;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0776

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Layk;->d:Landroid/widget/ListView;

    .line 50
    new-instance v0, Layk$a;

    invoke-direct {v0, p0, v2}, Layk$a;-><init>(Layk;Layk$1;)V

    iput-object v0, p0, Layk;->e:Landroid/widget/BaseAdapter;

    .line 51
    iget-object v0, p0, Layk;->d:Landroid/widget/ListView;

    iget-object v1, p0, Layk;->e:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    iget-object v0, p0, Layk;->d:Landroid/widget/ListView;

    new-instance v1, Layk$1;

    invoke-direct {v1, p0}, Layk$1;-><init>(Layk;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Layk;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Layk;->h:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u4e2d\u6587-\u82f1\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Layk;->h:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u4e2d\u6587-\u65e5\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Layk;->h:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u4e2d\u6587-\u97e9\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Layk;->h:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u4e2d\u6587-\u6cd5\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Layk;->h:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u4e2d\u6587-\u897f\u73ed\u7259\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Layk;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layk;->i:Ljava/util/ArrayList;

    .line 328
    iget-object v0, p0, Layk;->i:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u81ea\u52a8\u68c0\u6d4b"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Layk;->i:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u4e2d\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Layk;->i:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u82f1\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Layk;->i:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u65e5\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, p0, Layk;->i:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u97e9\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Layk;->i:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u6cd5\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Layk;->i:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u897f\u73ed\u7259\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Layk;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layk;->j:Ljava/util/ArrayList;

    .line 344
    iget-object v0, p0, Layk;->j:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u4e2d\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Layk;->j:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u82f1\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, p0, Layk;->j:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u65e5\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Layk;->j:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u97e9\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Layk;->j:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u6cd5\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, p0, Layk;->j:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u897f\u73ed\u7259\u6587"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Layk;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "position":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string/jumbo v1, "cn_jp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const/4 v0, 0x1

    .line 156
    :cond_0
    :goto_0
    iget-object v1, p0, Layk;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Layk;->a(Ljava/util/ArrayList;I)V

    .line 157
    return-void

    .line 148
    :cond_1
    const-string/jumbo v1, "cn_kr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    const/4 v0, 0x2

    goto :goto_0

    .line 150
    :cond_2
    const-string/jumbo v1, "cn_fr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    const/4 v0, 0x3

    goto :goto_0

    .line 152
    :cond_3
    const-string/jumbo v1, "cn_es"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;I)V
    .locals 3
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Layk;->k:Layp;

    iget-object v1, v0, Layp;->c:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Layk;->k:Layp;

    iget-object v1, v0, Layp;->d:Lcom/iflytek/base/skin/customView/XTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/iflytek/base/skin/customView/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_0
    return-void
.end method

.method public b()Landroid/widget/LinearLayout;
    .locals 3

    .prologue
    .line 226
    invoke-direct {p0}, Layk;->i()V

    .line 227
    iget-object v0, p0, Layk;->f:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Layt;

    iget-object v1, p0, Layk;->c:Landroid/content/Context;

    iget-object v2, p0, Layk;->i:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Layt;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Layk;->f:Landroid/widget/BaseAdapter;

    .line 230
    :cond_0
    iget-object v0, p0, Layk;->d:Landroid/widget/ListView;

    iget-object v1, p0, Layk;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 231
    iget-object v0, p0, Layk;->d:Landroid/widget/ListView;

    new-instance v1, Layk$2;

    invoke-direct {v1, p0}, Layk$2;-><init>(Layk;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 262
    iget-object v0, p0, Layk;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    :goto_0
    return-void

    .line 376
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v0, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_translation"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v1, p0, Layk;->c:Landroid/content/Context;

    invoke-static {v1}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    const-string/jumbo v2, "FT89515"

    invoke-virtual {v1, v2, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public c()Landroid/widget/LinearLayout;
    .locals 3

    .prologue
    .line 270
    invoke-direct {p0}, Layk;->j()V

    .line 271
    iget-object v0, p0, Layk;->g:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Layt;

    iget-object v1, p0, Layk;->c:Landroid/content/Context;

    iget-object v2, p0, Layk;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Layt;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Layk;->g:Landroid/widget/BaseAdapter;

    .line 274
    :cond_0
    iget-object v0, p0, Layk;->d:Landroid/widget/ListView;

    iget-object v1, p0, Layk;->g:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    iget-object v0, p0, Layk;->d:Landroid/widget/ListView;

    new-instance v1, Layk$3;

    invoke-direct {v1, p0}, Layk$3;-><init>(Layk;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 297
    iget-object v0, p0, Layk;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public d()Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Layk$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Layk$a;-><init>(Layk;Layk$1;)V

    iput-object v0, p0, Layk;->e:Landroid/widget/BaseAdapter;

    .line 307
    iget-object v0, p0, Layk;->d:Landroid/widget/ListView;

    iget-object v1, p0, Layk;->e:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 308
    iget-object v0, p0, Layk;->d:Landroid/widget/ListView;

    new-instance v1, Layk$4;

    invoke-direct {v1, p0}, Layk$4;-><init>(Layk;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 319
    iget-object v0, p0, Layk;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "scene":Ljava/lang/String;
    iget-object v2, p0, Layk;->k:Layp;

    invoke-virtual {v2}, Layp;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/iflytek/viafly/translate/TranslateLanguageType;->Auto:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "To"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laxp;->e:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 369
    .end local v0    # "scene":Ljava/lang/String;
    .local v1, "scene":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 366
    .end local v1    # "scene":Ljava/lang/String;
    .restart local v0    # "scene":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laxp;->d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "To"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laxp;->e:Lcom/iflytek/viafly/translate/TranslateLanguageType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    sget-object v2, Layk;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLogTextTranslateMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 369
    .end local v0    # "scene":Ljava/lang/String;
    .restart local v1    # "scene":Ljava/lang/String;
    goto :goto_0
.end method
