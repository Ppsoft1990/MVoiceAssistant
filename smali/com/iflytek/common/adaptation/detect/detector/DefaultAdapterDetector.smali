.class public Lcom/iflytek/common/adaptation/detect/detector/DefaultAdapterDetector;
.super Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
.source "DefaultAdapterDetector.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onInitAdapters(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
    .locals 0
    .param p1, "infoContainer"    # Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    .prologue
    .line 21
    return-void
.end method

.method protected onInitInBoxFlags(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
    .locals 0
    .param p1, "infoContainer"    # Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    .prologue
    .line 32
    return-void
.end method

.method protected onInitOutBoxFlags(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
    .locals 0
    .param p1, "infoContainer"    # Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    .prologue
    .line 26
    return-void
.end method
