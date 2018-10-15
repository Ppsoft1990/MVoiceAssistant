.class Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$4;
.super Ljava/lang/Object;
.source "DialBusinesshandlerImpl.java"

# interfaces
.implements Lacs;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->showNoResult()V
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
    .line 1012
    iput-object p1, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$4;->a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl$4;->a:Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;

    const-string/jumbo v1, "all"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/dial/business30/LXFramworkHandler/DialBusinesshandlerImpl;->reStartReco(Ljava/lang/String;)V

    .line 1017
    return-void
.end method
