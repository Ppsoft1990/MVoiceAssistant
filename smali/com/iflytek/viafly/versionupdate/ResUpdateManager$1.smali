.class Lcom/iflytek/viafly/versionupdate/ResUpdateManager$1;
.super Ljava/lang/Object;
.source "ResUpdateManager.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

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
    .line 93
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->b(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 94
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 1
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
    .line 88
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateManager$1;->a:Lcom/iflytek/viafly/versionupdate/ResUpdateManager;

    invoke-static {v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateManager;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateManager;)V

    .line 89
    return-void
.end method
