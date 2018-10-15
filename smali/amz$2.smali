.class Lamz$2;
.super Ljava/lang/Object;
.source "BookNotificationManager.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamz;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lamz;


# direct methods
.method constructor <init>(Lamz;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lamz;

    .prologue
    .line 296
    iput-object p1, p0, Lamz$2;->b:Lamz;

    iput-object p2, p0, Lamz$2;->a:Ljava/lang/String;

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
    .line 310
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const-string/jumbo v0, "BookNotificationManager"

    const-string/jumbo v1, "no permission error"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lamz$2;->b:Lamz;

    invoke-static {v0}, Lamz;->a(Lamz;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 313
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 3
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
    .line 300
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lamz$2;->b:Lamz;

    iget-object v2, p0, Lamz$2;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lamz;->a(Lamz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    iget-object v1, p0, Lamz$2;->b:Lamz;

    iget-object v2, p0, Lamz$2;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lamz;->b(Lamz;Ljava/lang/String;)V

    .line 304
    :cond_0
    const-string/jumbo v1, "BookNotificationManager"

    const-string/jumbo v2, "updateNotificationImg onGranted , update"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lamz$2;->b:Lamz;

    invoke-static {v1}, Lamz;->a(Lamz;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 306
    return-void
.end method
