.class public Lcom/iflytek/viafly/translate/entity/TranslateResultItem;
.super Ljava/lang/Object;
.source "TranslateResultItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mFlagImg:I

.field private mOriginal:Ljava/lang/String;

.field private mTranslateMode:Lcom/iflytek/viafly/translate/TranslateMode;

.field private mTranslated:Ljava/lang/String;

.field private mTranslatedLang:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/iflytek/viafly/translate/TranslateMode;Ljava/lang/String;)V
    .locals 0
    .param p1, "mType"    # I
    .param p2, "mOriginal"    # Ljava/lang/String;
    .param p3, "mTranslated"    # Ljava/lang/String;
    .param p4, "mFlagImg"    # I
    .param p5, "mTranslateMode"    # Lcom/iflytek/viafly/translate/TranslateMode;
    .param p6, "mTranslatedLang"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mType:I

    .line 28
    iput-object p2, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mOriginal:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mTranslated:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mFlagImg:I

    .line 31
    iput-object p5, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mTranslateMode:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 32
    iput-object p6, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mTranslatedLang:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getFlagImg()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mFlagImg:I

    return v0
.end method

.method public getOriginal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mOriginal:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslateMode()Lcom/iflytek/viafly/translate/TranslateMode;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mTranslateMode:Lcom/iflytek/viafly/translate/TranslateMode;

    return-object v0
.end method

.method public getTranslated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mTranslated:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mTranslatedLang:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mType:I

    return v0
.end method

.method public setFlagImg(I)V
    .locals 0
    .param p1, "flagImg"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mFlagImg:I

    .line 73
    return-void
.end method

.method public setOriginal(Ljava/lang/String;)V
    .locals 0
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mOriginal:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setTranslateMode(Lcom/iflytek/viafly/translate/TranslateMode;)V
    .locals 0
    .param p1, "translateMode"    # Lcom/iflytek/viafly/translate/TranslateMode;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mTranslateMode:Lcom/iflytek/viafly/translate/TranslateMode;

    .line 65
    return-void
.end method

.method public setTranslated(Ljava/lang/String;)V
    .locals 0
    .param p1, "translated"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mTranslated:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setTranslatedLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTranslatedLang"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mTranslatedLang:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mType:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TranslateResultItem{mType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOriginal=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mOriginal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTranslated=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mTranslated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mFlagImg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mFlagImg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTranslateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mTranslateMode:Lcom/iflytek/viafly/translate/TranslateMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTranslatedLang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/entity/TranslateResultItem;->mTranslatedLang:Ljava/lang/String;

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
