.class Lahk$2;
.super Ljava/lang/Object;
.source "HomePluginInstallHelper.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahk;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahk;


# direct methods
.method constructor <init>(Lahk;)V
    .locals 0
    .param p1, "this$0"    # Lahk;

    .prologue
    .line 222
    iput-object p1, p0, Lahk$2;->a:Lahk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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
    .line 231
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const-string/jumbo v0, "HomePluginInstallHelper"

    const-string/jumbo v1, "\u7528\u6237\u62d2\u7edd\u5b58\u50a8\u5361\u6743\u9650"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lahk$2;->a:Lahk;

    invoke-virtual {v0}, Lahk;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 233
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 6
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
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const/4 v1, 0x1

    .line 225
    const-string/jumbo v0, "HomePluginInstallHelper"

    const-string/jumbo v2, "\u7528\u6237\u6388\u4e88\u5b58\u50a8\u5361\u6743\u9650-->\u5b89\u88c5\u79bb\u7ebf\u5f15\u64ce"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lahk$2;->a:Lahk;

    invoke-static {v0}, Lahk;->b(Lahk;)Lari;

    move-result-object v0

    iget-object v2, p0, Lahk$2;->a:Lahk;

    invoke-virtual {v2}, Lahk;->p()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->main:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    sget-object v5, Lasc;->a:Lasc;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lari;->a(ILandroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V

    .line 227
    return-void
.end method
