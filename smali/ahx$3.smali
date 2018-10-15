.class Lahx$3;
.super Ljava/lang/Object;
.source "MicGuidelHandler.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahx;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahx;


# direct methods
.method constructor <init>(Lahx;)V
    .locals 0
    .param p1, "this$0"    # Lahx;

    .prologue
    .line 172
    iput-object p1, p0, Lahx$3;->a:Lahx;

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
    .line 182
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const-string/jumbo v0, "MicPluginInstallHandler"

    const-string/jumbo v1, "\u7528\u6237\u62d2\u7edd\u5b58\u50a8\u5361\u6743\u9650"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lahx$3;->a:Lahx;

    invoke-static {v0}, Lahx;->b(Lahx;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 184
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

    .line 175
    const-string/jumbo v0, "MicPluginInstallHandler"

    const-string/jumbo v2, "\u7528\u6237\u6388\u4e88\u5b58\u50a8\u5361\u6743\u9650-->\u5b89\u88c5\u79bb\u7ebf\u5f15\u64ce"

    invoke-static {v0, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string/jumbo v0, "MicPluginInstallHandler"

    const-string/jumbo v2, "\u5f00\u59cb\u5b89\u88c5\u63d2\u4ef6!"

    invoke-static {v0, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    iget-object v2, p0, Lahx$3;->a:Lahx;

    invoke-static {v2}, Lahx;->b(Lahx;)Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->mic:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    sget-object v5, Lasc;->a:Lasc;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lari;->a(ILandroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V

    .line 178
    return-void
.end method
