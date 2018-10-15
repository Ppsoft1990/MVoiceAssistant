.class Lcom/iflytek/framework/business/components/DownloadComponents$1;
.super Ljava/lang/Object;
.source "DownloadComponents.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/business/components/DownloadComponents;->handleDownload(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/DownloadComponents;

.field final synthetic val$params:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/DownloadComponents;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/DownloadComponents;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/iflytek/framework/business/components/DownloadComponents$1;->this$0:Lcom/iflytek/framework/business/components/DownloadComponents;

    iput-object p2, p0, Lcom/iflytek/framework/business/components/DownloadComponents$1;->val$params:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lcom/iflytek/framework/business/components/DownloadComponents$1;->this$0:Lcom/iflytek/framework/business/components/DownloadComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/DownloadComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 90
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lcom/iflytek/framework/business/components/DownloadComponents$1;->this$0:Lcom/iflytek/framework/business/components/DownloadComponents;

    iget-object v1, p0, Lcom/iflytek/framework/business/components/DownloadComponents$1;->val$params:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/iflytek/framework/business/components/DownloadComponents;->access$000(Lcom/iflytek/framework/business/components/DownloadComponents;Lorg/json/JSONArray;)V

    .line 85
    return-void
.end method
