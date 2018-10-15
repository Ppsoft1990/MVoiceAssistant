.class Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$2;
.super Ljava/lang/Object;
.source "DialBusinesshandlerImpl.java"

# interfaces
.implements Lvt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->getRecommendedDownloadUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$2;->a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlcError(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 736
    const-string/jumbo v0, "DialBusinesshandlerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBlcError | type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void
.end method

.method public onBlcResult(ILcom/iflytek/yd/business/OperationInfo;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "info"    # Lcom/iflytek/yd/business/OperationInfo;

    .prologue
    .line 716
    const-string/jumbo v3, "DialBusinesshandlerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBlcResult | type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    if-nez p2, :cond_1

    .line 718
    const-string/jumbo v3, "DialBusinesshandlerImpl"

    const-string/jumbo v4, "onBlcResult info is null"

    invoke-static {v3, v4}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    instance-of v3, p2, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 723
    check-cast v1, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;

    .line 724
    .local v1, "netPluginInfo":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;
    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo;->getNetPlugins()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    .line 726
    .local v0, "netPlugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getLinkUrl()Ljava/lang/String;

    move-result-object v2

    .line 727
    .local v2, "url":Ljava/lang/String;
    sput-object v2, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->mRecommendUrl:Ljava/lang/String;

    .line 728
    iget-object v3, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$2;->a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    invoke-static {v3}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->access$300(Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;)V

    goto :goto_0
.end method
