.class Laqp$1;
.super Ljava/lang/Object;
.source "NewsDetailBizHelper.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqp;-><init>(Landroid/content/Context;Lwd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqp;


# direct methods
.method constructor <init>(Laqp;)V
    .locals 0
    .param p1, "this$0"    # Laqp;

    .prologue
    .line 36
    iput-object p1, p0, Laqp$1;->a:Laqp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 39
    iget-object v3, p0, Laqp$1;->a:Laqp;

    invoke-static {v3}, Laqp;->a(Laqp;)Lwd;

    move-result-object v3

    if-nez v3, :cond_0

    .line 59
    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :goto_0
    return-void

    .line 42
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 44
    :try_start_0
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "xmlResult":Ljava/lang/String;
    const/4 v1, 0x0

    .line 46
    .local v1, "newsBizResult":Laqo;
    iget-object v3, p0, Laqp$1;->a:Laqp;

    invoke-static {v3}, Laqp;->b(Laqp;)Laqn;

    move-result-object v3

    invoke-virtual {v3, v2}, Laqn;->a(Ljava/lang/String;)Laqo;

    move-result-object v1

    .line 47
    invoke-virtual {v1, v2}, Laqo;->setXmlResult(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, p3, p4}, Laqo;->setRequestId(J)V

    .line 49
    invoke-virtual {v1, p5}, Laqo;->setRequestType(I)V

    .line 50
    iget-object v3, p0, Laqp$1;->a:Laqp;

    invoke-static {v3}, Laqp;->a(Laqp;)Lwd;

    move-result-object v3

    invoke-interface {v3, v1}, Lwd;->a(Lwa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v1    # "newsBizResult":Laqo;
    .end local v2    # "xmlResult":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "NewsDetailBusinessRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onError(), type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", errorCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v3, p0, Laqp$1;->a:Laqp;

    invoke-static {v3}, Laqp;->a(Laqp;)Lwd;

    move-result-object v3

    invoke-interface {v3, p5, p3, p4, p1}, Lwd;->a(IJI)V

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_1
    const-string/jumbo v3, "NewsDetailBusinessRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onError(), type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", errorCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v3, p0, Laqp$1;->a:Laqp;

    invoke-static {v3}, Laqp;->a(Laqp;)Lwd;

    move-result-object v3

    invoke-interface {v3, p5, p3, p4, p1}, Lwd;->a(IJI)V

    goto/16 :goto_0
.end method
