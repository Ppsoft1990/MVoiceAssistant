.class public Lcom/iflytek/common/adaptation/detect/detector/CoolPadAdapterDetector;
.super Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
.source "CoolPadAdapterDetector.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onInitAdapters(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
    .locals 1
    .param p1, "infoContainer"    # Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    .prologue
    .line 23
    const-class v0, Lcom/iflytek/common/adaptation/siminfo/CoolpadDualSimInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addSimInfoAdapter(Ljava/lang/String;)V

    .line 24
    const-class v0, Lcom/iflytek/common/adaptation/call/CoolpadCallAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addCallAdapter(Ljava/lang/String;)V

    .line 25
    const-class v0, Lcom/iflytek/common/adaptation/mms/CoolpadMmsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addTextMsgAdater(Ljava/lang/String;)V

    .line 26
    const-class v0, Lcom/iflytek/common/adaptation/mms/CoolpadMmsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addDataMsgAdater(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method protected onInitInBoxFlags(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
    .locals 0
    .param p1, "infoContainer"    # Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    .prologue
    .line 37
    return-void
.end method

.method protected onInitOutBoxFlags(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
    .locals 1
    .param p1, "infoContainer"    # Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    .prologue
    .line 31
    const-string/jumbo v0, "network_type"

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addOutBoxFlags(Ljava/lang/String;)V

    .line 32
    return-void
.end method
