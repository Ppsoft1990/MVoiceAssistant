.class public Laya;
.super Ljava/lang/Object;
.source "TranslateHandler.java"


# direct methods
.method public static a(Lcom/iflytek/viafly/translate/entity/TranslateResult;)Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    .locals 9
    .param p0, "result"    # Lcom/iflytek/viafly/translate/entity/TranslateResult;

    .prologue
    .line 17
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_TRANSLATE_LANGUAGE"

    const-string/jumbo v3, "cn_en"

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 19
    .local v7, "mCacheLanguage":Ljava/lang/String;
    invoke-static {v7}, Layb;->a(Ljava/lang/String;)Laxr;

    move-result-object v8

    .line 20
    .local v8, "translateInfo":Laxr;
    new-instance v0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;

    invoke-virtual {v8}, Laxr;->q()I

    move-result v1

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->getOriginal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->getTranslated()Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-virtual {v8}, Laxr;->r()I

    move-result v4

    invoke-virtual {v8}, Laxr;->t()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v5

    invoke-virtual {p0}, Lcom/iflytek/viafly/translate/entity/TranslateResult;->getTargetLg()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/iflytek/viafly/translate/TranslateMode;Ljava/lang/String;)V

    .line 22
    .local v0, "item":Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
    return-object v0
.end method
