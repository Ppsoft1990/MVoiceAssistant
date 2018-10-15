.class public Lcom/iflytek/common/adaptation/mms/LenovoS868tMmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;
.source "LenovoS868tMmsAdapter.java"


# instance fields
.field private final SIM_ID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/LeadcoreMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 16
    const-string/jumbo v0, "sim_id"

    iput-object v0, p0, Lcom/iflytek/common/adaptation/mms/LenovoS868tMmsAdapter;->SIM_ID:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getCursorModeColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "sim_id"

    return-object v0
.end method
