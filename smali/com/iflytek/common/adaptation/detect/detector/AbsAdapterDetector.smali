.class public abstract Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;
.super Ljava/lang/Object;
.source "AbsAdapterDetector.java"

# interfaces
.implements Lcom/iflytek/common/adaptation/AdaptPluginObserver;
.implements Lcom/iflytek/common/adaptation/detect/IAdapterDetector;


# static fields
.field public static final TAG:Ljava/lang/String; = "AbsAdapterDetector"


# instance fields
.field protected mCallAdapter:Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

.field protected mContext:Landroid/content/Context;

.field protected mCursorModeColumnName:Ljava/lang/String;

.field protected mDataMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

.field protected volatile mDetectFlag:Z

.field protected mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

.field protected mOutBoxDualSimFlags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

.field protected mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectFlag:Z

    .line 50
    iput-object p1, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;

    invoke-direct {v0}, Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;-><init>()V

    .line 52
    .local v0, "infoContainer":Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;
    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->onInitAdapters(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->onInitOutBoxFlags(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V

    .line 54
    new-instance v1, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    invoke-direct {v1, p1, v0}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V

    iput-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    .line 55
    return-void
.end method

.method private makeOutboxValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJI)Landroid/content/ContentValues;
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "deliveryReport"    # Z
    .param p6, "threadId"    # J
    .param p8, "simId"    # I

    .prologue
    const/4 v8, 0x1

    .line 187
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "address"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-eqz p4, :cond_0

    .line 190
    const-string/jumbo v5, "date"

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    :cond_0
    const-string/jumbo v5, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string/jumbo v5, "subject"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v5, "body"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    if-eqz p5, :cond_1

    .line 196
    const-string/jumbo v5, "status"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 198
    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v5, p6, v6

    if-eqz v5, :cond_2

    .line 199
    const-string/jumbo v5, "thread_id"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    :cond_2
    iget-object v5, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mOutBoxDualSimFlags:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    .line 219
    :cond_3
    return-object v4

    .line 204
    :cond_4
    iget-object v5, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mOutBoxDualSimFlags:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 206
    const-string/jumbo v6, "sim_imsi"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 207
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->first:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 208
    .local v3, "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    move/from16 v0, p8

    if-ne v0, v8, :cond_6

    .line 209
    sget-object v3, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    .line 211
    :cond_6
    const-string/jumbo v6, "sim_imsi"

    iget-object v7, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    invoke-virtual {v7, v3}, Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;->getSubscriberId(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    .end local v3    # "simCard":Lcom/iflytek/common/adaptation/entity/SimCard;
    :cond_7
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 214
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method public detect()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->detectSimInfoAdapter()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    .line 59
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->isDoubleCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    invoke-virtual {v0, v1}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->detecteCallAdapter(Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;)Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mCallAdapter:Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    .line 61
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    .line 62
    invoke-virtual {v0, v1}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->detectTextMmsAdaptor(Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;)Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    .line 63
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->getDetectType()Lcom/iflytek/common/adaptation/detect/DetectType;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/adaptation/detect/DetectType;->TYPE_AUTO:Lcom/iflytek/common/adaptation/detect/DetectType;

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    .line 65
    invoke-virtual {v0, v1}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->detectDataMmsAdaptor(Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;)Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDataMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    .line 66
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->detectCursorModeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mCursorModeColumnName:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->detectOutBoxDualFlags()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mOutBoxDualSimFlags:Ljava/util/ArrayList;

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->saveCacheAdapter()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectFlag:Z

    .line 83
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    iput-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDataMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    .line 70
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    .line 71
    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mCursorModeColumnName:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;

    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/adaptation/call/DefaultCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    iput-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mCallAdapter:Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    .line 75
    new-instance v0, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;

    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    iput-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    .line 76
    new-instance v0, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;

    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/common/adaptation/mms/DefaultMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    iput-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDataMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    .line 77
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mCursorModeColumnName:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "DetectHelper"

    const-string/jumbo v1, "CallAdapter, TextMsgAdapter, DataMsgAdapter use default"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final getCallAdapter()Lcom/iflytek/common/adaptation/call/AbsCallAdapter;
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectFlag:Z

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->detect()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mCallAdapter:Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    return-object v0
.end method

.method public final getDataMsgAdapter()Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectFlag:Z

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->detect()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDataMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    return-object v0
.end method

.method public final getDetectType()Lcom/iflytek/common/adaptation/detect/DetectType;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    invoke-virtual {v0}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->getDetectType()Lcom/iflytek/common/adaptation/detect/DetectType;

    move-result-object v0

    return-object v0
.end method

.method public final getModeColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectFlag:Z

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->detect()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mCursorModeColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSimInfoAdapter()Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectFlag:Z

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->detect()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    return-object v0
.end method

.method public final getTextMsgAdapter()Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectFlag:Z

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->detect()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    return-object v0
.end method

.method public onChange(Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;Lcom/iflytek/common/adaptation/call/AbsCallAdapter;Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;)V
    .locals 2
    .param p1, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;
    .param p2, "callAdapter"    # Lcom/iflytek/common/adaptation/call/AbsCallAdapter;
    .param p3, "mmsAdapter"    # Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mSimInfoAdapter:Lcom/iflytek/common/adaptation/siminfo/AbsSimInfoAdapter;

    .line 107
    iput-object p2, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mCallAdapter:Lcom/iflytek/common/adaptation/call/AbsCallAdapter;

    .line 108
    iput-object p3, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    .line 109
    iput-object p3, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDataMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    .line 110
    invoke-virtual {p3}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->getCursorModeColumnName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mCursorModeColumnName:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    sget-object v1, Lcom/iflytek/common/adaptation/detect/DetectType;->TYPE_LOCAL:Lcom/iflytek/common/adaptation/detect/DetectType;

    invoke-virtual {v0, v1}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->setDetectType(Lcom/iflytek/common/adaptation/detect/DetectType;)V

    .line 112
    iget-object v0, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->setDoubleCard(Z)V

    .line 113
    return-void
.end method

.method protected abstract onInitAdapters(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
.end method

.method protected abstract onInitInBoxFlags(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
.end method

.method protected abstract onInitOutBoxFlags(Lcom/iflytek/common/adaptation/entity/DetectorInfoContainer;)V
.end method

.method public setOutBoxValue(Lcom/iflytek/common/adaptation/entity/SimCard;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "threadId"    # J

    .prologue
    .line 163
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectFlag:Z

    if-nez v4, :cond_0

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->detect()V

    .line 167
    :cond_0
    if-nez p1, :cond_1

    const/4 v12, 0x0

    .line 168
    .local v12, "simId":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    move-wide/from16 v0, p4

    move-object/from16 v2, p2

    invoke-virtual {v4, v0, v1, v2}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->getOrCreateThreadId(JLjava/lang/String;)J

    move-result-wide p4

    .line 171
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mDetectHelper:Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;

    invoke-virtual {v4}, Lcom/iflytek/common/adaptation/detect/detector/DetectHelper;->getDetectType()Lcom/iflytek/common/adaptation/detect/DetectType;

    move-result-object v4

    sget-object v5, Lcom/iflytek/common/adaptation/detect/DetectType;->TYPE_AUTO:Lcom/iflytek/common/adaptation/detect/DetectType;

    if-ne v4, v5, :cond_2

    .line 172
    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v10, p4

    invoke-direct/range {v4 .. v12}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->makeOutboxValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJI)Landroid/content/ContentValues;

    move-result-object v13

    .line 178
    .local v13, "contentValues":Landroid/content/ContentValues;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    invoke-virtual {v4, v13}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->setOutBoxValues(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v13    # "contentValues":Landroid/content/ContentValues;
    :goto_2
    return-void

    .line 167
    .end local v12    # "simId":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/iflytek/common/adaptation/entity/SimCard;->ordinal()I

    move-result v12

    goto :goto_0

    .line 175
    .restart local v12    # "simId":I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v10, p4

    invoke-virtual/range {v4 .. v12}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->makeOutboxValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJI)Landroid/content/ContentValues;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    .restart local v13    # "contentValues":Landroid/content/ContentValues;
    goto :goto_1

    .line 179
    .end local v13    # "contentValues":Landroid/content/ContentValues;
    :catch_0
    move-exception v14

    .line 180
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "AbsAdapterDetector"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v14}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public setOutBoxValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJI)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "deliveryReport"    # Z
    .param p6, "threadId"    # J
    .param p8, "simId"    # I

    .prologue
    .line 225
    invoke-direct/range {p0 .. p8}, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->makeOutboxValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJI)Landroid/content/ContentValues;

    move-result-object v0

    .line 227
    .local v0, "contentValues":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/iflytek/common/adaptation/detect/detector/AbsAdapterDetector;->mTextMsgAdapter:Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;

    invoke-virtual {v1, v0}, Lcom/iflytek/common/adaptation/mms/AbsMmsAdapter;->setOutBoxValues(Landroid/content/ContentValues;)V

    .line 228
    return-void
.end method
