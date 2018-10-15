.class Lagh$1;
.super Ljava/lang/Object;
.source "WebPageDownloadManager.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagh;->h(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

.field final synthetic b:Lagh;


# direct methods
.method constructor <init>(Lagh;Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 0
    .param p1, "this$0"    # Lagh;

    .prologue
    .line 183
    iput-object p1, p0, Lagh$1;->b:Lagh;

    iput-object p2, p0, Lagh$1;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

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
    .line 191
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lagh$1;->b:Lagh;

    invoke-static {v0}, Lagh;->a(Lagh;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 192
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
    .line 186
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v0, p0, Lagh$1;->b:Lagh;

    iget-object v1, p0, Lagh$1;->a:Lcom/iflytek/viafly/app/install/AppInstallInfo;

    invoke-virtual {v0, v1}, Lagh;->f(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    .line 187
    return-void
.end method
