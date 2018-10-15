.class public Lcom/iflytek/common/adaptation/siminfo/DualSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;
.source "DualSimInfo.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/DefaultSimInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method public isDoubleCard()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method
