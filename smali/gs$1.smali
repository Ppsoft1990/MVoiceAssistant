.class Lgs$1;
.super Ljava/util/TimerTask;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgs;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgs;


# direct methods
.method constructor <init>(Lgs;)V
    .locals 0
    .param p1, "this$0"    # Lgs;

    .prologue
    .line 156
    iput-object p1, p0, Lgs$1;->a:Lgs;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 160
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "RecoTimer() | timer run end"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lgs$1;->a:Lgs;

    invoke-static {v2}, Lgs;->a(Lgs;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4b0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 162
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "RecoTimer() | has new task -> cancel stop recognition"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lgs$1;->a:Lgs;

    invoke-virtual {v0}, Lgs;->i()V

    goto :goto_0
.end method
