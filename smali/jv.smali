.class public Ljv;
.super Ljava/lang/Object;
.source "AisoundProxy.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public init(Landroid/content/Context;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 34
    const v0, 0xc3529

    return v0
.end method

.method public isJniLoaded()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public setResource(Landroid/util/SparseArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "resourceArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public speak(Ljava/lang/String;Landroid/os/Bundle;Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundListener;)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "listener"    # Lcom/iflytek/framework/plugin/interfaces/speech/IAisoundListener;

    .prologue
    .line 44
    const-string/jumbo v0, "SPEECH+AisoundProxy"

    const-string/jumbo v1, "speak error ERROR_AISOUND_NO_RES"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const v0, 0xc3529

    return v0
.end method

.method public stop()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method
