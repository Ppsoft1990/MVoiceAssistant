.class public Laxv;
.super Laxr;
.source "TranslateCnFrInfo.java"


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
    const-string/jumbo v0, "\u00c9chouer \u00e0 connecter au r\u00e9seau, r\u00e9essayez plus tard,s\'il vous pla\u00eet."

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "\u00c9chouer \u00e0 d\u00e9lecter des sons, parlez de nouveau,s\'il vous pla\u00eet."

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "\u00c9chouer \u00e0 traduire,r\u00e9essayez plus tard,s\'il vous pla\u00eet."

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f020249

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "fran\u00e7ais"

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "Parlez en fran\u00e7ais,s\'il vous pla\u00eet."

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "En train de traduire."

    return-object v0
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "Traduire."

    return-object v0
.end method

.method protected u()Lcom/iflytek/viafly/translate/TranslateMode;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->CnToFr:Lcom/iflytek/viafly/translate/TranslateMode;

    return-object v0
.end method

.method protected v()Lcom/iflytek/viafly/translate/TranslateMode;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/iflytek/viafly/translate/TranslateMode;->FrToCn:Lcom/iflytek/viafly/translate/TranslateMode;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "Tu peux parler quelque chose et je vais t\'aider \u00e0 le traduire."

    return-object v0
.end method
