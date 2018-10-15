.class public Lcom/iflytek/common/adaptation/detect/CacheAdapters;
.super Ljava/lang/Object;
.source "CacheAdapters.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheAdapters"

.field private static final serialVersionUID:J = -0x74a726904eb566fcL


# instance fields
.field private mCallAdapter:Ljava/lang/String;

.field private mColumeName:Ljava/lang/String;

.field private mDataMsgAdapter:Ljava/lang/String;

.field private mOutBoxFlags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSimInfoAdapter:Ljava/lang/String;

.field private mTextMsgAdapter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallAdapter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mCallAdapter:Ljava/lang/String;

    return-object v0
.end method

.method public getColumeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mColumeName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataMsgAdapter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mDataMsgAdapter:Ljava/lang/String;

    return-object v0
.end method

.method public getOutBoxFlags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mOutBoxFlags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSimInfoAdapter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mSimInfoAdapter:Ljava/lang/String;

    return-object v0
.end method

.method public getTextMsgAdapter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mTextMsgAdapter:Ljava/lang/String;

    return-object v0
.end method

.method public setCallAdapter(Ljava/lang/String;)V
    .locals 0
    .param p1, "callAdapter"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mCallAdapter:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setColumeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "columeName"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mColumeName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setDataMsgAdapter(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataMsgAdapter"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mDataMsgAdapter:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setOutBoxFlags(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "flags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mOutBoxFlags:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method public setSimInfoAdapter(Ljava/lang/String;)V
    .locals 0
    .param p1, "simInfoAdapter"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mSimInfoAdapter:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setTextMsgAdapter(Ljava/lang/String;)V
    .locals 0
    .param p1, "textMsgAdapter"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mTextMsgAdapter:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CacheAdapters [mSimInfoAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mSimInfoAdapter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCallAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mCallAdapter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTextMsgAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mTextMsgAdapter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDataMsgAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mDataMsgAdapter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mColumeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/CacheAdapters;->mColumeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
