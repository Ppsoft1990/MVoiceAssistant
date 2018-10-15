.class public Layb;
.super Ljava/lang/Object;
.source "TranslateInfoFactory.java"


# direct methods
.method public static a(Ljava/lang/String;)Laxr;
    .locals 2
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 27
    .local v0, "languageInfo":Laxr;
    const-string/jumbo v1, "cn_en"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    new-instance v0, Laxt;

    .end local v0    # "languageInfo":Laxr;
    invoke-direct {v0}, Laxt;-><init>()V

    .line 39
    .restart local v0    # "languageInfo":Laxr;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 40
    new-instance v0, Laxt;

    .end local v0    # "languageInfo":Laxr;
    invoke-direct {v0}, Laxt;-><init>()V

    .line 43
    .restart local v0    # "languageInfo":Laxr;
    :cond_1
    return-object v0

    .line 29
    :cond_2
    const-string/jumbo v1, "cn_jp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30
    new-instance v0, Laxw;

    .end local v0    # "languageInfo":Laxr;
    invoke-direct {v0}, Laxw;-><init>()V

    .restart local v0    # "languageInfo":Laxr;
    goto :goto_0

    .line 31
    :cond_3
    const-string/jumbo v1, "cn_kr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    new-instance v0, Laxx;

    .end local v0    # "languageInfo":Laxr;
    invoke-direct {v0}, Laxx;-><init>()V

    .restart local v0    # "languageInfo":Laxr;
    goto :goto_0

    .line 33
    :cond_4
    const-string/jumbo v1, "cn_fr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 34
    new-instance v0, Laxv;

    .end local v0    # "languageInfo":Laxr;
    invoke-direct {v0}, Laxv;-><init>()V

    .restart local v0    # "languageInfo":Laxr;
    goto :goto_0

    .line 35
    :cond_5
    const-string/jumbo v1, "cn_es"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    new-instance v0, Laxu;

    .end local v0    # "languageInfo":Laxr;
    invoke-direct {v0}, Laxu;-><init>()V

    .restart local v0    # "languageInfo":Laxr;
    goto :goto_0
.end method
