.class Lth$1;
.super Ljava/lang/Object;
.source "UserInfoManager.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lth;


# direct methods
.method constructor <init>(Lth;)V
    .locals 0
    .param p1, "this$0"    # Lth;

    .prologue
    .line 381
    iput-object p1, p0, Lth$1;->a:Lth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 384
    const-string/jumbo v0, "UserInfoManager"

    const-string/jumbo v1, "onResult result "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/16 v0, 0x5b

    if-ne p5, v0, :cond_1

    .line 387
    iget-object v0, p0, Lth$1;->a:Lth;

    invoke-static {v0, p1, p2}, Lth;->a(Lth;ILcom/iflytek/yd/business/OperationInfo;)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    const/16 v0, 0x5c

    if-ne p5, v0, :cond_0

    .line 389
    iget-object v0, p0, Lth$1;->a:Lth;

    invoke-static {v0, p1, p2}, Lth;->b(Lth;ILcom/iflytek/yd/business/OperationInfo;)V

    goto :goto_0
.end method
