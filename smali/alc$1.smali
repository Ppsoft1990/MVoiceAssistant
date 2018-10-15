.class Lalc$1;
.super Ljava/lang/Object;
.source "ListenWellCardPresenter.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lalc;


# direct methods
.method constructor <init>(Lalc;)V
    .locals 0
    .param p1, "this$0"    # Lalc;

    .prologue
    .line 78
    iput-object p1, p0, Lalc$1;->a:Lalc;

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
    .line 82
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 83
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual {p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "response":Ljava/lang/String;
    const-string/jumbo v2, "ListenWellCardPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mResultListener: response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    iget-object v2, p0, Lalc$1;->a:Lalc;

    invoke-virtual {v2, v0}, Lalc;->a(Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, "success":I
    if-nez v1, :cond_1

    .line 89
    iget-object v2, p0, Lalc$1;->a:Lalc;

    invoke-static {v0}, Lald;->a(Ljava/lang/String;)Lale;

    move-result-object v3

    invoke-static {v2, v3}, Lalc;->a(Lalc;Lale;)Lale;

    .line 90
    const-string/jumbo v2, "ListenWellCardPresenter"

    const-string/jumbo v3, "\u60a6\u542c\u5496\u5361\u7247\u8bf7\u6c42\u6210\u529f\uff0c\u901a\u77e5\u754c\u9762\u5237\u65b0"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v2, p0, Lalc$1;->a:Lalc;

    invoke-static {v2}, Lalc;->a(Lalc;)Lajk;

    move-result-object v2

    invoke-interface {v2, v0}, Lajk;->a(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lalc$1;->a:Lalc;

    const/16 v3, 0x3e9

    iget-object v4, p0, Lalc$1;->a:Lalc;

    invoke-virtual {v4}, Lalc;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lalc;->a(Lalc;ILjava/lang/String;)V

    .line 103
    .end local v0    # "response":Ljava/lang/String;
    .end local v1    # "success":I
    :goto_0
    return-void

    .line 96
    .restart local v0    # "response":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "ListenWellCardPresenter"

    const-string/jumbo v3, "\u60a6\u542c\u5496\u5185\u5bb9 \u63a5\u53e3\u8bf7\u6c42\u5931\u8d25,\u542c\u4e66\u5185\u5bb9:getXmlResult \u4e3anull"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v0    # "response":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lalc$1;->a:Lalc;

    invoke-static {v2}, Lalc;->a(Lalc;)Lajk;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-interface {v2, v3}, Lajk;->a(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lalc$1;->a:Lalc;

    const/16 v3, 0x3ea

    iget-object v4, p0, Lalc$1;->a:Lalc;

    invoke-virtual {v4}, Lalc;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lalc;->b(Lalc;ILjava/lang/String;)V

    goto :goto_0
.end method
