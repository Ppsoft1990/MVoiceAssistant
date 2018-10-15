.class public Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;
.super Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
.source "HtcAdapterDetector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcAdaptationDetector"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;-><init>(Landroid/content/Context;)V

    .line 26
    const-string/jumbo v0, "HtcAdaptationDetector"

    const-string/jumbo v1, "create HtcAdaptationDetector"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method


# virtual methods
.method public detect()V
    .locals 4

    .prologue
    .line 51
    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    invoke-virtual {v1}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->detectSimInfoAdapter()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    .line 52
    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    invoke-virtual {v1}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->isDoubleCard()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    .local v0, "sdk":I
    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v2, "HTC D626t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    invoke-virtual {v1, v2}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->detecteCallAdapter(Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;)Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mCallAdapter:Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    .line 67
    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    invoke-virtual {v1, v2}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->detectTextMmsAdaptor(Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;)Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    .line 81
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    invoke-virtual {v1}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->detectOutBoxDualFlags()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mOutBoxDualSimFlags:Ljava/util/ArrayList;

    .line 86
    .end local v0    # "sdk":I
    :goto_1
    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    iput-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mDataMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    .line 87
    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mDataMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    invoke-virtual {v1}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mCursorModeColumnName:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    invoke-virtual {v1}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->saveCacheAdapter()V

    .line 89
    const-string/jumbo v1, "HtcAdaptationDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSimInfoAdapter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v1, "HtcAdaptationDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCallAdapter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mCallAdapter:Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string/jumbo v1, "HtcAdaptationDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSendTextMsgAdapter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string/jumbo v1, "HtcAdaptationDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCursorModeColumnName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mCursorModeColumnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 69
    .restart local v0    # "sdk":I
    :cond_2
    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    instance-of v1, v1, Lcom/iflytek/common/adaptation/siminfo/HtcCdmaSimInfo;

    if-eqz v1, :cond_4

    .line 70
    new-instance v1, Lcom/iflytek/common/adaptation/call/HtcCdmaCallAdapter;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    invoke-direct {v1, v2, v3}, Lcom/iflytek/common/adaptation/call/HtcCdmaCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    iput-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mCallAdapter:Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    .line 74
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    instance-of v1, v1, Lcom/iflytek/common/adaptation/siminfo/HtcCdmaSimInfo;

    if-eqz v1, :cond_5

    .line 75
    new-instance v1, Lcom/iflytek/common/adaptation/mms/HtcCdmaMmsAdapter;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    invoke-direct {v1, v2, v3}, Lcom/iflytek/common/adaptation/mms/HtcCdmaMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    iput-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    goto/16 :goto_0

    .line 71
    :cond_4
    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    instance-of v1, v1, Lcom/iflytek/common/adaptation/siminfo/HtcGsmSimInfo;

    if-eqz v1, :cond_3

    .line 72
    new-instance v1, Lcom/iflytek/common/adaptation/call/HtcGsmCallAdapter;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    invoke-direct {v1, v2, v3}, Lcom/iflytek/common/adaptation/call/HtcGsmCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    iput-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mCallAdapter:Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    goto :goto_2

    .line 76
    :cond_5
    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    instance-of v1, v1, Lcom/iflytek/common/adaptation/siminfo/HtcGsmSimInfo;

    if-eqz v1, :cond_1

    .line 77
    new-instance v1, Lcom/iflytek/common/adaptation/mms/HtcGsmMmsAdapter;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    invoke-direct {v1, v2, v3}, Lcom/iflytek/common/adaptation/mms/HtcGsmMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    iput-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    goto/16 :goto_0

    .line 83
    .end local v0    # "sdk":I
    :cond_6
    new-instance v1, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    invoke-direct {v1, v2, v3}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    iput-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mCallAdapter:Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    .line 84
    new-instance v1, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    invoke-direct {v1, v2, v3}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    iput-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/HtcAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    goto/16 :goto_1
.end method

.method public onInitAdapters(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
    .locals 1
    .param p1, "infoContainer"    # Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    .prologue
    .line 31
    const-class v0, Lcom/iflytek/common/adaptation/siminfo/HtcCdmaSimInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addSimInfoAdapter(Ljava/lang/String;)V

    .line 32
    const-class v0, Lcom/iflytek/common/adaptation/siminfo/HtcGsmSimInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addSimInfoAdapter(Ljava/lang/String;)V

    .line 34
    const-class v0, Lcom/iflytek/common/adaptation/call/HtcCdmaCallAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addCallAdapter(Ljava/lang/String;)V

    .line 35
    const-class v0, Lcom/iflytek/common/adaptation/call/HtcGsmCallAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addCallAdapter(Ljava/lang/String;)V

    .line 37
    const-class v0, Lcom/iflytek/common/adaptation/mms/HtcCdmaMmsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addTextMsgAdater(Ljava/lang/String;)V

    .line 38
    const-class v0, Lcom/iflytek/common/adaptation/mms/HtcGsmMmsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addTextMsgAdater(Ljava/lang/String;)V

    .line 40
    const-class v0, Lcom/iflytek/common/adaptation/mms/HtcCdmaMmsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addDataMsgAdater(Ljava/lang/String;)V

    .line 41
    const-class v0, Lcom/iflytek/common/adaptation/mms/HtcGsmMmsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addDataMsgAdater(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method protected onInitInBoxFlags(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
    .locals 0
    .param p1, "infoContainer"    # Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    .prologue
    .line 99
    return-void
.end method

.method public onInitOutBoxFlags(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
    .locals 1
    .param p1, "infoContainer"    # Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    .prologue
    .line 46
    const-string/jumbo v0, "sim_slot"

    invoke-virtual {p1, v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;->addOutBoxFlags(Ljava/lang/String;)V

    .line 47
    return-void
.end method
