.class Lavp$1;
.super Ljava/lang/Object;
.source "AlarmNewsRequester.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavp;-><init>(Landroid/content/Context;Lwd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwd;

.field final synthetic b:Lavp;


# direct methods
.method constructor <init>(Lavp;Lwd;)V
    .locals 0
    .param p1, "this$0"    # Lavp;

    .prologue
    .line 34
    iput-object p1, p0, Lavp$1;->b:Lavp;

    iput-object p2, p0, Lavp$1;->a:Lwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 37
    iget-object v1, p0, Lavp$1;->a:Lwd;

    if-nez v1, :cond_0

    .line 48
    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :goto_0
    return-void

    .line 40
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    move-object v1, p2

    .line 41
    check-cast v1, Lwa;

    invoke-virtual {v1}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "jsonResult":Ljava/lang/String;
    iget-object v1, p0, Lavp$1;->a:Lwd;

    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-interface {v1, p2}, Lwd;->a(Lwa;)V

    .line 43
    const-string/jumbo v1, "AlarmNewsRequester"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResult(),requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    .end local v0    # "jsonResult":Ljava/lang/String;
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_1
    iget-object v1, p0, Lavp$1;->a:Lwd;

    invoke-interface {v1, p5, p3, p4, p1}, Lwd;->a(IJI)V

    .line 46
    const-string/jumbo v1, "AlarmNewsRequester"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResult(), type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
