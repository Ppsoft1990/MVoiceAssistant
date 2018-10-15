.class public Lcom/iflytek/viafly/translate/TranslationFilterResult;
.super Lcom/iflytek/yd/speech/FilterResult;
.source "TranslationFilterResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7fb1e74c285225d0L


# instance fields
.field private mOriginal:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;

.field private mTargetLang:Ljava/lang/String;

.field private mTranslated:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/iflytek/yd/speech/FilterResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getOriginal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/viafly/translate/TranslationFilterResult;->mOriginal:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/translate/TranslationFilterResult;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/translate/TranslationFilterResult;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetLg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/translate/TranslationFilterResult;->mTargetLang:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/iflytek/viafly/translate/TranslationFilterResult;->mTranslated:Ljava/lang/String;

    return-object v0
.end method

.method public setOriginal(Ljava/lang/String;)V
    .locals 0
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/iflytek/viafly/translate/TranslationFilterResult;->mOriginal:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iflytek/viafly/translate/TranslationFilterResult;->mSource:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/iflytek/viafly/translate/TranslationFilterResult;->mTarget:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setTargetLg(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTargetLg"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/iflytek/viafly/translate/TranslationFilterResult;->mTargetLang:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setTranslated(Ljava/lang/String;)V
    .locals 0
    .param p1, "translated"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/iflytek/viafly/translate/TranslationFilterResult;->mTranslated:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TranslationFilterResult{mSource=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/TranslationFilterResult;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTarget=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/TranslationFilterResult;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOriginal=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/TranslationFilterResult;->mOriginal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTranslated=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/TranslationFilterResult;->mTranslated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTargetLang=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/TranslationFilterResult;->mTargetLang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
