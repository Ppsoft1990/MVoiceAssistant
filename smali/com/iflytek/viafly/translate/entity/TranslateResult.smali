.class public Lcom/iflytek/viafly/translate/entity/TranslateResult;
.super Lcom/iflytek/viafly/translate/TranslationFilterResult;
.source "TranslateResult.java"


# instance fields
.field private isNeedBrocast:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/iflytek/viafly/translate/TranslationFilterResult;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/translate/entity/TranslateResult;->isNeedBrocast:Z

    return-void
.end method


# virtual methods
.method public isNeedBrocast()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/iflytek/viafly/translate/entity/TranslateResult;->isNeedBrocast:Z

    return v0
.end method

.method public setNeedBrocast(Z)V
    .locals 0
    .param p1, "needBrocast"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/iflytek/viafly/translate/entity/TranslateResult;->isNeedBrocast:Z

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TranslateResult{isNeedBrocast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/iflytek/viafly/translate/entity/TranslateResult;->isNeedBrocast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    invoke-super {p0}, Lcom/iflytek/viafly/translate/TranslationFilterResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
