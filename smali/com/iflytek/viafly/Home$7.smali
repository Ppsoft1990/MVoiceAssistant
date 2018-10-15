.class Lcom/iflytek/viafly/Home$7;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Lpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/Home;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/Home;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/Home;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/Home;

    .prologue
    .line 1879
    iput-object p1, p0, Lcom/iflytek/viafly/Home$7;->a:Lcom/iflytek/viafly/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(Ljava/util/List;)V
    .locals 4
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
    .line 1882
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v1, p0, Lcom/iflytek/viafly/Home$7;->a:Lcom/iflytek/viafly/Home;

    invoke-virtual {v1}, Lcom/iflytek/viafly/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lig;->a(Landroid/content/Context;)Lig;

    move-result-object v1

    .line 1883
    invoke-virtual {v1}, Lig;->a()Z

    move-result v0

    .line 1884
    .local v0, "isIgnoring":Z
    const-string/jumbo v1, "Home"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRequestPermissionsResult isPowerOptimization Ignoring = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    if-eqz v0, :cond_1

    .line 1887
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/Home$7$1;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/Home$7$1;-><init>(Lcom/iflytek/viafly/Home$7;)V

    invoke-virtual {v1, v2}, Lpb;->a(Lpb$a;)V

    .line 1907
    :cond_0
    :goto_0
    return-void

    .line 1895
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/Home$7;->a:Lcom/iflytek/viafly/Home;

    invoke-virtual {v1}, Lcom/iflytek/viafly/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lig;->a(Landroid/content/Context;)Lig;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/Home$7;->a:Lcom/iflytek/viafly/Home;

    const/16 v3, 0x1f41

    invoke-virtual {v1, v2, v3}, Lig;->a(Landroid/app/Activity;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1898
    invoke-static {}, Lpb;->a()Lpb;

    move-result-object v1

    new-instance v2, Lcom/iflytek/viafly/Home$7$2;

    invoke-direct {v2, p0}, Lcom/iflytek/viafly/Home$7$2;-><init>(Lcom/iflytek/viafly/Home$7;)V

    invoke-virtual {v1, v2}, Lpb;->a(Lpb$a;)V

    goto :goto_0
.end method
