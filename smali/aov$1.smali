.class final Laov$1;
.super Ljava/lang/Object;
.source "BaseMmsContentSpeechDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laov;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 96
    :try_start_0
    invoke-static {}, Laov;->f()V

    .line 97
    invoke-static {}, Laov;->d()V

    .line 98
    invoke-static {}, Laov;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Laov;->a(Z)Z

    .line 103
    const/4 v1, 0x1

    invoke-static {v1}, Laov;->b(Z)Z

    .line 104
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TAG"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
