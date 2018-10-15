.class Lbaz$1;
.super Ljava/lang/Object;
.source "VoiceNoteTtsDialog.java"

# interfaces
.implements Lbar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbaz;


# direct methods
.method constructor <init>(Lbaz;)V
    .locals 0
    .param p1, "this$0"    # Lbaz;

    .prologue
    .line 48
    iput-object p1, p0, Lbaz$1;->a:Lbaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 65
    iget-object v1, p0, Lbaz$1;->a:Lbaz;

    invoke-static {v1}, Lbaz;->a(Lbaz;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mSpeakeCallback|onInterrupted"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    iget-object v1, p0, Lbaz$1;->a:Lbaz;

    const-string/jumbo v2, "\u7f51\u7edc\u5f02\u5e38\u65ad\u5f00\uff0c\u8bf7\u68c0\u67e5\u5e76\u91cd\u8bd5"

    invoke-static {v1, v2}, Lbaz;->a(Lbaz;Ljava/lang/String;)V

    .line 73
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v1, p0, Lbaz$1;->a:Lbaz;

    invoke-static {v1}, Lbaz;->a(Lbaz;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mSpeakeCallback|onStop"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_0
    const-string/jumbo v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    iget-object v1, p0, Lbaz$1;->a:Lbaz;

    invoke-static {v1, p1}, Lbaz;->a(Lbaz;Ljava/lang/String;)V

    .line 61
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lbaz$1;->a:Lbaz;

    invoke-static {v0}, Lbaz;->a(Lbaz;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mSpeakeCallback|onNoNetwork"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lbaz$1;->a:Lbaz;

    const-string/jumbo v1, "\u7f51\u7edc\u672a\u6253\u5f00\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v0, v1}, Lbaz;->a(Lbaz;Ljava/lang/String;)V

    .line 78
    return-void
.end method
