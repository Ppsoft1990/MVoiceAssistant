.class public Lpf;
.super Ljava/lang/Object;
.source "RecordPermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpf$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lpf$a;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lpf$a;

    .prologue
    .line 29
    const-string/jumbo v1, "StoragePermissionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDownload | threadId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lpf$1;

    invoke-direct {v1, p1}, Lpf$1;-><init>(Lpf$a;)V

    invoke-static {p0, v0, v1}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V

    .line 69
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-string/jumbo v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Lpd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
