.class Lzv$2$1;
.super Ljava/lang/Object;
.source "CallWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzv$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzv$2;


# direct methods
.method constructor <init>(Lzv$2;)V
    .locals 0
    .param p1, "this$0"    # Lzv$2;

    .prologue
    .line 72
    iput-object p1, p0, Lzv$2$1;->a:Lzv$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lzv;->b()Lcom/iflytek/viafly/call/CallBroadcastView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lzv;->b()Lcom/iflytek/viafly/call/CallBroadcastView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/call/CallBroadcastView;->b()V

    .line 78
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/call/CallBroadcastView;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lzv$2$1;->a:Lzv$2;

    iget-object v0, v0, Lzv$2;->a:Lzs;

    const v1, 0x7f02000e

    const v2, 0x7f02000b

    invoke-virtual {v0, v1, v2}, Lzs;->a(II)Lzs;

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lzv$2$1;->a:Lzv$2;

    iget-object v0, v0, Lzv$2;->a:Lzs;

    const v1, 0x7f020009

    const v2, 0x7f02000a

    invoke-virtual {v0, v1, v2}, Lzs;->a(II)Lzs;

    goto :goto_0
.end method
