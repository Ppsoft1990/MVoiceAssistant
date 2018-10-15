.class public Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
.super Lcom/iflytek/yd/business/BasicInfo;
.source "NetPluginInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3e03f24d9be99eb5L


# instance fields
.field private mCount:I

.field private mDownloadTime:Ljava/lang/String;

.field private mNetPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "downloadTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "netPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    invoke-direct {p0}, Lcom/iflytek/yd/business/BasicInfo;-><init>()V

    .line 31
    iput p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->mCount:I

    .line 32
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->setDownloadTime(Ljava/lang/String;)V

    .line 33
    iput-object p3, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->mNetPlugins:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->mCount:I

    return v0
.end method

.method public getDownloadTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->mDownloadTime:Ljava/lang/String;

    return-object v0
.end method

.method public getNetPlugins()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->mNetPlugins:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->mCount:I

    .line 46
    return-void
.end method

.method public setDownloadTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadTime"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->mDownloadTime:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setNetPlugins(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "netPlugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->mNetPlugins:Ljava/util/ArrayList;

    .line 50
    return-void
.end method
