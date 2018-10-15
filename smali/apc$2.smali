.class Lapc$2;
.super Ljava/lang/Object;
.source "RequestMonitorHelper.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapc;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapc;


# direct methods
.method constructor <init>(Lapc;)V
    .locals 0
    .param p1, "this$0"    # Lapc;

    .prologue
    .line 99
    iput-object p1, p0, Lapc$2;->a:Lapc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 103
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 104
    instance-of v1, p2, Lyl;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 105
    check-cast v0, Lyl;

    .line 106
    .local v0, "info":Lyl;
    invoke-virtual {v0}, Lyl;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lapc$2;->a:Lapc;

    invoke-static {v1}, Lapc;->b(Lapc;)Lapc$a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lapc$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 116
    .end local v0    # "info":Lyl;
    :goto_0
    return-void

    .line 109
    .restart local v0    # "info":Lyl;
    :cond_0
    invoke-virtual {v0}, Lyl;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lapc$2;->a:Lapc;

    invoke-static {v1}, Lapc;->b(Lapc;)Lapc$a;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lapc$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 115
    .end local v0    # "info":Lyl;
    :cond_1
    iget-object v1, p0, Lapc$2;->a:Lapc;

    invoke-static {v1}, Lapc;->b(Lapc;)Lapc$a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lapc$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
