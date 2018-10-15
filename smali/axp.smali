.class public final Laxp;
.super Ljava/lang/Object;
.source "TranslateTempData.java"


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Lcom/iflytek/viafly/translate/TranslateLanguageType;

.field public static e:Lcom/iflytek/viafly/translate/TranslateLanguageType;

.field public static f:Z

.field private static g:Lcom/iflytek/viafly/translate/TranslateMode;

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/translate/entity/TranslateResultItem;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/translate/entity/TranslateResultItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Laxp;->a:Z

    .line 24
    sput-boolean v1, Laxp;->b:Z

    .line 26
    sput-boolean v1, Laxp;->c:Z

    .line 34
    sput-boolean v1, Laxp;->f:Z

    return-void
.end method

.method public static a()Lcom/iflytek/viafly/translate/TranslateMode;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Laxp;->g:Lcom/iflytek/viafly/translate/TranslateMode;

    return-object v0
.end method

.method public static a(Lcom/iflytek/viafly/translate/TranslateMode;)V
    .locals 0
    .param p0, "translateMode"    # Lcom/iflytek/viafly/translate/TranslateMode;

    .prologue
    .line 41
    sput-object p0, Laxp;->g:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 42
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/translate/entity/TranslateResultItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "resultItemList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/translate/entity/TranslateResultItem;>;"
    sget-object v0, Laxp;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laxp;->h:Ljava/util/List;

    .line 62
    :cond_0
    sget-object v0, Laxp;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 66
    sget-object v0, Laxp;->h:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_1
    return-void
.end method

.method public static b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/translate/entity/TranslateResultItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Laxp;->h:Ljava/util/List;

    return-object v0
.end method

.method public static b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/translate/entity/TranslateResultItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "resultItemList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/translate/entity/TranslateResultItem;>;"
    sget-object v0, Laxp;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laxp;->i:Ljava/util/List;

    .line 77
    :cond_0
    sget-object v0, Laxp;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 81
    sget-object v0, Laxp;->i:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    :cond_1
    return-void
.end method

.method public static c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/translate/entity/TranslateResultItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Laxp;->i:Ljava/util/List;

    return-object v0
.end method

.method public static d()Lcom/iflytek/viafly/translate/TranslateMode;
    .locals 4

    .prologue
    .line 91
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_TRANSLATE_LANGUAGE"

    const-string/jumbo v3, "cn_en"

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "mode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 93
    const-string/jumbo v1, "cn_jp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->CnToJp:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 104
    :goto_0
    return-object v1

    .line 95
    :cond_0
    const-string/jumbo v1, "cn_kr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->CnToKr:Lcom/iflytek/viafly/translate/TranslateMode;

    goto :goto_0

    .line 97
    :cond_1
    const-string/jumbo v1, "cn_fr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->CnToFr:Lcom/iflytek/viafly/translate/TranslateMode;

    goto :goto_0

    .line 99
    :cond_2
    const-string/jumbo v1, "cn_es"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEs:Lcom/iflytek/viafly/translate/TranslateMode;

    goto :goto_0

    .line 104
    :cond_3
    sget-object v1, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEn:Lcom/iflytek/viafly/translate/TranslateMode;

    goto :goto_0
.end method
