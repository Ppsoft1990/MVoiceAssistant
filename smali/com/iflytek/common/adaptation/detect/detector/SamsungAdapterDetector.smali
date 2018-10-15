.class public Lcom/iflytek/common/adaptation/detect/detector/SamsungAdapterDetector;
.super Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
.source "SamsungAdapterDetector.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onInitAdapters(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
    .locals 1
    .param p1, "infoContainer"    # Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    .prologue
    .line 29
    const-class v0, Lcom/iflytek/common/adaptation/siminfo/SamsungDualSimInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addSimInfoAdapter(Ljava/lang/String;)V

    .line 30
    const-class v0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTS7278USimInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addSimInfoAdapter(Ljava/lang/String;)V

    .line 31
    const-class v0, Lcom/iflytek/common/adaptation/siminfo/SamsungGTI8558SimInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addSimInfoAdapter(Ljava/lang/String;)V

    .line 33
    const-class v0, Lcom/iflytek/common/adaptation/call/SamsungDualSimCallAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addCallAdapter(Ljava/lang/String;)V

    .line 34
    const-class v0, Lcom/iflytek/common/adaptation/call/SamsungGTI8558CallAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addCallAdapter(Ljava/lang/String;)V

    .line 36
    const-class v0, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addTextMsgAdater(Ljava/lang/String;)V

    .line 37
    const-class v0, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addTextMsgAdater(Ljava/lang/String;)V

    .line 38
    const-class v0, Lcom/iflytek/common/adaptation/mms/SamsungSCHI939DMmsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addTextMsgAdater(Ljava/lang/String;)V

    .line 39
    const-class v0, Lcom/iflytek/common/adaptation/mms/SamsungGTI8558MmsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addTextMsgAdater(Ljava/lang/String;)V

    .line 41
    const-class v0, Lcom/iflytek/common/adaptation/mms/SamsungISmsMmsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addDataMsgAdater(Ljava/lang/String;)V

    .line 42
    const-class v0, Lcom/iflytek/common/adaptation/mms/SamsungGTI9502MmsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addDataMsgAdater(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected onInitInBoxFlags(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
    .locals 0
    .param p1, "infoContainer"    # Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    .prologue
    .line 57
    return-void
.end method

.method protected onInitOutBoxFlags(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
    .locals 1
    .param p1, "infoContainer"    # Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    .prologue
    .line 47
    const-string/jumbo v0, "phonetype"

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addOutBoxFlags(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "sim_id"

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addOutBoxFlags(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v0, "sim_slot"

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addOutBoxFlags(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, "band"

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addOutBoxFlags(Ljava/lang/String;)V

    .line 51
    return-void
.end method
