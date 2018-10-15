.class public Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;
.super Ljava/lang/Object;
.source "DetectorInfoContainer.java"


# instance fields
.field private mCallAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCommonInBoxFlags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCommonOutBoxFlags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataMsgAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSimInfoAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextMsgAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mSimInfoAdapters:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mCallAdapters:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mTextMsgAdapters:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mDataMsgAdapters:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mCommonOutBoxFlags:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mCommonInBoxFlags:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addCallAdapter(Ljava/lang/String;)V
    .locals 1
    .param p1, "callAdapter"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mCallAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public addDataMsgAdater(Ljava/lang/String;)V
    .locals 1
    .param p1, "dataMsgAdater"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mDataMsgAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public addInBoxFlags(Ljava/lang/String;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mCommonInBoxFlags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public addOutBoxFlags(Ljava/lang/String;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mCommonOutBoxFlags:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public addSimInfoAdapter(Ljava/lang/String;)V
    .locals 1
    .param p1, "simInfo"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mSimInfoAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public addTextMsgAdater(Ljava/lang/String;)V
    .locals 1
    .param p1, "textMsgAdater"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mTextMsgAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public getCallAdapters()Ljava/util/ArrayList;
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
    .line 57
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mCallAdapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCommonInBoxFlags()Ljava/util/ArrayList;
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
    .line 89
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mCommonInBoxFlags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCommonOutBoxFlags()Ljava/util/ArrayList;
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
    .line 81
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mCommonOutBoxFlags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDataMsgAdapters()Ljava/util/ArrayList;
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
    .line 73
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mDataMsgAdapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSimInfoAdapters()Ljava/util/ArrayList;
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
    .line 49
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mSimInfoAdapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTextMsgAdapters()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mTextMsgAdapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCallAdapters(Ljava/util/ArrayList;)V
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
    .line 61
    .local p1, "callAdapters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mCallAdapters:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method public setCommonInBoxFlags(Ljava/util/ArrayList;)V
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
    .line 93
    .local p1, "commonInBoxFlags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mCommonInBoxFlags:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method public setCommonOutBoxFlags(Ljava/util/ArrayList;)V
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
    .line 85
    .local p1, "commonOutBoxFlags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mCommonOutBoxFlags:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method public setDataMsgAdapters(Ljava/util/ArrayList;)V
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
    .line 77
    .local p1, "dataMsgAdapters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mDataMsgAdapters:Ljava/util/ArrayList;

    .line 78
    return-void
.end method

.method public setSimInfoAdapters(Ljava/util/ArrayList;)V
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
    .line 53
    .local p1, "simInfoAdapters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mSimInfoAdapters:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method public setTextMsgAdapters(Ljava/util/ArrayList;)V
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
    .local p1, "textMsgAdapters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->mTextMsgAdapters:Ljava/util/ArrayList;

    .line 70
    return-void
.end method
