.class Labl$1;
.super Ljava/lang/Object;
.source "BlessContentChangeHelper.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labl;-><init>(Landroid/content/Context;Lwd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Labl;


# direct methods
.method constructor <init>(Labl;)V
    .locals 0
    .param p1, "this$0"    # Labl;

    .prologue
    .line 30
    iput-object p1, p0, Labl$1;->a:Labl;

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
    .line 34
    iget-object v2, p0, Labl$1;->a:Labl;

    invoke-static {v2}, Labl;->a(Labl;)Lwd;

    move-result-object v2

    if-nez v2, :cond_0

    .line 51
    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :goto_0
    return-void

    .line 38
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 39
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "xmlResult":Ljava/lang/String;
    iget-object v2, p0, Labl$1;->a:Labl;

    invoke-static {v2}, Labl;->b(Labl;)Labm;

    move-result-object v2

    invoke-virtual {v2, v1}, Labm;->a(Ljava/lang/String;)Labn;

    move-result-object v0

    .line 41
    .local v0, "blessContentChangefig":Labn;
    invoke-virtual {v0, v1}, Labn;->setXmlResult(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p3, p4}, Labn;->setRequestId(J)V

    .line 43
    invoke-virtual {v0, p5}, Labn;->setRequestType(I)V

    .line 44
    invoke-static {}, Labl;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResult(), result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v2, p0, Labl$1;->a:Labl;

    invoke-static {v2}, Labl;->a(Labl;)Lwd;

    move-result-object v2

    invoke-interface {v2, v0}, Lwd;->a(Lwa;)V

    goto :goto_0

    .line 47
    .end local v0    # "blessContentChangefig":Labn;
    .end local v1    # "xmlResult":Ljava/lang/String;
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_1
    invoke-static {}, Labl;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onError(), type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", errorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v2, p0, Labl$1;->a:Labl;

    invoke-static {v2}, Labl;->a(Labl;)Lwd;

    move-result-object v2

    invoke-interface {v2, p5, p3, p4, p1}, Lwd;->a(IJI)V

    goto :goto_0
.end method
