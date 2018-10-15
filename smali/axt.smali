.class public Laxt;
.super Laxr;
.source "TranslateCnEnInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Laxr;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "Poor network\uff0cplease try it later."

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "Speech recognition failed,please restate your speech."

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "Translation failed\uff0cplease try it later."

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f020246

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "English"

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "Please speak English"

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "Translating"

    return-object v0
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "Translate"

    return-object v0
.end method

.method protected u()Lcom/iflytek/viafly/translate/TranslateMode;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEn:Lcom/iflytek/viafly/translate/TranslateMode;

    return-object v0
.end method

.method protected v()Lcom/iflytek/viafly/translate/TranslateMode;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->EnToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "Say something, and I\'ll translate for you."

    return-object v0
.end method
