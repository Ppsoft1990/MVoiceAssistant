.class Lzs$1;
.super Ljava/lang/Object;
.source "BroadcastFloatWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzs;->a(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lzs;


# direct methods
.method constructor <init>(Lzs;J)V
    .locals 0
    .param p1, "this$0"    # Lzs;

    .prologue
    .line 120
    iput-object p1, p0, Lzs$1;->b:Lzs;

    iput-wide p2, p0, Lzs$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 123
    invoke-static {}, Lcom/iflytek/viafly/call/CallBusinessManager;->a()Lcom/iflytek/viafly/call/CallBusinessManager;

    move-result-object v0

    iget-wide v2, p0, Lzs$1;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/viafly/call/CallBusinessManager;->a(J)V

    .line 124
    return-void
.end method
