.class public Laxu;
.super Laxr;
.source "TranslateCnEsInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Laxr;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "Red no disponible, reintente m\u00e1s tarde por favor."

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "Voz no detectada, vuelva a hablar por favor."

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "Error al traducir, vuelva a intentar por favor."

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f020248

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "espa\u00f1ol"

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "Hable espa\u00f1ol,por favor."

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "Traduciendo."

    return-object v0
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "Traducir."

    return-object v0
.end method

.method protected u()Lcom/iflytek/viafly/translate/TranslateMode;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->CnToEs:Lcom/iflytek/viafly/translate/TranslateMode;

    return-object v0
.end method

.method protected v()Lcom/iflytek/viafly/translate/TranslateMode;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->EsToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "Di algo y te ayudo a traducirlo."

    return-object v0
.end method
