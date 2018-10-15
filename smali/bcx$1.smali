.class Lbcx$1;
.super Ljava/lang/Object;
.source "ImageLoaderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcx;->a(Lbcz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbcz;

.field final synthetic b:Lbcx;


# direct methods
.method constructor <init>(Lbcx;Lbcz;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lbcx$1;->b:Lbcx;

    iput-object p2, p0, Lbcx$1;->a:Lbcz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lbcx$1;->b:Lbcx;

    iget-object v1, v1, Lbcx;->a:Lbcw;

    iget-object v1, v1, Lbcw;->p:Lbce;

    iget-object v2, p0, Lbcx$1;->a:Lbcz;

    invoke-virtual {v2}, Lbcz;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lbce;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 71
    .local v0, "isImageCachedOnDisc":Z
    iget-object v1, p0, Lbcx$1;->b:Lbcx;

    invoke-static {v1}, Lbcx;->a(Lbcx;)V

    .line 72
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lbcx$1;->b:Lbcx;

    invoke-static {v1}, Lbcx;->b(Lbcx;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lbcx$1;->a:Lbcz;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lbcx$1;->b:Lbcx;

    invoke-static {v1}, Lbcx;->c(Lbcx;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lbcx$1;->a:Lbcz;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
